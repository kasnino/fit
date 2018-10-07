class SearchResultsList extends React.Component {
  render () {
    return (
      <ul class="dropdown-menu" id="autocomplete-items">
      <li><a href="/search?q={{SearchTerm}}"><span class="glyphicon glyphicon-search"></span>Search for! <strong></strong></a></li><SearchPostListItem /><SearchUserListItem /></ul>  
    );
  }
}


