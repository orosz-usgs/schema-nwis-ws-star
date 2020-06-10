create or replace view ${OBSERVATION_SCHEMA_NAME}.country as
select *
  from ${WQP_SCHEMA_NAME}.country
 where data_source_id = 2
