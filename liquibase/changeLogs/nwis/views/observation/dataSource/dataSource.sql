create or replace view ${OBSERVATION_SCHEMA_NAME}.data_source as
select *
  from ${WQP_SCHEMA_NAME}.data_source
 where data_source_id = 2
