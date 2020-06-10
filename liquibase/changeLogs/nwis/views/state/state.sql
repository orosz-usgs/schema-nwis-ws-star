create or replace view ${OBSERVATION_SCHEMA_NAME}.state as
select *
  from ${WQP_SCHEMA_NAME}.state
 where data_source_id = 2
