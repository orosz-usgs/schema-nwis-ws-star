--liquibase formatted sql

--This is for the nwis_ws_star schema
 
--changeset drsteini:0SchemaFuncProcPackAA endDelimiter:/ splitStatements:false
create or replace package pkg_dynamic_list as
	function get_table (p_char in typ_vctbl)
    	return typ_vctbl pipelined;
end pkg_dynamic_list;
--rollback drop package pkg_dynamic_list;

--changeset drsteini:0SchemaFuncProcPackAB endDelimiter:/ splitStatements:false
create or replace package body pkg_dynamic_list as
	function get_table (p_char in typ_vctbl)
    	return typ_vctbl pipelined is
		begin
        	for i in 1..p_char.count loop
				pipe row (p_char (i));
			end loop;

			return;
	end get_table;
end pkg_dynamic_list;
--rollback drop package body pkg_dynamic_list;