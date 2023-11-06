xquery version "1.0";
<invoice>
{
  let $book1 := //BOOKS/ITEM[TITLE = 'Learn Java Now']
  let $book2 := //BOOKS/ITEM[TITLE = 'Design Patterns']
  let $totalPrice := xs:decimal($book1/PRICE) + xs:decimal($book2/PRICE)
  return
  <purchase>
    <book>
      <author>{data($book1/AUTHOR)}</author>
      <title>{data($book1/TITLE)}</title>
      <price>{data($book1/PRICE)}</price>
    </book>
    <book>
      <author>{data($book2/AUTHOR)}</author>
      <title>{data($book2/TITLE)}</title>
      <price>{data($book2/PRICE)}</price>
    </book>
    <totalPrice>{$totalPrice}</totalPrice>
  </purchase>
}
</invoice>