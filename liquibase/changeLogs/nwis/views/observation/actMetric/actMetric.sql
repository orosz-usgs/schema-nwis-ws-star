create or replace view ${OBSERVATION_SCHEMA_NAME}.act_metric as
select *
  from ${WQP_SCHEMA_NAME}.act_metric
 where data_source_id = 2
