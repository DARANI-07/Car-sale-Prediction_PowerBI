SELECT 
    SaleID,
    CustomerID,
    CarModel,
    Manufacturer,
    YearOfPurchase,
    FuelType,
    Transmission,
    EngineCC,
    Mileage,
    PurchasePrice,
    SalePrice,
    DATEDIFF(year, YearOfPurchase, GETDATE()) AS CarAge,
    SaleDate,
    MONTH(SaleDate) AS SaleMonth,
    YEAR(SaleDate) AS SaleYear
FROM 
    CarSales
WHERE 
    SaleDate IS NOT NULL
ORDER BY 
    SaleDate DESC;
