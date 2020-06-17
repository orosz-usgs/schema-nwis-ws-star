create or replace view ${OBSERVATION_SCHEMA_NAME}.ml_grouping as
select *
  from ${WQP_SCHEMA_NAME}.ml_grouping
 where data_source_id = 2
