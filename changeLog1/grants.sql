--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:1GrantsAA
grant select on aqfr to wqp_core;
--rollback revoke select on aqfr from wqp_core;

--changeset drsteini:1GrantsAB
grant select on body_part to wqp_core;
--rollback revoke select on body_part from wqp_core;

--changeset drsteini:1GrantsAC
grant select on country to wqp_core;
--rollback revoke select on country from wqp_core;

--changeset drsteini:1GrantsAD
grant select on county to wqp_core;
--rollback revoke select on county from wqp_core;

--changeset drsteini:1GrantsAE
grant select on fxd to wqp_core;
--rollback revoke select on fxd from wqp_core;

--changeset drsteini:1GrantsAF
grant select on hyd_cond_cd to wqp_core;
--rollback revoke select on hyd_cond_cd from wqp_core;

--changeset drsteini:1GrantsAG
grant select on hyd_event_cd to wqp_core;
--rollback revoke select on hyd_event_cd from wqp_core;

--changeset drsteini:1GrantsAH
grant select on lu_parm to wqp_core;
--rollback revoke select on lu_parm from wqp_core;

--changeset drsteini:1GrantsAI
grant select on lu_parm_alias to wqp_core;
--rollback revoke select on lu_parm_alias from wqp_core;

--changeset drsteini:1GrantsAJ
grant select on lu_parm_meth to wqp_core;
--rollback revoke select on lu_parm_meth from wqp_core;

--changeset drsteini:1GrantsAK
grant select on lu_parm_seq_grp_cd to wqp_core;
--rollback revoke select on lu_parm_seq_grp_cd from wqp_core;

--changeset drsteini:1GrantsAL
grant select on lu_tz to wqp_core;
--rollback revoke select on lu_tz from wqp_core;

--changeset drsteini:1GrantsAM
grant select on meth to wqp_core;
--rollback revoke select on meth from wqp_core;

--changeset drsteini:1GrantsAN
grant select on nat_aqfr to wqp_core;
--rollback revoke select on nat_aqfr from wqp_core;

--changeset drsteini:1GrantsAO
grant select on nwis_district_cds_by_host to wqp_core;
--rollback revoke select on nwis_district_cds_by_host from wqp_core;

--changeset drsteini:1GrantsAP
grant select on nwis_misc_lookups to wqp_core;
--rollback revoke select on nwis_misc_lookups from wqp_core;

--changeset drsteini:1GrantsAQ
grant select on nwis_wqx_medium_cd to wqp_core;
--rollback revoke select on nwis_wqx_medium_cd from wqp_core;

--changeset drsteini:1GrantsAR
grant select on nwis_wqx_rpt_lev_cd to wqp_core;
--rollback revoke select on nwis_wqx_rpt_lev_cd from wqp_core;

--changeset drsteini:1GrantsAS
grant select on proto_org to wqp_core;
--rollback revoke select on proto_org from wqp_core;

--changeset drsteini:1GrantsAT
grant select on qw_result to wqp_core;
--rollback revoke select on qw_result from wqp_core;

--changeset drsteini:1GrantsAU
grant select on qw_sample to wqp_core;
--rollback revoke select on qw_sample from wqp_core;

--changeset drsteini:1GrantsAV
grant select on sitefile to wqp_core;
--rollback revoke select on sitefile from wqp_core;

--changeset drsteini:1GrantsAW
grant select on site_tp to wqp_core;
--rollback revoke select on site_tp from wqp_core;

--changeset drsteini:1GrantsAX
grant select on state to wqp_core;
--rollback revoke select on state from wqp_core;

--changeset drsteini:1GrantsAY
grant select on state_fips to wqp_core;
--rollback revoke select on state_fips from wqp_core;

--changeset drsteini:1GrantsAZ
grant select on temp_series_catalog to wqp_core;
--rollback revoke select on temp_series_catalog from wqp_core;

--changeset drsteini:1GrantsBA
grant select on tu to wqp_core;
--rollback revoke select on tu from wqp_core;

--changeset drsteini:1GrantsBB
grant select on val_qual_cd to wqp_core;
--rollback revoke select on val_qual_cd from wqp_core;

--changeset drsteini:1GrantsBC
grant select on wqp_nemi_nwis_crosswalk to wqp_core;
--rollback revoke select on wqp_nemi_nwis_crosswalk from wqp_core;

--changeset drsteini:1GrantsBD
grant select on z_cit_meth to wqp_core;
--rollback revoke select on z_cit_meth from wqp_core;

--changeset drsteini:1GrantsBE
grant select on nawqa_sites to wqp_core;
--rollback revoke select on nawqa_sites from wqp_core;

--changeset drsteini:1GrantsBF
grant select on z_parm_meth to wqp_core;
--rollback revoke select on z_parm_meth from wqp_core;

--changeset drsteini:1GrantsBG
grant select on parm to wqp_core;
--rollback revoke select on parm from wqp_core;

--changeset drsteini:1GrantsBH
grant select on meth_with_cit to wqp_core;
--rollback revoke select on meth_with_cit from wqp_core;

--changeset drsteini:1GrantsBI
grant select on sample_parameter to wqp_core;
--rollback revoke select on sample_parameter from wqp_core;
