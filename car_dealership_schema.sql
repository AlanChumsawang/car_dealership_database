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

-- Create the Sales_Contracts table
CREATE TABLE `Sales_Contracts` (
    `VIN` INT NOT NULL,              -- Vehicle Identification Number, a unique integer
    `isFinanced` BOOLEAN NOT NULL,   -- Whether the sale is financed (TRUE/FALSE)
    `Loan_Term` INT NOT NULL,        -- Loan term in months (0 for non-financed sales)
    `Total_Price` DECIMAL(10, 2) NOT NULL, -- Total price of the contract, with up to 2 decimal places
    PRIMARY KEY (`VIN`)              -- VIN as the primary key to ensure uniqueness
);


