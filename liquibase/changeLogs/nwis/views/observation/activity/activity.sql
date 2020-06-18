create or replace view ${OBSERVATION_SCHEMA_NAME}.activity as
select *
  from ${WQP_SCHEMA_NAME}.activity
 where data_source_id = 2
