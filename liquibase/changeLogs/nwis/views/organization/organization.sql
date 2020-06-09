create or replace view ${OBSERVATION_SCHEMA_NAME}.organization as
select *
  from ${WQP_SCHEMA_NAME}.organization
 where data_source_id = 2
