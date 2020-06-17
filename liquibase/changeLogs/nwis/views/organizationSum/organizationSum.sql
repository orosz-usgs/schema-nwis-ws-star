create or replace view ${OBSERVATION_SCHEMA_NAME}.organization_sum as
select *
  from ${WQP_SCHEMA_NAME}.organization_sum
 where data_source_id = 2
