create or replace view ${OBSERVATION_SCHEMA_NAME}.site_type as
select *
  from ${WQP_SCHEMA_NAME}.site_type
 where data_source_id = 2
