USE `BookCatalogDB`;

DELETE FROM `BookType`;

INSERT INTO `BookType` (name) VALUES ("Fiction");
INSERT INTO `BookType` (name) VALUES ("Novel");
INSERT INTO `BookType` (name) VALUES ("Classic");
INSERT INTO `BookType` (name) VALUES ("Sci-Fi");
INSERT INTO `BookType` (name) VALUES ("Romance");
INSERT INTO `BookType` (name) VALUES ("Adventure");
INSERT INTO `BookType` (name) VALUES ("Horror");
INSERT INTO `BookType` (name) VALUES ("Fantasy");

INSERT INTO `BookType` (name) VALUES ("Non-Fiction");
INSERT INTO `BookType` (name) VALUES ("Religion");
INSERT INTO `BookType` (name) VALUES ("Science");
INSERT INTO `BookType` (name) VALUES ("Philosophy");
INSERT INTO `BookType` (name) VALUES ("Astronomy");
INSERT INTO `BookType` (name) VALUES ("Mathematics");
INSERT INTO `BookType` (name) VALUES ("Christian Literature");


DELETE FROM `VerifiedPerson`;

INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("John", "Grisham");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("Anne", "Rice");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("Victor", "Hugo");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("J. R. R.", "Tolkien");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("J. K.", "Rowling");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("George R. R.", "Martin");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("Neil", "Gaiman");

INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("Paul", "Riceour");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("Albert", "Einstein");
INSERT INTO `VerifiedPerson` (firstname, lastname) VALUES ("C. S.", "Lewis");

DELETE FROM `Publisher`;

INSERT INTO `Publisher` (name) VALUES ("Bloomsbury");
INSERT INTO `Publisher` (name) VALUES ("Simon & Schuster");
INSERT INTO `Publisher` (name) VALUES ("HarperCollins");
INSERT INTO `Publisher` (name) VALUES ("Princeton");
INSERT INTO `Publisher` (name) VALUES ("Bantam Books");
INSERT INTO `Publisher` (name) VALUES ("George Allen & Unwin");
INSERT INTO `Publisher` (name) VALUES ("Geoffrey Bles");

DELETE FROM `Book`;

INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Philosopher's Stone", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        1997);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Chamber of Secrets", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        1998);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Prisoner of Azkaban", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        1999);

INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Goblet of Fire", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        2000);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Order of the Phoenix", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        2003);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Half-Blood Prince", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        2005);

INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Harry Potter and the Deathly Hallows", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling"), 
        (SELECT id FROM `Publisher` WHERE name = "Bloomsbury"), 
        2007);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "The Hobbit", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien"), 
        (SELECT id FROM `Publisher` WHERE name = "George Allen & Unwin"), 
        1937);        
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "The Lord of the Rings - The Fellowship of the Rings", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien"), 
        (SELECT id FROM `Publisher` WHERE name = "George Allen & Unwin"), 
        1954);  
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "The Lord of the Rings - The Two Towers", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien"), 
        (SELECT id FROM `Publisher` WHERE name = "George Allen & Unwin"), 
        1954);  
                
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "The Lord of the Rings - The Return of the King", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien"), 
        (SELECT id FROM `Publisher` WHERE name = "George Allen & Unwin"), 
        1954);        

INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "The Lord of the Rings - The Return of the King", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien"), 
        (SELECT id FROM `Publisher` WHERE name = "George Allen & Unwin"), 
        1954); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "A Song of Ice and Fire - The Game of Thrones", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin"), 
        (SELECT id FROM `Publisher` WHERE name = "Bantam Books"), 
        1996); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "A Song of Ice and Fire - A Clash of Kings", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin"), 
        (SELECT id FROM `Publisher` WHERE name = "Bantam Books"), 
        1998); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "A Song of Ice and Fire - A Storm of Swords", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin"), 
        (SELECT id FROM `Publisher` WHERE name = "Bantam Books"), 
        2000); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "A Song of Ice and Fire - A Feast for Crows", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin"), 
        (SELECT id FROM `Publisher` WHERE name = "Bantam Books"), 
        2005); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "A Song of Ice and Fire - A Dance with Dragons", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin"), 
        (SELECT id FROM `Publisher` WHERE name = "Bantam Books"), 
        2011);  
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Lion, the Witch and the Wardrobe", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1950); 
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - Prince Caspian", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1951);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Voyage of the Dawn Treader", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1952);    
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Silver Chair", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1953);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Horse and His Boy", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1954);  

INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Magician's Nephew", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1955);
        
INSERT INTO `Book` 
    (title, authorId, publisherId, yearPublished) 
    VALUES (
        "Chronicles of Narnia - The Last Battle", 
        (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis"), 
        (SELECT id FROM `Publisher` WHERE name = "Geoffrey Bles"), 
        1956);                 
        
        
DELETE FROM `BookTypeMap`;
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fiction"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fantasy"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Novel"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. K." and lastname = "Rowling");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fiction"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fantasy"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Novel"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien");

INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Adventure"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "J. R. R." and lastname = "Tolkien");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fiction"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fantasy"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Novel"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "George R. R." and lastname = "Martin");  
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fiction"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Fantasy"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Novel"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = firstname = "C. S." and lastname = "Lewis");
        
INSERT INTO `BookTypeMap` (bookTypeId, bookId)
    SELECT 
        (SELECT id FROM `BookType` WHERE name = "Christian Literature"), 
        id FROM `Book` WHERE authorId = (SELECT id FROM `VerifiedPerson` WHERE firstname = "C. S." and lastname = "Lewis");
