/*What are the titles, author's names, and prices
for pre-owned books that are priced at 
$50.00 or below?  Results should be sorted by price
in descending order, followed by title in
A-Z order.*/

SELECT book.Title, author.firstName, author.lastName, ownersBook.Price
FROM book INNER JOIN bookAuthor
ON book.ISBN = bookAuthor.ISBN

INNER JOIN author
ON bookAuthor.authorID = author.authorID

INNER JOIN ownersBook
ON book.ISBN = ownersBook.ISBN

WHERE ownersBook.price <= '50.00'
ORDER BY ownersBook.price DESC, book.title;