create or replace view ${NWIS_SCHEMA_NAME}.full_state (state_code, state_name) as
select coalesce(country_cd, '') || ':' || coalesce(state_cd, ''),
       state_nm
  from ${NWIS_SCHEMA_NAME}.state;
