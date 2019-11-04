create or replace view ${NWIS_SCHEMA_NAME}.full_county (county_code, county_name) as
select coalesce(country_cd, '') || ':' || coalesce(state_cd, '') || ':' || coalesce(county_cd, ''),
       county_nm
  from ${NWIS_SCHEMA_NAME}.county;
