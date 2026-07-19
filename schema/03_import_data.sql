-- NOTE: Update the file path below to match your local MySQL 'secure_file_priv' 
-- directory before running. Find yours with: SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/IPS DATA SQL.csv'
INTO TABLE salary2026
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(name, @dummy_empid, @doj_raw, designation, depart,
 @basic_raw, @hra_raw, @conv_raw, @spec_raw, @tot_raw,
 epe, epr, prof, tds, adv, tot_ded, net_pay)
SET 
  date_of_join = STR_TO_DATE(@doj_raw, '%d/%m/%Y'),
  basic = REPLACE(@basic_raw, ',', ''),
  hra = REPLACE(@hra_raw, ',', ''),
  conv = REPLACE(@conv_raw, ',', ''),
  spec = REPLACE(@spec_raw, ',', ''),
  tot = REPLACE(@tot_raw, ',', '');
  
  
  UPDATE salary2026 
SET employee_id = CONCAT('ISP-', 1000 + id);
