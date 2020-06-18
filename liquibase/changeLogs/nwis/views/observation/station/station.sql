create or replace view ${OBSERVATION_SCHEMA_NAME}.station as
select *
  from ${WQP_SCHEMA_NAME}.station
 where data_source_id = 2
