create or replace view ${OBSERVATION_SCHEMA_NAME}.r_detect_qnt_lmt as
select *
  from ${WQP_SCHEMA_NAME}.r_detect_qnt_lmt
 where data_source_id = 2
