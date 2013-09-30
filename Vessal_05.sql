/*Show the titles of ALL books and if the book had a reviewer show the name
of the reviewer(s).  
The results should be ordered by book title in ascending order, followed by
reviewer name in ascending order.*/

SELECT book.title, reviewer.Name
FROM book LEFT JOIN bookReview
ON book.ISBN = bookReview.ISBN
LEFT JOIN reviewer
ON bookReview.ReviewerID = reviewer.ReviewerID
WHERE reviewer.Name IS NULL OR reviewer.Name IS NOT NULL
ORDER BY book.title, reviewer.Name;

