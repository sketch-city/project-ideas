<project>
  <a class='list-group-item list-group-item-action' href={opts.data.htmlUrl} target='_blank'>
    <h5 class='list-group-item-heading'>{opts.data.title}</h5>
    <markdown content={opts.data.body}/>
    <project-team if={hasTeam} team={opts.data.assignees}/>
    <project-tags if={hasTags} tags={opts.data.labels}/>
  </a>

  this.hasTeam = opts.data.assignees.length > 0;
  this.hasTags = opts.data.labels.length > 0;
  this.searchTerms = opts.data.title + ' ' + opts.data.body;
</project>