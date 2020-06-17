create or replace view ${OBSERVATION_SCHEMA_NAME}.result as
select *
  from ${WQP_SCHEMA_NAME}.result
 where data_source_id = 2
