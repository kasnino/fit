class SearchBar extends React.Component {
  render () {
    return (
      <form action="/search" acceptCharset="UTF-8" method="get">
      <input name="utf8" type="hidden" value="√" />
      <button name="button" type="submit"><span className="glyphicon glyphicon-search"></span></button>
      <input placeholder="Buscar historias" autoComplte="off" type="search" name="search[q]" id="search_q" />
    
      </form>
    );
  }
}


