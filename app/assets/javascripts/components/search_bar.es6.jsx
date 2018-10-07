class SearchBar extends React.Component {
  render () {
    return (
      <form action="/search" acceptCharset="UTF-8" method="get">
      <input name="utf8" type="hidden" value="√" />
      
      <input class="search_qq" placeholder=" Buscar Relatos" 
      autoComplete="off" type="search" name="search[q]" id="search_q" />
      </form>
    );
  }
}


