create or replace view ${NWIS_SCHEMA_NAME}.full_state (state_code, state_name) as
select country_cd || ':' || state_cd,
       state_nm
  from ${NWIS_SCHEMA_NAME}.state;
