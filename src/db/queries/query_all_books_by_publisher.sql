SELECT
	*
FROM (
	SELECT
		book.id AS `ID`,
		book.title AS `Title`,
		CONCAT(author.firstname, ' ', author.lastname) AS `Author`,
		publisher.name AS `Publisher`,
		book.yearPublished AS `Year Published`
	FROM 
		`Book` book 
			LEFT JOIN `VerifiedPerson` author ON book.authorId = author.id
			LEFT JOIN `Publisher` publisher ON book.publisherId = publisher.id
	) q
WHERE
	q.`Year Published` > 1968 AND q.`Year Published` < 2009;
    