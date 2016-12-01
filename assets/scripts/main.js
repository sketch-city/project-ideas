(function(window, Octokat, _){

  'use strict';

  class App {
    constructor () {
      riot.observable(this);
      const octo = new Octokat(GH_API);

      this.api = octo.repos(ORGANIZATION, REPO);
      // window.projectsCache = TAFFY();
    }

    start (){
      this.trigger('start');
    }
  }

  class Projects {
    constructor (response) {
      riot.observable(this);
      this.termFrequency = new TfIdf();

      this.update(response);
    }

    update (response) {
      if(_.isEmpty(response)){
        return;
      }

      // TODO dedupe with existing projects
      this.items = response;
      this.contents = _(response)
        .map(function(project){
          return [project.body, project.title, _.map(project.labels, 'name')]})
        .flattenDeep()
        .join(' ');

      this.termFrequency.addDocument(this.contents);
      this.terms = this.termFrequency.listTerms(this.termFrequency.documents.length - 1);

      this.trigger('update');

      return response;
    }
  }


  const app = new App();
  const projects = new Projects();

  app.api.issues
    .fetch()
    .then(projects.update.bind(projects))

  projects.on('update', function(){
    riot.mount('app', {projects: projects});
  });

  app.start();


})(window, Octokat, _);

