--liquibase formatted sql

--This is for the nwis_ws_star schema

--changeset drsteini:1EtlHelperAA endDelimiter:/ splitStatements:false
create or replace package etl_helper as

	function determine_project_id(p_site_no           in nawqa_sites.site_no%type,
                                  p_50280_value       in qw_result.result_unrnd_va%type,
                                  p_71999_value       in qw_result.result_unrnd_va%type,
                                  p_sample_start_date in qw_sample.sample_start_dt%type,
                                  p_project_cd        in qw_sample.project_cd%type)
		return varchar2;

end etl_helper;
--rollback drop package etl_helper;

--changeset drsteini:1EtlHelperAB endDelimiter:/ splitStatements:false
create or replace package body etl_helper as
	
	nawqa	varchar2(4000 char) := 'National Water Quality Assessment Program';
	nasqan	varchar2(4000 char) := 'National Stream Quality Accounting Network';
	nmn		varchar2(4000 char) := 'National Monitoring Network';
	
	create or replace function determine_project_id(p_site_no           in nawqa_sites.site_no%type,
                                                    p_50280_value       in qw_result.result_unrnd_va%type,
                                                    p_71999_value       in qw_result.result_unrnd_va%type,
                                                    p_sample_start_date in qw_sample.sample_start_dt%type,
                                                    p_project_cd        in qw_sample.project_cd%type)
		return varchar2
 	is
 		rtn varchar2(4000 char);
    begin
	    rtn := p_project_cd;
	    
		if p_sample_start_date >= to_date('2001-10-01', 'yyyy-mm-dd') then
			if p_71999_value = 20 then
				rtn := nasqan;
			else
				if p_71999_value = 25 then
					rtn := nmn;
				else
					if p_site_no is not null and 
	                   (p_71999_value = 15 or
	                    (p_71999_value is null and
                         p_50280_value is not null)) then
                    	rtn := nawqa;
                    end if;
                end if;
            end if;
		else
       		if p_site_no is not null and
               (p_71999_value = 15 or
                p_50280_value is not null) then
            	rtn := nawqa;
            end if;
        end if;
        
        if rtn is null then
        	rtn := 'USGS';
        end if; 
        
	    return rtn;
	end determine_project_id;

end etl_helper;
--rollback drop package body etl_helper;
