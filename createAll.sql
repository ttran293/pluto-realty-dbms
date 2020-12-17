
-- -----------------------------------------------------
-- Schema pluto_realty
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pluto_realty` ;

-- -----------------------------------------------------
-- Schema pluto_realty
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pluto_realty`;
USE `pluto_realty` ;

-- -----------------------------------------------------
-- Table `pluto_realty`.`person`
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS=0;
SET GLOBAL FOREIGN_KEY_CHECKS=0;


CREATE TABLE IF NOT EXISTS `pluto_realty`.`person` (
  `person_id` VARCHAR(45) NOT NULL,
  `last_name` TEXT,
  `first_name` TEXT,
  `telephone` VARCHAR(20),
  `address` TEXT,
  `city` VARCHAR(45),
  `state` VARCHAR(45),
  `zipcode` VARCHAR(45),
  PRIMARY KEY (`person_id`));


-- -----------------------------------------------------
-- Table `pluto_realty`.`employees`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`employees` (
  `employee_id` VARCHAR(45) NOT NULL,
  `roles` VARCHAR(12),
  `hired_date` DATE,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `fk_employees_person1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `pluto_realty`.`person` (`person_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`leases`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `pluto_realty`.`leases` (
  `lease_id` VARCHAR(45) NOT NULL,
  `lease_date` DATE,
  `monthly_rent` FLOAT,
  `deposit` FLOAT,
  `duration` TEXT,
  `start` DATE,
  `finish` DATE,
  PRIMARY KEY (`lease_id`));


-- -----------------------------------------------------
-- Table `pluto_realty`.`rental_properties`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`rental_properties` (
  `id` VARCHAR(45) NOT NULL,
  `owner_id` VARCHAR(20) NOT NULL,
  `prop_type` VARCHAR(45) NOT NULL,
  `area_sqr_footage` FLOAT,
  `rent_month` FLOAT,
  `rent_fee` FLOAT,
  `status_prop` TINYINT NOT NULL,
  `lease_id` VARCHAR(45),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_rental_properties_leases1`
    FOREIGN KEY (`lease_id`)
    REFERENCES `pluto_realty`.`leases` (`lease_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`associates`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`associates` (
  `id` VARCHAR(45) NOT NULL,
  `property_id` VARCHAR(45),
  `number_of_prop` INT,
  `prop_date_time` DATETIME,
  CONSTRAINT `fk_associates_employees1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`employees` (`employee_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_associates_rental_properties1`
    FOREIGN KEY (`property_id`)
    REFERENCES `pluto_realty`.`rental_properties` (`id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`clients`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `pluto_realty`.`clients` (
  `client_id` VARCHAR(45) NOT NULL,
  `email` VARCHAR(254),
  `prop_preference` VARCHAR(45),
  `rent_pay_rate` FLOAT,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `fk_clients_person1`
    FOREIGN KEY (`client_id`)
    REFERENCES `pluto_realty`.`person` (`person_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`commercial_prop`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`commercial_prop` (
  `id` VARCHAR(45) NOT NULL,
  `address` TEXT,
  `city` TEXT,
  `state` TEXT,
  `zipcode` VARCHAR(45),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_commercial_prop_rental_properties1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`rental_properties` (`id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`employee_email`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`employee_email` (
  `id` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45),
  CONSTRAINT `fk_employee_email_employees1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`employees` (`employee_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`industrial_prop`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`industrial_prop` (
  `id` VARCHAR(45) NOT NULL,
  `address` TEXT,
  `city` TEXT,
  `state` TEXT,
  `zipcode` VARCHAR(45),
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_industrial_prop_rental_properties1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`rental_properties` (`id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`property_owner`
-- -----------------------------------------------------


CREATE TABLE IF NOT EXISTS `pluto_realty`.`property_owner` (
  `owner_id` VARCHAR(45) NOT NULL,
  `property_id` VARCHAR(45) NOT NULL,
  `first_name` TEXT,
  `last_name` TEXT,
  `corporation_name` TEXT,
  `address` TEXT,
  `phone` VARCHAR(20),
  `email` VARCHAR(45),
  PRIMARY KEY (`owner_id`));


-- -----------------------------------------------------
-- Table `pluto_realty`.`partners`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`partners` (
  `id` VARCHAR(45) NOT NULL,
  `owner_id` VARCHAR(45) NOT NULL,
  `client_id` VARCHAR(45) NOT NULL,
  `lease_id` VARCHAR(45) NOT NULL,
  CONSTRAINT `fk_partners_employees1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`employees` (`employee_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_partners_leases1`
    FOREIGN KEY (`lease_id`)
    REFERENCES `pluto_realty`.`leases` (`lease_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_partners_clients1`
    FOREIGN KEY (`client_id`)
    REFERENCES `pluto_realty`.`clients` (`client_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_partners_property_owner1`
    FOREIGN KEY (`owner_id`)
    REFERENCES `pluto_realty`.`property_owner` (`owner_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`property_viewings`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`property_viewings` (
  `property_viewing_id` VARCHAR(45) NOT NULL,
  `property_id` VARCHAR(45) NOT NULL,
  `client_id` VARCHAR(45) NOT NULL,
  `associate_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`property_viewing_id`),
  CONSTRAINT `fk_property_viewings_associates1`
    FOREIGN KEY (`associate_id`)
    REFERENCES `pluto_realty`.`associates` (`id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_property_viewings_clients1`
    FOREIGN KEY (`client_id`)
    REFERENCES `pluto_realty`.`clients` (`client_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_property_viewings_rental_properties1`
    FOREIGN KEY (`property_id`)
    REFERENCES `pluto_realty`.`rental_properties` (`id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`prop_view_date`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`prop_view_date` (
  `prop_view_id` VARCHAR(45) NOT NULL,
  `date_time` DATETIME,
  CONSTRAINT `fk_prop_view_date_property_viewings1`
    FOREIGN KEY (`prop_view_id`)
    REFERENCES `pluto_realty`.`property_viewings` (`property_viewing_id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`residential_prop`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `pluto_realty`.`residential_prop` (
  `id` VARCHAR(45) NOT NULL,
  `address` TEXT,
  `city` TEXT,
  `state` TEXT,
  `zipcode` VARCHAR(45),
  `number_of_bedrooms` INT,
  `number_of_bathrooms` INT,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_residential_prop_rental_properties1`
    FOREIGN KEY (`id`)
    REFERENCES `pluto_realty`.`rental_properties` (`id`)
    ON DELETE CASCADE);


-- -----------------------------------------------------
-- Table `pluto_realty`.`supervisor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pluto_realty`.`supervisor` ;

CREATE TABLE IF NOT EXISTS `pluto_realty`.`supervisor` (
  `emp_id` VARCHAR(45) NOT NULL,
  `spv_id` VARCHAR(45),
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `fk_supervisor_employees`
    FOREIGN KEY (`emp_id`)
    REFERENCES `pluto_realty`.`employees` (`employee_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_supervisor_employees1`
    FOREIGN KEY (`spv_id`)
    REFERENCES `pluto_realty`.`employees` (`employee_id`)
   ON DELETE CASCADE);

