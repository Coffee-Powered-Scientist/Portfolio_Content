
DROP TABLE IF EXISTS Biomass_All;
DROP TABLE IF EXISTS Dry_Weight;
use NutsF;
-- This section aims to run editing scripts and create a single table out of smaller tables
-- Source the other scritps that independently organize tables from difernt model runs, for the time being this must be done in the sql shell comand line (stupid)
-- We want to create a date column from year and month columns (can be done after all datasets are merged)
-- Combine tables of same structure
Create Table Biomass_All
SELECT * FROM Organ_Table
UNION ALL
SELECT * FROM Organ_Table_1
UNION ALL
SELECT * FROM Organ_Table_2
UNION ALL
SELECT * FROM Organ_Table_3;

ALTER TABLE Biomass_All
ADD COLUMN Date_Column DATE;

SET SQL_SAFE_UPDATES = 0;
UPDATE Biomass_All
SET Date_Column = STR_TO_DATE(CONCAT('1-', month, '-', year), '%d-%m-%Y');
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Biomass_All;

-- Next Table

Create Table Dry_Weight
SELECT * FROM DW_Table
UNION ALL
SELECT * FROM DW_Table_1
UNION ALL
SELECT * FROM DW_Table_2
UNION ALL
SELECT * FROM DW_Table_3;
ALTER TABLE Dry_Weight
ADD COLUMN Date_Column DATE;

SET SQL_SAFE_UPDATES = 0;
UPDATE Dry_Weight
SET Date_Column = STR_TO_DATE(CONCAT('1-', month, '-', year), '%d-%m-%Y');
SET SQL_SAFE_UPDATES = 1;


SELECT 'DW', 'Date_Column', 'Site', 'Biomass_Type'
UNION ALL
SELECT DW, Date_Column, Site, Biomass_Type
INTO OUTFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\NutsFor_Data\\Biomass_Data\\Finished_Data\\DryWeight_v3.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM Dry_Weight;

