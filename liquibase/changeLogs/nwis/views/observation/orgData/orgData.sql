create or replace view ${OBSERVATION_SCHEMA_NAME}.org_data as
select *
  from ${WQP_SCHEMA_NAME}.org_data
 where data_source_id = 2
