SELECT Sales_Contracts.*
FROM Sales_Contracts
JOIN Inventory i ON Sales_Contracts.VIN = i.VIN
JOIN Dealerships d ON i.DealershipID = d.DealershipID
WHERE d.DealershipID = 1 -- Replace with the desired DealershipID
  AND Sales_Contracts.Sale_Date BETWEEN '2024-01-01' AND '2024-03-31'; -- Replace with desired date range

