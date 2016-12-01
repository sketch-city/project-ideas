<app>
  <div id='app-search'>
    <div class='container'>
      <header class='row'>
        <div class='col-xs'>
          <h1><span class='brand'>Sketch</span>board</h1>
          <h3>Find <strong>your</strong> Houston civic project.</h3>
        </div>
      </header>
      <div class='row'>
        <div class='col-xs'>
          <search/>
        </div>
      </div>
    </div>
  </div>
  <div class='container' id='app-projects'>
    <div class='row'>
      <div class='col-xs'>
        <project-list projects={opts.projects.items}/>
      </div>
    </div>
    <div class='row'>
      <div class='col-xs'>
        <search-tags tags={opts.projects.terms}/>
      </div>
    </div>
  </div>

  <style>
    app {
      position: relative;
    }
    header h3 {
      font-weight: 400;
    }
    #app-search {
      position: fixed;
      z-index: 2;
      top: 0;
      left: 0;
      padding-bottom: 40px;
      padding-top: 10px;
      background-image: linear-gradient(rgba(255, 255, 255, 1), rgba(255, 255, 255, 0.95) 80%, rgba(255, 255, 255, 0));
      width: 100%;
    }
    #app-projects {
      padding-top: 200px;
    }
  </style>

</app>