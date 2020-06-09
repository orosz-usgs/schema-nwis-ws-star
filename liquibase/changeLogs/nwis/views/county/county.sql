create or replace view ${OBSERVATION_SCHEMA_NAME}.county as
select *
  from ${WQP_SCHEMA_NAME}.county
 where data_source_id = 2
