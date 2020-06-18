create or replace view ${OBSERVATION_SCHEMA_NAME}.project_dim as
select *
  from ${WQP_SCHEMA_NAME}.project_dim
 where data_source_id = 2
