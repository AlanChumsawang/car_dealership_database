-- Select the database
USE car_dealership_database;


-- Insert data into "Dealerships"                                         


-- Disable foreign key checks to allow truncation of the table
SET FOREIGN_KEY_CHECKS = 0;

-- Truncate the "Dealerships" table
TRUNCATE TABLE Dealerships;

-- Insert data into the "Dealerships" table
INSERT INTO Dealerships (`Name`, `Address`, `Phone`) VALUES
('Chums Auto', '123 Cherry Rd, Rock Hill', '803-123-4567'),
('Budget Cars', '456 Elm St, Charlotte', '704-987-6543'),
('Premium Cars', '789 Oak Ave, Monroe', '980-321-7654'),
('Electric Cars', '101 Green Way, Concord', '704-246-8100'),
('Trucks Galore', '202 Country Rd, Midland', '704-135-2468');

-- Insert data into "Vehicles"                                            


-- Truncate the "Vehicles" table
TRUNCATE TABLE Vehicles;

-- Insert data into the "Vehicles" table
INSERT INTO Vehicles (`VIN`, `Make`, `Model`, `Type`, `Color`, `Odometer`, `Price`, `Sold`) VALUES
(12321, 'Toyota', 'Camry', 'Sedan', 'Blue', 45000, 22000.00, FALSE),
(14341, 'Ford', 'F-150', 'Truck', 'Black', 75000, 30000.00, FALSE),
(16431, 'Honda', 'Civic', 'Sedan', 'White', 50000, 18000.00, TRUE),
(14001, 'Chevrolet', 'Tahoe', 'SUV', 'Silver', 60000, 38000.00, TRUE),
(15601, 'BMW', 'X5', 'SUV', 'Black', 25000, 55000.00, TRUE),
(22001, 'Subaru', 'Outback', 'Wagon', 'Blue', 45000, 25000.00, TRUE),
(39021, 'Dodge', 'Charger', 'Sedan', 'Red', 40000, 30000.00, TRUE),
(43301, 'Tesla', 'Model Y', 'Electric', 'Silver', 15000, 48000.00, TRUE);

-- Insert data into "Inventory"                                           

-- Truncate the "Inventory" table
TRUNCATE TABLE Inventory;

-- Insert data into the "Inventory" table
INSERT INTO Inventory (`DealershipID`, `VIN`) VALUES
(1,12321),
(1,14341),
(1,16431),
(1,14001),
(2,15601),
(2,22001),
(3,39021),
(4,43301);

-- Truncate the "Sales_Contracts" table
TRUNCATE TABLE Sales_Contracts;

-- Insert data into the "Sales_Contracts" table
INSERT INTO Sales_Contracts (`VIN`, `isFinanced`, `Loan_Term`, `Total_Price`, `Sale_Date`) VALUES
(16431, TRUE, 36, 18000.00, '2024-01-15'),
(14001, TRUE, 48, 38000.00, '2024-02-20'),
(15601, FALSE, 0, 55000.00, '2024-03-10'),
(22001, TRUE, 24, 25000.00, '2024-03-25'),
(39021, FALSE, 0, 30000.00, '2024-04-05'),
(43301, TRUE, 60, 48000.00, '2024-05-15');

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;
