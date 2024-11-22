SELECT d.*
FROM Dealerships d
JOIN Inventory i ON d.DealershipID = i.DealershipID
JOIN Vehicles v ON i.VIN = v.VIN
WHERE v.Make = 'Toyota'
  AND v.Model = 'Camry'
  AND v.Color = 'Blue'
;