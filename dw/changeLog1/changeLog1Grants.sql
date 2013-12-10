--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaGrantsAA
grant select on station_00000 to nwis_ws_user;
--rollback revoke select on station_00000 from nwis_ws_user;
