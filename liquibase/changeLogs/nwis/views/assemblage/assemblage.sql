create or replace view ${OBSERVATION_SCHEMA_NAME}.assemblage as
select *
  from ${WQP_SCHEMA_NAME}.assemblage
 where data_source_id = 2
