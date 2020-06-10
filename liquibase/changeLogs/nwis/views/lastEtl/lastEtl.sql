create or replace view ${OBSERVATION_SCHEMA_NAME}.last_etl as
select *
  from ${WQP_SCHEMA_NAME}.last_etl
