/*Write a SQL statement that will show the title for each book 
and its category description (sports, romance, etc).  Sort the 
results first by category description in descending order,
followed by title in ascending order.*/
SELECT book.title, category.catDescription
FROM book RIGHT JOIN category
ON book.category = category.catID
ORDER BY category.catDescription DESC, book.title;