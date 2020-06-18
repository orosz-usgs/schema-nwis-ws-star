create or replace view ${OBSERVATION_SCHEMA_NAME}.project as
select *
  from ${WQP_SCHEMA_NAME}.project
 where data_source_id = 2
