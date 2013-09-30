/*Write a subquery that will display  the ISBN and title of book
that have a category that starts with the letter S*/

SELECT ISBN, title
FROM book WHERE category IN 
(SELECT catID
FROM category 
WHERE catDescription LIKE "S%");