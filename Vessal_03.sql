/*For each book, show the title and the lastname and firstname
for the author(s) of the book. 
The results should be sorted by book title in A-Z order, followed
by author lastname in A-Z order.*/

SELECT book.Title AS title, author.lastName, author.firstName
FROM book join bookAuthor
ON book.ISBN = bookAuthor.ISBN
INNER JOIN author
ON bookAuthor.authorID = author.authorID
ORDER BY book.Title, author.lastName;
