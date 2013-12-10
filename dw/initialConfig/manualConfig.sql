--These scripts need to be run manually after adjusting the passwords and database locations.
--(Also not sure we should really be using system...)
--you may also need to install utl_mail and grant execute on it to public(is this ok?)
CREATE DATABASE LINK WITRANS.ER.USGS.GOV
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'witrans.er.usgs.gov';
 
CREATE DATABASE LINK WISTG.ER.USGS.GOV
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'wistg.er.usgs.gov';
 
 CREATE DATABASE LINK WIDW.ER.USGS.GOV
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'widw.er.usgs.gov';

 CREATE DATABASE LINK WITRANS
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'witrans.er.usgs.gov';
 
CREATE DATABASE LINK WISTG
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'wistg.er.usgs.gov';
 
 CREATE DATABASE LINK WIDW
 CONNECT TO SYSTEM
 IDENTIFIED BY <PWD>
 USING 'widw.er.usgs.gov';
