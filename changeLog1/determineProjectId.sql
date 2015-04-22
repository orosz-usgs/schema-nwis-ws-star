create or replace
	function determine_project_id2(p_site_no           in nawqa_sites.site_no%type,
                                  p_50280_value       in qw_result.result_unrnd_va%type,
                                  p_71999_value       in qw_result.result_unrnd_va%type,
                                  p_71999_text        in fxd.fxd_nm%type,
                                  p_sample_start_date in qw_sample.sample_start_dt%type,
                                  p_project_cd        in qw_sample.project_cd%type)
		return varchar2
 	is
 		rtn varchar2(4000 char);
        scrubbed_project_cd qw_sample.project_cd%type;
        scrubbed_71999_text fxd.fxd_nm%type;
    begin
	    if lower(substr(p_project_cd, 1, 5)) = 'nawqa' or
           lower(substr(p_project_cd, 1, 6)) = 'nasqan' then
          scrubbed_project_cd := null;
        else
          scrubbed_project_cd := p_project_cd;
        end if;
        
        if p_site_no is not null then
          if p_sample_start_date < to_date('2001-10-01', 'yyyy-mm-dd') then
            if p_71999_value = 15 or
               p_50280_value is not null then
              rtn := 'NAWQA';
            end if;
          else
            if p_71999_value = 15 or
               p_71999_value = 20 or
               p_71999_value = 25 or 
               (p_71999_value is null and
                p_50280_value is not null) then
--              rtn := nvl(p_71999_text, 'NAWQA');
                rtn := 'NAWQA';
            end if;
          end if;
        end if;
        
        if rtn is null then
          rtn := coalesce(scrubbed_project_cd, 'USGS');
        end if; 
        
	    return rtn;
	end determine_project_id;
