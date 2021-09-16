-- DATA CLEANING - SAN FRANCISCO LIBRARY DATASET

-- CHECKING FOR DUPLICATES --

-- Patron/Sponsors duplicates verification
SELECT DISTINCT		
	Patron_Type_Code, 
	Patron_Type_Definition
FROM
	Library
ORDER BY
	Patron_Type_Code asc

-- Library branch duplicates verification
SELECT DISTINCT		 
	Home_Library_Definition
FROM
	Library

-- Duplicates verification for months (it was input as strings)
SELECT DISTINCT		
	Circulation_Active_Month
FROM
	Library

-- Duplicates verification on notice preference code and definition
SELECT DISTINCT		
	Notice_Preference_Code, 
	Notice_Preference_Definition
FROM
	Library

-- CHECKING FOR MISSING VALUES --
SELECT *
FROM
	Library
WHERE 
	(Patron_Type_Definition IS NULL OR
	Total_Checkouts IS NULL OR
	Total_Renewals IS NULL)

-- CHECKING FOR POSSIBLE INCONSISTENCIES --

-- Min and Max of total checkouts and renewals
SELECT
	MIN (CAST (Total_Checkouts as INT)) as Min_Checkouts,
	MAX (CAST (Total_Checkouts as INT)) as Max_Checkouts,
    MIN (CAST (Total_Renewals as INT)) as Min_Renewals,
	MAX (CAST (Total_Renewals as INT)) as Max_Renewals
FROM
	Library

-- Checking if ages are consistent
SELECT 
DISTINCT
	Age_Range
FROM
	Library
ORDER BY 
	Age_Range desc

