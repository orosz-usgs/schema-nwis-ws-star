--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1SchemaSynonymsAA
create or replace synonym public_srsnames for public_srsnames_00000;
--rollback drop synonym public_srsnames;

--changeset drsteini:1SchemaSynonymsAB
create or replace synonym characteristicname for characteristicname_00000;
--rollback drop synonym characteristicname;

--changeset drsteini:1SchemaSynonymsAC
create or replace synonym characteristictype for characteristictype_00000;
--rollback drop synonym characteristictype;

--changeset drsteini:1SchemaSynonymsAD
create or replace synonym country for country_00000;
--rollback drop synonym country;

--changeset drsteini:1SchemaSynonymsAE
create or replace synonym county for county_00000;
--rollback drop synonym county;

--changeset drsteini:1SchemaSynonymsAF
create or replace synonym organization for organization_00000;
--rollback drop synonym organization;

--changeset drsteini:1SchemaSynonymsAG
create or replace synonym samplemedia for samplemedia_00000;
--rollback drop synonym samplemedia;

--changeset drsteini:1SchemaSynonymsAH
create or replace synonym sitetype for sitetype_00000;
--rollback drop synonym sitetype;

--changeset drsteini:1SchemaSynonymsAI
create or replace synonym state for state_00000;
--rollback drop synonym state;

--changeset drsteini:1SchemaSynonymsAJ
create or replace synonym us_counties_dis for us_counties_dis_20121015;
--rollback drop synonym us_counties_dis;
