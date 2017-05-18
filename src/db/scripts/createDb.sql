CREATE SCHEMA IF NOT EXISTS `BookCatalogDB` DEFAULT CHARACTER SET latin1;
USE `BookCatalogDB`;

-- ----------------------------------------
-- Table `BookCatalogDB`.`News`
-- ----------------------------------------
CREATE TABLE IF NOT EXISTS `BookCatalogDB`.`News` (
    `id` INT NOT NULL,
    PRIMARY KEY (`id`)
)