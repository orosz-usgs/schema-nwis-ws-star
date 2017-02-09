--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:grant_select_on_altitude_datum_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'ALTITUDE_DATUM' and grantee = 'WQP_CORE'
grant select on altitude_datum to wqp_core;
--rollback revoke select on altitude_datum from wqp_core;

--changeset drsteini:grant_select_on_altitude_method_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'ALTITUDE_METHOD' and grantee = 'WQP_CORE'
grant select on altitude_method to wqp_core;
--rollback revoke select on altitude_method from wqp_core;

--changeset drsteini:grant_select_on_aqfr_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'AQFR' and grantee = 'WQP_CORE'
grant select on aqfr to wqp_core;
--rollback revoke select on aqfr from wqp_core;

--changeset drsteini:grant_select_on_aquifer_type_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'AQUIFER_TYPE' and grantee = 'WQP_CORE'
grant select on aquifer_type to wqp_core;
--rollback revoke select on aquifer_type from wqp_core;

--changeset drsteini:grant_select_on_cit_meth_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'CIT_METH' and grantee = 'WQP_CORE'
grant select on cit_meth to wqp_core;
--rollback revoke select on cit_meth from wqp_core;

--changeset drsteini:grant_select_on_lat_long_accuracy_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'LAT_LONG_ACCURACY' and grantee = 'WQP_CORE'
grant select on lat_long_accuracy to wqp_core;
--rollback revoke select on lat_long_accuracy from wqp_core;

--changeset drsteini:grant_select_on_lat_long_datum_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'LAT_LONG_DATUM' and grantee = 'WQP_CORE'
grant select on lat_long_datum to wqp_core;
--rollback revoke select on lat_long_datum from wqp_core;

--changeset drsteini:grant_select_on_lat_long_method_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'LAT_LONG_METHOD' and grantee = 'WQP_CORE'
grant select on lat_long_method to wqp_core;
--rollback revoke select on lat_long_method from wqp_core;

--changeset drsteini:grant_select_on_nat_aqfr_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'NAT_AQFR' and grantee = 'WQP_CORE'
grant select on nat_aqfr to wqp_core;
--rollback revoke select on nat_aqfr from wqp_core;

--changeset drsteini:grant_select_on_parm_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'PARM' and grantee = 'WQP_CORE'
grant select on parm to wqp_core;
--rollback revoke select on parm from wqp_core;

--changeset drsteini:grant_select_on_parm_alias_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'PARM_ALIAS' and grantee = 'WQP_CORE'
grant select on parm_alias to wqp_core;
--rollback revoke select on parm_alias from wqp_core;

--changeset drsteini:grant_select_on_parm_meth_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'PARM_METH' and grantee = 'WQP_CORE'
grant select on parm_meth to wqp_core;
--rollback revoke select on parm_meth from wqp_core;

--changeset drsteini:grant_select_on_val_qual_cd_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'VAL_QUAL_CD' and grantee = 'WQP_CORE'
grant select on val_qual_cd to wqp_core;
--rollback revoke select on val_qual_cd from wqp_core;
