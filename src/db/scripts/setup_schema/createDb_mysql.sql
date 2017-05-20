CREATE SCHEMA IF NOT EXISTS `BookCatalogDB`;

USE `BookCatalogDB`;

CREATE TABLE IF NOT EXISTS `News` (
    `id` INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `LatestNews` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`startDate` DATETIME NOT NULL,
	`endDate` DATETIME NOT NULL,
	`newsItemId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `NewsItems` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(40) NOT NULL,
	`content` TEXT NOT NULL,
	`postDate` DATETIME NOT NULL,
	`link` VARCHAR(500) NOT NULL,
	`authorId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Books` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`authorId` INT NOT NULL,
	`publisherId` INT NOT NULL,
	`yearPublished` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `VerifiedPerson` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(255) NOT NULL,
	`lastname` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Publishers` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Queries` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	`mobile` VARCHAR(255),
	`date` DATETIME NOT NULL,
	`postalAddress` TEXT,
	`message` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `LatestNews` ADD CONSTRAINT `LatestNews_fk0` FOREIGN KEY (`newsItemId`) REFERENCES `NewsItems`(`id`);

ALTER TABLE `NewsItems` ADD CONSTRAINT `NewsItems_fk0` FOREIGN KEY (`authorId`) REFERENCES `VerifiedPerson`(`id`);

ALTER TABLE `Books` ADD CONSTRAINT `Books_fk0` FOREIGN KEY (`authorId`) REFERENCES `VerifiedPerson`(`id`);

ALTER TABLE `Books` ADD CONSTRAINT `Books_fk1` FOREIGN KEY (`publisherId`) REFERENCES `Publishers`(`id`);

CREATE USER IF NOT EXISTS 'BookCatalogAdmin'@'localhost' IDENTIFIED BY 'W3bT3@mD3v3l0p3r';

GRANT ALL PRIVILEGES ON `BookCatalogDB` . * TO 'BookCatalogAdmin'@'localhost';

