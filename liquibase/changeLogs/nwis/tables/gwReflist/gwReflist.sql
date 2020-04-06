create table if not exists ${NWIS_SCHEMA_NAME}.gw_reflist
(gw_ed_tbl_nm                            character varying (24)
,gw_ref_cd                               character varying (128)
,gw_ref_nm                               character varying(16)
,gw_sort_nu                              integer
,gw_ref_ds                               character varying(255)
,gw_valid_fg                             character varying(1)
,primary key (gw_ed_tbl_nm, gw_ref_cd)
) with (fillfactor = 100);
