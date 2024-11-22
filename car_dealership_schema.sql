# ---------------------------------------------------------------------- #
# Target DBMS:           MySQL                                           #
# Project name:          Car Dealership Database                         #
# ---------------------------------------------------------------------- #
DROP DATABASE IF EXISTS car_dealership_database;

CREATE DATABASE IF NOT EXISTS car_dealership_database;

USE car_dealership_database;

# ---------------------------------------------------------------------- #
# Tables                                                                 #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Dealerships"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `Dealerships` (
	`DealershipID` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL,
    `Address` VARCHAR(50) NOT NULL,
    `Phone` VARCHAR(12),
    PRIMARY KEY (`DealershipID`)
);

# ---------------------------------------------------------------------- #
# Add table "Vehicles"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Vehicles` (
	`VIN` INTEGER NOT NULL,
    `Make` VARCHAR(15),
	`Model` VARCHAR(20),
    `Type` VARCHAR(15),
    `Color` VARCHAR(10),
    `Odometer` INTEGER NOT NULL,
    `Price` DECIMAL(10,2),
    `Sold` BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (`VIN`)
);

# ---------------------------------------------------------------------- #
# Add table "Inventory".                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `Inventory` (
	`DealershipID` INTEGER NOT NULL,
    `VIN` INTEGER NOT NULL,
    UNIQUE (`VIN`),
    FOREIGN KEY (`DealershipID`) REFERENCES `Dealerships`(`DealershipID`)
);


