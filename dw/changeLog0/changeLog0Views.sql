--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaViewsAA
create or replace force view nwis_lctn_loc_comp_vw
(organization_id
,organization_name
)
as
select ndon.organization_id,
       ndon.organization_name
  from nwis_di_org_new ndon
minus
select uo.organization_id,
       uo.organization_name
  from usgs_organizations uo;
--rollback drop view nwis_lctn_loc_comp_vw;

--changeset drsteini:0SchemaViewsAB
create or replace force view nwis_lctn_loc_vw
(country_cd
,state_fips
,organization_id
,organization_name
)
as
select country_cd,
       state_fips,
       organization_id,
       organization_name
  from nwis_lctn_loc_new;
--rollback drop view nwis_lctn_loc_vw;
