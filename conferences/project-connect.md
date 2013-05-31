Sexy name
====

1. Tom introduces NYC open data, the importance of understanding the city, learning to use open data, finding links between data. We were working on AppGen, and we noticed some data quality issues. Standardizing and cleaning data is most of the work for any data analysis, so we thought it was particularly important that people understand how this process works.
2. Ashley talks about best practices.
3. Tom: We've resolved most of these issues in AppGen. For example, this bit of code does this, that bit of code does that. We extended some of the dataset-matching code today for our project.
4. Ashley: This is what we built.
5. Tom: Tool for exploring connections between datasets, identifying datasets that could be cleaned up and made more usuable, and generally helping understand the landscape of open civic data





NYC has made major strides in government transparency by providing a substantial number of public datasets in a machine readable format through the NYC open data portal. This initiative has improved the accessibility and accountability of City government. We think we can make it even better.

The NYC open data portal is a great start at opening public data, but it is hard to explore the connections among datasets. We wanted to make a tool to help explore these connections. In our work on a separate project, [AppGen](http://appgen.me), we uncovered some data quality issues,

.
Assessing the quality of a single dataset is hard enough, and assessing the quality of a thousand datasets is even harder. We have developed a tool that will help people understand

%p Without this feedback, managers and employees of DoITT, keeper of NYC's open data portal, do not have the approrpirate metrics to identify and improve the open data offerings. With this tool, they will be able to quickly learn and apply best practices to all current open datasets.
%p In the process of building our civic technology rapid-prototyping tool, AppGen, we discovered that we were in the unique position required to provide this feedback.  Because AppGen targets the superset of NYC's open datasets, we have both the access and perspective to assess the quality of each dataset as it relates to the superset, an provide a quantified score as well as a visualization that linked back directly to the datasets.
%p To begin this endeavor, we have compiled a set of Dataset Best Practices as well as Critical Questions that creators and maintainers of datasets should be asking themselves when the open up a dataset on the NYC Data Portal form which we can determined the metrics by which we will score the datasets:

  %p At the <a href="http://projectconnect.org" target="_blank" class="highlight">Project: Connect</a> hackathon, we start addressing a few of these issues. We looked for datasets that were similarly formatted and thus easy to combine. (More technically, we looked for datasets with the same schema, which could be unioned.)
  %p There are 1238 datasets in the <a href="https://nycopendata.socrata.com" target="_blank" class="highlight">NYC open data portal</a>. Of these, 749 are already formatted such that could be combined with each other to produce fuller, richer datasets. If we were to combine these 749 datasets, they would produce the 152 datasets that are visualized below.
