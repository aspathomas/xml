xquery version "1.0";
<books>
{
  for $book in //BOOKS/ITEM
  where xs:integer($book/QUANTITY) > 0
  order by xs:integer($book/QUANTITY)
  return
  <book>
    <p style="color: red">{$book/TITLE}</p>
    <p style="color: green">{$book/QUANTITY}</p>
  </book>
}
</books>