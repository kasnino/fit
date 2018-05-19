class SearchBar extends React.Component {
  render () {
    return (
      <form action="/search" acceptCharset="UTF-8" method="get">
      <input name="utf8" type="hidden" value="√" />
      
      <input class="search_qq" placeholder=" Buscar historias" autoComplte="off" type="search" name="search[q]" id="search_q" />
    <button class="buttone" name="button" type="submit"><span className="glyphicon glyphicon-search"></span></button>
      </form>
    );
  }
}


