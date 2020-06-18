create or replace view ${OBSERVATION_SCHEMA_NAME}.prj_ml_weighting as
select *
  from ${WQP_SCHEMA_NAME}.prj_ml_weighting
 where data_source_id = 2
