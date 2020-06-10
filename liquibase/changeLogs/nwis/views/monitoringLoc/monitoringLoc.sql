create or replace view ${OBSERVATION_SCHEMA_NAME}.monitoring_loc as
select *
  from ${WQP_SCHEMA_NAME}.monitoring_loc
 where data_source_id = 2
