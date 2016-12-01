<project-list>
  <div class='list-group' id='projects'>
    <project each={opts.projects} data={this}/>
  </div>

  this.on('mount', function(){
    this.setupLinksNew();
    this.setupQuickSearch();
  });

  this.on('updated', function(){
    this.setupLinksNew();
    this.setupQuickSearch();
  });

  this.setupLinksNew = function(){
    _.forEach(this.root.getElementsByTagName('a'), function(link){
      link.target = '_blank';
    });
  }.bind(this);

  this.setupQuickSearch = function(){
    return new Jets({
      searchTag: '#search',
      contentTag: '#projects',
      searchSelector: '*OR'
    });
  }

</project-list>