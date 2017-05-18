CREATE TABLE `LatestNews` (
	`id` INT NOT NULL,
	`showStartDate` DATETIME NOT NULL,
	`showEndDate` DATETIME NOT NULL,
	`newsItemId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `NewsItems` (
	`id` INT NOT NULL,
	`title` VARCHAR(40) NOT NULL,
	`content` TEXT NOT NULL,
	`postDate` DATETIME NOT NULL,
	`link` VARCHAR(500) NOT NULL,
	`authorId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Books` (
	`id` INT NOT NULL,
	`title` VARCHAR(255) NOT NULL,
	`authorId` INT NOT NULL,
	`publisherId` INT NOT NULL,
	`yearPublished` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `VerifiedPerson` (
	`id` INT NOT NULL,
	`firstname` VARCHAR(255) NOT NULL,
	`lastname` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Publishers` (
	`id` INT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Queries` (
	`id` INT NOT NULL,
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
