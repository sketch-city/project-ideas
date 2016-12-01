<search-input>
  <form onsubmit={onSearch}>
    <div class='form-group'>
      <input
        ref='input'
        type='text'
        class='form-control form-control-lg'
        id='search'
        aria-describedby='searchHelp'
        placeholder='Enter search'>
      <small id='searchHelp' class='form-text text-muted'>Anything.</small>
    </div>
  </form>

  this.on('mount', function(){
    this.refs.input.focus();
  });

  this.onSearch = function(submitEvent){
    submitEvent.stopPropagation();
    submitEvent.preventDefault();
  }

</search-input>