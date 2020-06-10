create or replace view ${OBSERVATION_SCHEMA_NAME}.taxa_name as
select *
  from ${WQP_SCHEMA_NAME}.taxa_name
 where data_source_id = 2
