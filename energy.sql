-- MMBtu_TOTAL for Ethane & Ethanol 

select sum(MMBtu_TOTAL) from stats where FUEL_TYPE= 'Ethane' and FUEL_TYPE= 'Ethanol';

-- Average GWht_TOTAL for 3M Company Facility

select avg(GWht_TOTAL) from stats where FACILITY_NAME='3M Company';

-- Unit Name trend (1950-2020) Vs GWht_TOTAL

SELECT UNIT_NAME, SUM(GWht_Total)
FROM stats
WHERE REPORTING_YEAR BETWEEN 1950 AND 2020
GROUP BY UNIT_NAME;


-- % Share of MMBtu_TOTAL & GWht_TOTAL for each MECS_Region

select (sum(MMBtu_TOTAL) * 100/(sum(MMBtu_TOTAL)+sum(GWht_TOTAL))) as MMBtu_TOTAL, 
(sum(GWht_TOTAL) * 100/(sum(MMBtu_TOTAL)+sum(GWht_TOTAL))) as GWht_TOTAL,
MECS_Region
from stats group by MECS_Region;

-- PRIMARY_NAICS_TITLE Vs Facility Name and Fuel Type Stats

select PRIMARY_NAICS_TITLE, FACILITY_NAME,FUEL_TYPE from stats;

select PRIMARY_NAICS_TITLE, FACILITY_NAME from stats;



select * from stats;


