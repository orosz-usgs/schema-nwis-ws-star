--NOTE that these are not run as part of the automated scripts.  You must fill in the passwords before you you manually run them!!!

DROP DATABASE LINK "NWIS_WS_STG_DBSTAGE.ER.USGS.GOV";

CREATE DATABASE LINK "NWIS_WS_STG_DBSTAGE.ER.USGS.GOV"
 CONNECT TO NWIS_WS_STG
 IDENTIFIED BY <PWD>
 USING 'DBSTAGE.ER.USGS.GOV';
 
---------------------------------------------------------------------------------------------------- 
 
DROP DATABASE LINK "NWQ_STG_DBSTAGE.ER.USGS.GOV";

CREATE DATABASE LINK "NWQ_STG_DBSTAGE.ER.USGS.GOV"
 CONNECT TO NWQ_STG
 IDENTIFIED BY <PWD>
 USING 'DBSTAGE.ER.USGS.GOV';

---------------------------------------------------------------------------------------------------- 
 
DROP DATABASE LINK "STORETMODERN_DBDW.ER.USGS.GOV";

CREATE DATABASE LINK "STORETMODERN_DBDW.ER.USGS.GOV"
 CONNECT TO STORETMODERN
 IDENTIFIED BY <PWD>
 USING 'DBDW.ER.USGS.GOV';

---------------------------------------------------------------------------------------------------- 
 
