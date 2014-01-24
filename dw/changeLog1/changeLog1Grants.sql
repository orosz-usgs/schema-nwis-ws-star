--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1SchemaGrantsAA
grant select on fa_regular_result_00000 to wqp_user;
--rollback revoke select on fa_regular_result_00000 from wqp_user;

--changeset drsteini:1SchemaGrantsAB
grant select on country_00000 to ars_stewards;
--rollback revoke select on country_00000 from ars_stewards;

--changeset drsteini:1SchemaGrantsAC
grant select on county_00000 to ars_stewards;
--rollback revoke select on county_00000 from ars_stewards;

--changeset drsteini:1SchemaGrantsAD
grant select on state_00000 to ars_stewards;
--rollback revoke select on state_00000 from ars_stewards;
