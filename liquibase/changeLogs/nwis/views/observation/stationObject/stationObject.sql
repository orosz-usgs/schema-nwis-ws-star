create or replace view ${OBSERVATION_SCHEMA_NAME}.station_object as
select *
  from ${WQP_SCHEMA_NAME}.station_object
 where data_source_id = 2
