create or replace view ${OBSERVATION_SCHEMA_NAME}.project_data as
select *
  from ${WQP_SCHEMA_NAME}.project_data
 where data_source_id = 2
