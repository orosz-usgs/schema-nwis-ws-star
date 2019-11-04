alter table ${NWIS_SCHEMA_NAME}.sitefile
 drop column if exists lat_va
,drop column if exists long_va
,drop column if exists coord_datum_cd
,drop column if exists map_nm
,drop column if exists topo_cd
,drop column if exists instruments_cd
,drop column if exists inventory_dt
,drop column if exists tz_cd
,drop column if exists local_time_fg
,drop column if exists reliability_cd
,drop column if exists gw_file_cd
,drop column if exists depth_src_cd
,drop column if exists project_no
;