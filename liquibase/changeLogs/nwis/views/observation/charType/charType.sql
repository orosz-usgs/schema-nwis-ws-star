create or replace view ${OBSERVATION_SCHEMA_NAME}.char_type as
select *
  from ${WQP_SCHEMA_NAME}.char_type
 where data_source_id = 2
