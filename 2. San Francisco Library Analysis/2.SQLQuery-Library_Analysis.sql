-- SAN FRANCISCO LIBRARY ANALYSIS --

-- OUR SPONSORS / PATRONS TYPES
SELECT COUNT (Patron_Type_Definition) as SponsorsCount,
	Patron_Type_Definition
FROM	
	Library
GROUP BY
	Patron_Type_Definition
ORDER BY 
	SponsorsCount desc

-- AGE RANGE OF SPONSORS
SELECT COUNT (Age_range) as AgeRangeCount,
	Age_Range
FROM
	Library
GROUP BY
	Age_Range
ORDER BY
	AgeRangeCount desc

-- HOW OUR SPONSORS CHANGED OVER THE YEARS
SELECT COUNT (Patron_Type_Definition) as SponsorsCount,
	Patron_Type_Definition,
	Year_Patron_Registered
FROM	
	Library
GROUP BY
	Patron_Type_Definition,
	Year_Patron_Registered
ORDER BY 
	SponsorsCount desc,
	Patron_Type_Definition

-- AVG NUMBER OF CHECKOUTS AND RENEWALS (HISTORICAL)
SELECT 
	AVG (CAST (Total_Checkouts as INT)) as avg_checkouts,
	AVG (CAST (Total_Renewals as INT)) as avg_renewals
FROM	
	Library
	
-- TOTAL NUMBER OF CHECKOUTS AND RENEWALS	
SELECT 
	SUM (CAST (Total_Checkouts AS INT)) as TotalCheckouts,
	SUM (CAST (Total_Renewals AS INT)) as TotalRenew
FROM
	Library

-- NUMBER OF NEW SPONSORS LAST YEAR BY SPONSOR TYPE (2016)
SELECT COUNT (Patron_Type_Code) as SponsorsCount,
	Patron_Type_Definition,
	Year_Patron_Registered
FROM
	Library
WHERE 
	Year_Patron_Registered = '2016'
GROUP BY
	Patron_Type_Definition,
	Year_Patron_Registered
ORDER BY
	SponsorsCount desc

-- NUMBER OF CHECKOUTS PER LIBRARY BRANCH
SELECT COUNT (Total_Checkouts) as CheckoutCount,
	Home_Library_Definition
FROM
	Library
GROUP BY
	Home_Library_Definition
ORDER BY
	CheckoutCount desc

-- MOST ACTIVE MONTH LAST YEAR (2016)
SELECT COUNT (Total_Checkouts) as TotalCheckouts,
	Circulation_Active_Month
FROM
	Library
WHERE 
	Circulation_Active_Year = '2016'
GROUP BY 
	Circulation_Active_Month
ORDER BY
	TotalCheckouts desc

-- SPONSOR'S PREFERRED METHOD OF RECEIVING LIBRARY NEWS
SELECT COUNT (Notice_Preference_Definition) as 'count',
	Notice_Preference_Definition
FROM
	Library
GROUP BY
	Notice_Preference_Definition
ORDER BY
	'count' desc

-- INFO WILL BE POPULATED FOR DATAVIZ