SELECT vehicles.*
FROM Vehicles vehicles
JOIN Inventory inventory ON vehicles.VIN = inventory.VIN
JOIN Dealerships dealership ON inventory.DealershipID = dealership.DealershipID
WHERE dealership.Name = 'Chums Auto';