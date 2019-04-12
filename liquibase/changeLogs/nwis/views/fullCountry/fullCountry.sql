create or replace view ${NWIS_SCHEMA_NAME}.full_country (country_code, country_name) as
select country_cd,
       country_nm
  from ${NWIS_SCHEMA_NAME}.country;
