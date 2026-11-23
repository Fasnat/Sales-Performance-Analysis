    SELECT
       C.CustomerKey As CustomerKey,
          --,[GeographyKey]
          --,[CustomerAlternateKey]
          --,[Title]
       C.Firstname As [First Name],
          --,[MiddleName]
       C.Lastname As [Last Name],
       C.Firstname + ' ' + lastname As [FullName],
          --Combined First and Last Name
          --,[NameStyle]
          --,[BirthDate]
          --,[MaritalStatus]
          --,[Suffix]
       Case c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
          --,[EmailAddress]
          --,[YearlyIncome]
          --,[TotalChildren]
          --,[NumberChildrenAtHome]
          --,[EnglishEducation]
          --,[SpanishEducation]
          --,[FrenchEducation]
          --,[EnglishOccupation]
          --,[SpanishOccupation]
          --,[FrenchOccupation]
          --,[HouseOwnerFlag]
          --,[NumberCarsOwned]
          --,[AddressLine1]
          --,[AddressLine2]
          --,[Phone]
        c.dateFirstPurchase AS DateFirstPurchase,
          --,[CommuteDistance]
        g.city AS [Customer city] --Joined in customer city from Geography Table 
      FROM 
        dbo.dimcustomer AS c
        LEFT JOIN dbo.dimgeography AS g ON g.geographykey=c.geographykey
    ORDER BY
        CustomerKey ASC  --Order List by Customer Key
