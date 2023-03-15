-- HNB Table Prep

use NutsF;
-- This section aims to automatically load .csv files in
create TABLE HNB_Biomass (
	YEAR INT(15),	
    Month INT(15),
    DW_F VARCHAR(50),
	N_CONC_F VARCHAR(50),
    Ca_Conc_F VARCHAR(50),	
    Mg_Conc_F VARCHAR(50),	
    K_Conc_F VARCHAR(50),	
    S_Conc_F VARCHAR(50),	
    P_Conc_F VARCHAR(50),	
    N_WG_F VARCHAR(50),
	Ca_WG_F VARCHAR(50),
	Mg_WG_F VARCHAR(50),
	K_WG_F VARCHAR(50),
	S_WG_F VARCHAR(50),
	P_WG_F VARCHAR(50),
    DW_B VARCHAR(50),
	N_CONC_B VARCHAR(50),
	Ca_Conc_B VARCHAR(50),
	Mg_Conc_B VARCHAR(50),
	K_Conc_B VARCHAR(50),
	S_Conc_B VARCHAR(50),
	P_Conc_B VARCHAR(50),
	N_WG_B VARCHAR(50),
	Ca_WG_B VARCHAR(50),
	Mg_WG_B VARCHAR(50),
	K_WG_B VARCHAR(50),
	S_WG_B VARCHAR(50),
	P_WG_B VARCHAR(50),
	DW_BRK VARCHAR(50),
	N_CONC_BRK VARCHAR(50),
	Ca_Conc_BRK VARCHAR(50),
	Mg_Conc_BRK VARCHAR(50),
	K_Conc_BRK VARCHAR(50),
	S_Conc_BRK VARCHAR(50),
	P_Conc_BRK VARCHAR(50),
	N_WG_BRK VARCHAR(50),
	Ca_WG_BRK VARCHAR(50),
	Mg_WG_BRK VARCHAR(50),
	K_WG_BRK VARCHAR(50),
	S_WG_BRK VARCHAR(50),
	P_WG_BRK VARCHAR(50),
    DW_BRCH VARCHAR(50),
	N_CONC_BRCH VARCHAR(50),
	Ca_Conc_BRCH VARCHAR(50),
	Mg_Conc_BRCH VARCHAR(50),
	K_Conc_BRCH VARCHAR(50),
	S_Conc_BRCH VARCHAR(50),
	P_Conc_BRCH VARCHAR(50),
	N_WG_BRCH VARCHAR(50),
	Ca_WG_BRCH VARCHAR(50),
	Mg_WG_BRCH VARCHAR(50),
	K_WG_BRCH VARCHAR(50),
	S_WG_BRCH VARCHAR(50),
	P_WG_BRCH VARCHAR(50),
    DW_Tot VARCHAR(50),
	N_WG_Tot VARCHAR(50),
	Ca_WG_Tot VARCHAR(50),
	Mg_WG_Tot VARCHAR(50),
	K_WG_Tot VARCHAR(50),
	S_WG_Tot VARCHAR(50),
	P_WG_Tot VARCHAR(50),
    Site  VARCHAR(3)
);

describe HNB_Biomass;
-- Test out with a manually loaded .csv first
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\NutsFor_Data\\Biomass_Data\\Raw_Data\\HNB\\Tree data.csv'
INTO TABLE HNB_Biomass
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 2 ROWS
(@col1, @col2, @col3, @col4, @col5, @col6, @col7, @col8, @col9, @col10,
@col11, @col12, @col13, @col14, @col15, @col16, @col17, @col18, @col19, @col20,
@col21, @col22, @col23, @col24, @col25, @col26, @col27, @col28, @col29, @col30,
@col31, @col32, @col33, @col34, @col35, @col36, @col37, @col38, @col39, @col40,
@col41, @col42, @col43, @col44, @col45, @col46, @col47, @col48, @col49, @col50,
@col51, @col52, @col53, @col54, @col55, @col56, @col57, @col58, @col59, @col60,
@col61, @col62)
SET Year = @col1, Month = @col2, DW_F = @col3, N_CONC_F = @col4, Ca_Conc_F = @col5, Mg_Conc_F = @col6, 
K_Conc_F = @col7, S_Conc_F = @col8, P_Conc_F = @col9, N_WG_F = @col10, Ca_WG_F = @col11, Mg_WG_F = @col12, 
K_WG_F = @col13, S_WG_F = @col14, P_WG_F = @col15, DW_B = @col16, N_CONC_B = @col17, Ca_Conc_B = @col18, 
Mg_Conc_B = @col19, K_Conc_B = @col20, S_Conc_B = @col21, P_Conc_B = @col22, N_WG_B = @col23, Ca_WG_B = @col24, 
Mg_WG_B = @col25, K_WG_B = @col26, S_WG_B = @col27, P_WG_B = @col28, DW_BRK = @col29, N_CONC_BRK = @col30,
Ca_Conc_BRK = @col31, Mg_Conc_BRK = @col32, K_Conc_BRK = @col33, S_Conc_BRK = @col34, P_Conc_BRK = @col35,
N_WG_BRK = @col36, Ca_WG_BRK = @col37, Mg_WG_BRK = @col38, K_WG_BRK = @col39, S_WG_BRK = @col40, P_WG_BRK = @col41, 
DW_BRCH = @col42, N_CONC_BRCH = @col43, Ca_Conc_BRCH = @col44, Mg_Conc_BRCH = @col45, K_Conc_BRCH = @col46,
S_Conc_BRCH = @col47, P_Conc_BRCH = @col48, N_WG_BRCH = @col49, Ca_WG_BRCH = @col50, Mg_WG_BRCH = @col51, 
K_WG_BRCH = @col52, S_WG_BRCH = @col53, P_WG_BRCH = @col54, DW_Tot = @col55, 
N_WG_Tot = @col56, Ca_WG_Tot = @col57, Mg_WG_Tot = @col58, K_WG_Tot = @col59, S_WG_Tot = @col60, P_WG_Tot = @col61, Site = @col62;


CREATE TABLE Organ_Table_3 (
  YEAR INT(15),
  Month INT(15),
  Ca VARCHAR(50),
  Mg VARCHAR(50),
  N VARCHAR(50),
  K VARCHAR(50),
  S VARCHAR(50),
  P VARCHAR(50),
  Site VARCHAR(50),
  Biomass_Type VARCHAR(50),
  M_Type VARCHAR(50)
  
);

-- This inserts the original HNB_Biomass Table into the new Organ_Table, splitting up named elements into the different columns
INSERT INTO Organ_Table_3 (YEAR, Month, Site, Biomass_Type, M_Type, Ca, Mg, N, K, S, P)
SELECT YEAR, Month, Site, 'Fol' AS Biomass_Type, 'WG' AS M_Type,
       Ca_WG_F AS Ca, Mg_WG_F AS Mg, N_WG_F AS N, K_WG_F AS K, S_WG_F AS S, P_WG_F AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'Fol' AS Biomass_Type, 'Conc' AS M_Type,
       Ca_Conc_F AS Ca, Mg_Conc_F AS Mg, N_Conc_F AS N, K_Conc_F AS K, S_Conc_F AS S, P_Conc_F AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRK' AS Biomass_Type, 'WG' AS M_Type,
       Ca_WG_BRK AS Ca, Mg_WG_BRK AS Mg, N_WG_BRK AS N, K_WG_BRK AS K, S_WG_BRK AS S, P_WG_BRK AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRK' AS Biomass_Type, 'Conc' AS M_Type,
       Ca_Conc_BRK AS Ca, Mg_Conc_BRK AS Mg, N_Conc_BRK AS N, K_Conc_BRK AS K, S_Conc_BRK AS S, P_Conc_BRK AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRCH' AS Biomass_Type, 'WG' AS M_Type,
       Ca_WG_BRCH AS Ca, Mg_WG_BRCH AS Mg, N_WG_BRCH AS N, K_WG_BRCH AS K, S_WG_BRCH AS S, P_WG_BRCH AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRCH' AS Biomass_Type, 'Conc' AS M_Type,
       Ca_Conc_BRCH AS Ca, Mg_Conc_BRCH AS Mg, N_Conc_BRCH AS N, K_Conc_BRCH AS K, S_Conc_BRCH AS S, P_Conc_BRCH AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'B' AS Biomass_Type, 'WG' AS M_Type,
       Ca_WG_B AS Ca, Mg_WG_B AS Mg, N_WG_B AS N, K_WG_B AS K, S_WG_B AS S, P_WG_B AS P
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'B' AS Biomass_Type, 'Conc' AS M_Type,
       Ca_Conc_B AS Ca, Mg_Conc_B AS Mg, N_Conc_B AS N, K_Conc_B AS K, S_Conc_B AS S, P_Conc_B AS P
FROM HNB_Biomass;

-- Other table
CREATE TABLE DW_Table_3 (
  YEAR INT(15),
  Month INT(15),
  Site VARCHAR(3),
  Biomass_Type VARCHAR(50),
  DW VARCHAR(50)
  
);


INSERT INTO DW_Table_3 (YEAR, Month, Site, Biomass_Type, DW)
SELECT YEAR, Month, Site, 'Fol' AS Biomass_Type,
       DW_F AS DW
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRK' AS Biomass_Type,
       DW_BRK AS DW
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'BRCH' AS Biomass_Type,
       DW_BRCH AS DW
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'B' AS Biomass_Type,
       DW_B AS DW
FROM HNB_Biomass
UNION ALL
SELECT YEAR, Month, Site, 'Tot' AS Biomass_Type,
       DW_Tot AS DW
FROM HNB_Biomass;

-- Now we finally set the 'Site' Column

SET SQL_SAFE_UPDATES = 0;
UPDATE Organ_Table_3 SET Site = 'HNB';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE DW_Table_3 SET Site = 'HNB';
SET SQL_SAFE_UPDATES = 1;

Select * FROM Organ_Table_3;  -- Check import results, check1 should be an empty column (also, the upload doesn't work without check1