CREATE SCHEMA IF NOT EXISTS `BookCatalogDB`;

USE `BookCatalogDB`;

CREATE TABLE `LatestNews` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`showStartDate` DATETIME NOT NULL,
	`showEndDate` DATETIME NOT NULL,
	`newsItemId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `NewsItem` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(40) NOT NULL,
	`content` TEXT NOT NULL,
	`postDate` DATETIME NOT NULL,
	`link` VARCHAR(500) NOT NULL,
	`authorId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Book` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`authorId` INT NOT NULL,
	`publisherId` INT NOT NULL,
	`yearPublished` INT NOT NULL,
	`bookCoverImageUrl` VARCHAR(255),
	PRIMARY KEY (`id`)
);

CREATE TABLE `VerifiedPerson` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(255) NOT NULL,
	`lastname` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Publisher` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Query` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`mobile` VARCHAR(255),
	`date` DATETIME NOT NULL,
	`postalAddress` TEXT,
	`message` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `BookType` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `BookTypeMap` (
	`bookTypeId` INT NOT NULL,
	`bookId` INT NOT NULL
);

ALTER TABLE `LatestNews` ADD CONSTRAINT `LatestNews_fk0` FOREIGN KEY (`newsItemId`) REFERENCES `NewsItem`(`id`);

ALTER TABLE `NewsItem` ADD CONSTRAINT `NewsItem_fk0` FOREIGN KEY (`authorId`) REFERENCES `VerifiedPerson`(`id`);

ALTER TABLE `Book` ADD CONSTRAINT `Book_fk0` FOREIGN KEY (`authorId`) REFERENCES `VerifiedPerson`(`id`);

ALTER TABLE `Book` ADD CONSTRAINT `Book_fk1` FOREIGN KEY (`publisherId`) REFERENCES `Publisher`(`id`);

ALTER TABLE `BookTypeMap` ADD CONSTRAINT `BookTypeMap_fk0` FOREIGN KEY (`bookTypeId`) REFERENCES `BookType`(`id`);

ALTER TABLE `BookTypeMap` ADD CONSTRAINT `BookTypeMap_fk1` FOREIGN KEY (`bookId`) REFERENCES `Book`(`id`);

CREATE USER IF NOT EXISTS 'BookCatalogAdmin'@'localhost' IDENTIFIED BY 'W3bT3@mD3v3l0p3r';

GRANT ALL PRIVILEGES ON `BookCatalogDB` . * TO 'BookCatalogAdmin'@'localhost';

