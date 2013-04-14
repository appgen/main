#!/bin/sh
# Commit all of the repositories
set -e

list_paths() {
  test -f .gitmodules || return 0
  for local_path in $(grep path .gitmodules | cut -d= -f2 | tr -d \ ); do
    test -z "$local_path" && continue
    full_path="$1/$local_path"
    (
      cd "$local_path"
      list_paths "./$local_path"
    )
    echo "$full_path"
  done
}

list_paths .
echo .
