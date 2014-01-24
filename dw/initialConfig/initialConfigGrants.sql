--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaGrantsAA
grant select on fa_station_00000 to nwis_ws_user;
--rollback revoke select on fa_station_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAB
grant select on fa_regular_result_00000 to nwis_ws_user;
--rollback revoke select on fa_regular_result_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAC
grant select on series_catalog_00000 to nwis_ws_user;
--rollback revoke select on series_catalog_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAD
grant select on qwportal_summary_00000 to nwis_ws_user;
--rollback revoke select on qwportal_summary_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAE
grant select on nwis_station_sum_00000 to nwis_ws_user;
--rollback revoke select on nwis_station_sum_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAF
grant select on nwis_result_sum_00000 to nwis_ws_user;
--rollback revoke select on nwis_result_sum_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAG
grant select on nwis_result_ct_sum_00000 to nwis_ws_user;
--rollback revoke select on nwis_result_ct_sum_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAH
grant select on nwis_result_nr_sum_00000 to nwis_ws_user;
--rollback revoke select on nwis_result_nr_sum_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAI
grant select on nwis_lctn_loc_00000 to nwis_ws_user;
--rollback revoke select on nwis_lctn_loc_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAJ
grant select on nwis_di_org_00000 to nwis_ws_user;
--rollback revoke select on nwis_di_org_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAK
grant execute on pkg_dynamic_list to nwis_ws_user;
--rollback revoke execute on pkg_dynamic_list from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAL
grant execute on typ_vctbl to nwis_ws_user;
--rollback revoke execute on typ_vctbl from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAM
grant select on characteristicname_00000 to nwis_ws_user;
--rollback revoke select on characteristicname_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAN
grant select on characteristictype_00000 to nwis_ws_user;
--rollback revoke select on characteristictype_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAO
grant select on country_00000 to nwis_ws_user;
--rollback revoke select on country_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAP
grant select on county_00000 to nwis_ws_user;
--rollback revoke select on county_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAQ
grant select on organization_00000 to nwis_ws_user;
--rollback revoke select on organization_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAR
grant select on samplemedia_00000 to nwis_ws_user;
--rollback revoke select on samplemedia_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAS
grant select on sitetype_00000 to nwis_ws_user;
--rollback revoke select on sitetype_00000 from nwis_ws_user;

--changeset drsteini:0SchemaGrantsAT
grant select on state_00000 to nwis_ws_user;
--rollback revoke select on state_00000 from nwis_ws_user;
