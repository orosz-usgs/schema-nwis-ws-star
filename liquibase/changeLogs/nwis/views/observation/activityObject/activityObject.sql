create or replace view ${OBSERVATION_SCHEMA_NAME}.activity_object as
select *
  from ${WQP_SCHEMA_NAME}.activity_object
 where data_source_id = 2
