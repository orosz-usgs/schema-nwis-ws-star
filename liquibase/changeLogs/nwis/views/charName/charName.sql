create or replace view ${OBSERVATION_SCHEMA_NAME}.char_name as
select *
  from ${WQP_SCHEMA_NAME}.char_name
 where data_source_id = 2
