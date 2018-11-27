create unlogged table if not exists ${NWIS_WS_STAR_SCHEMA_NAME}.proto_org
(proto_org_cd                   character varying (8)    primary key
,proto_org_nm                   character varying (59)
,proto_org_fv_cd                character varying (5)
,proto_org_vld_fg               boolean
,proto_org_init_nm              character varying (8)
,proto_org_init_dt              date
,proto_org_rev_nm               character varying (8)
,proto_org_rev_dt               date
) with (fillfactor = 100);
