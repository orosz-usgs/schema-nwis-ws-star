--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaGrantsAA
grant select on public_srsnames_00000 to nwis_ws_user;
--rollback revoke select on public_srsnames_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAB
grant select on characteristicname_00000 to nwis_ws_user;
--rollback revoke select on characteristicname_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAC
grant select on characteristictype_00000 to nwis_ws_user;
--rollback revoke select on characteristictype_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAD
grant select on country_00000 to nwis_ws_user;
--rollback revoke select on country_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAE
grant select on county_00000 to nwis_ws_user;
--rollback revoke select on county_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAF
grant select on organization_00000 to nwis_ws_user;
--rollback revoke select on organization_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAG
grant select on samplemedia_00000 to nwis_ws_user;
--rollback revoke select on samplemedia_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAH
grant select on sitetype_00000 to nwis_ws_user;
--rollback revoke select on sitetype_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAI
grant select on state_00000 to nwis_ws_user;
--rollback revoke select on state_00000 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAJ
grant select on us_counties_dis_20121015 to nwis_ws_user;
--rollback revoke select on us_counties_dis_20121015 from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAK
grant select on huc8_conus_hi_ak_pr_dis to nwis_ws_user;
--rollback revoke select on huc8_conus_hi_ak_pr_dis from nwis_ws_user;

--changeset drsteini:1SchemaGrantsAL
grant select on states to nwis_ws_user;
--rollback revoke select on states from nwis_ws_user;
