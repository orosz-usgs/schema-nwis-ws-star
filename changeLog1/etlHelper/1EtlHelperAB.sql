create or replace package body etl_helper as
	
	nawqa	varchar2(4000 char) := 'National Water Quality Assessment (NAWQA) Program';
	nasqan	varchar2(4000 char) := 'National Stream Quality Accounting Network (NASQAN)';
	nmn		varchar2(4000 char) := 'National Monitoring Network (NMN)';
	
	function determine_project_id(p_site_no           in nawqa_sites.site_no%type,
                                  p_50280_value       in qw_result.result_unrnd_va%type,
                                  p_71999_value       in qw_result.result_unrnd_va%type,
                                  p_sample_start_date in qw_sample.sample_start_dt%type,
                                  p_project_cd        in qw_sample.project_cd%type)
		return varchar2
 	is
 		rtn varchar2(4000 char);
    begin
	    rtn := p_project_cd;
	    
	    if p_site_no is not null then
	    	--Only sites in the nawqa_sites file are eligible 
			if p_sample_start_date >= to_date('2001-10-01', 'yyyy-mm-dd') then
				if p_71999_value = 20 then
					rtn := nasqan;
				else
					if p_71999_value = 25 then
						rtn := nmn;
					else
						if p_71999_value = 15 or
		                   (p_71999_value is null and
	                        p_50280_value is not null) then
	                    	rtn := nawqa;
	                    end if;
	                end if;
	            end if;
			else
	       		if p_71999_value = 15 or
	               p_50280_value is not null then
	            	rtn := nawqa;
	            end if;
	        end if;
	    end if;
        
        if rtn is null then
        	--Default project code to USGS is it is null at this point.
        	rtn := 'USGS';
        end if; 
        
	    return rtn;
	end determine_project_id;

end etl_helper;