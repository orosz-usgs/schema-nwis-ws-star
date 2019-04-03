create view if not exists ${NWIS_SCHEMA_NAME}.full_county (county_code, county_name) as
select country_cd || ':' || state_cd || ':' || county_cd,
       county_nm
  from ${NWIS_SCHEMA_NAME}.county;
