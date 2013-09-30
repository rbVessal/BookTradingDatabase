/*List the book title and their ratings for all 
reviewers who do not work for a newspaper or any other news
organization.  
A reviewer is employed by a newspaper, or other news organization,
if their "Employed By" field contains a value.*/

SELECT reviewer.Name, book.Title, bookReview.rating
FROM book INNER JOIN bookReview
ON book.ISBN = bookReview.ISBN

INNER JOIN reviewer
ON bookReview.reviewerID = reviewer.reviewerID

WHERE reviewer.employedBy IS NULL;