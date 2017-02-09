--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:grant_select_on_altitude_datum_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'altitude_datum' and grantee = 'WQP_CORE'
grant select on altitude_datum to wqp_core;
--rollback revoke select on altitude_datum from wqp_core;

--changeset drsteini:grant_select_on_altitude_method_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'altitude_method' and grantee = 'WQP_CORE'
grant select on altitude_method to wqp_core;
--rollback revoke select on altitude_method from wqp_core;

--changeset drsteini:grant_select_on_aqfr_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'aqfr' and grantee = 'WQP_CORE'
grant select on aqfr to wqp_core;
--rollback revoke select on aqfr from wqp_core;

--changeset drsteini:grant_select_on_aquifer_type_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'aquifer_type' and grantee = 'WQP_CORE'
grant select on aquifer_type to wqp_core;
--rollback revoke select on aquifer_type from wqp_core;

--changeset drsteini:grant_select_on_cit_meth_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'cit_meth' and grantee = 'WQP_CORE'
grant select on cit_meth to wqp_core;
--rollback revoke select on cit_meth from wqp_core;

--changeset drsteini:grant_select_on_lat_long_accuracy_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'lat_long_accuracy' and grantee = 'WQP_CORE'
grant select on lat_long_accuracy to wqp_core;
--rollback revoke select on lat_long_accuracy from wqp_core;

--changeset drsteini:grant_select_on_lat_long_datum_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'lat_long_datum' and grantee = 'WQP_CORE'
grant select on lat_long_datum to wqp_core;
--rollback revoke select on lat_long_datum from wqp_core;

--changeset drsteini:grant_select_on_lat_long_method_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'lat_long_method' and grantee = 'WQP_CORE'
grant select on lat_long_method to wqp_core;
--rollback revoke select on lat_long_method from wqp_core;

--changeset drsteini:grant_select_on_nat_aqfr_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'nat_aqfr' and grantee = 'WQP_CORE'
grant select on nat_aqfr to wqp_core;
--rollback revoke select on nat_aqfr from wqp_core;

--changeset drsteini:grant_select_on_parm_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'parm' and grantee = 'WQP_CORE'
grant select on parm to wqp_core;
--rollback revoke select on parm from wqp_core;

--changeset drsteini:grant_select_on_parm_alias_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'parm_alias' and grantee = 'WQP_CORE'
grant select on parm_alias to wqp_core;
--rollback revoke select on parm_alias from wqp_core;

--changeset drsteini:grant_select_on_parm_meth_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'parm_meth' and grantee = 'WQP_CORE'
grant select on parm_meth to wqp_core;
--rollback revoke select on parm_meth from wqp_core;

--changeset drsteini:grant_select_on_val_qual_cd_to_wqp_core runAlways:true
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(*) from user_tab_privs where table_name = 'val_qual_cd' and grantee = 'WQP_CORE'
grant select on val_qual_cd to wqp_core;
--rollback revoke select on val_qual_cd from wqp_core;
