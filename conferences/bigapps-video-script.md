New York's awesome open data efforts have put over 1,200 datasets on the open
data portal. We wanted to see what was possible with all of these datasets,
but we were also lazy, so we decided to build an app that would look at all
of these datasets for us.

We started out by building AppGen, a tool that uses a plethora of data science
techniques to connect datasets from the portal and then construct simple apps
based on the data. For example, this app shows....
AppGen started out as a joke, but it wound up being a powerful
rapid prototyping tool, allowing people to turn datasets into apps with the push
of a button.

By building and using AppGen, we discovered that we were in the unique position
required to provide essential feedback to data portal maintainers.
We had learned a lot about the data portal and ways it could be
improved. We did substantial engineering to enhance the quality of the datasets,
and we began exposing this in what we call the AppGen Audit.

We began by listing some best practices for data presentation. You can read our
best practices by clicking on the audit button. We then decided to visualize one
best practice that we thought was particularly important.

We call this best practice "unionability". We found that many datasets could be
combined with other datasets in order to produce richer, fuller, bigger datasets
that could answer harder questions. Specifically, if two datasets have the same
variables, they can easily be combined into a larger dataset and are thus
"unionable". We downloaded all of the data portal's datasets, identified
unionable datasets, combined them and visualized the connections.
