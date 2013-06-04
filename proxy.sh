#!/bin/sh
set -e

# Only after I wrote this did I realize that there was already a heroku CLI
# for app creation. Oh well; it didn't take long.

# Check dependencies
test -z $HEROKU_API_KEY && echo 'Set $HEROKU_API_KEY' && exit 1
for dependency in xmlstarlet jshon; do
  if ! which "$dependency" > /dev/null; then
    echo && echo "Install $dependency" && exit 1
  fi
done

new_app() {
  tmp=$(mktemp)

  # Global variables
  APPGEN_URL="http://appgen.me/a"
  
  # Choose an app name and seed.
  wget -O "$tmp" "${APPGEN_URL}"
  app_seed=$(sed -n "0,/seed/ s/.*seed=\([0-9-]*\)'.*/\1/p" $tmp)
  app_name=$(grep h1 "$tmp" | xmlstarlet sel -t -v '//h1'| tr -d \  | tr [A-Z] [a-z])
  
  # Make the app
  curl -H "Accept: application/json" \
       -u ":$HEROKU_API_KEY" \
       -d "app[name]=$app_name" \
       -X POST https://api.heroku.com/apps > "$tmp"
  
  # Retry if the name is already taken.
  if cat "$tmp" | grep '"error":"'; then
    new_app
  fi
} 

# Go
new_app

# Push the Ruby proxy to  the app
git_url=$(cat "$tmp" | jshon -e git_url -u)

(
  set -e
  cd heroku-proxy-flask
  sed -i "s/##seed##/$app_seed/" app.py
  git commit . -m set\ seed
  git push "$git_url" master --force
  git reset --hard HEAD^
)

echo The random app is at "http://${app_name}.herokuapp.com",
echo proxying "$APPGEN_URL?seed=$app_seed".
