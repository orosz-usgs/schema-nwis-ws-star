create or replace view ${OBSERVATION_SCHEMA_NAME}.sample_media as
select *
  from ${WQP_SCHEMA_NAME}.sample_media
 where data_source_id = 2
