create or replace function ${NWIS_SCHEMA_NAME}.determine_project_id
     (p_site_no           in ${NWIS_SCHEMA_NAME}.nawqa_sites.site_no%type,
      p_50280_value       in ${NWIS_SCHEMA_NAME}.qw_result.result_unrnd_va%type,
      p_71999_value       in ${NWIS_SCHEMA_NAME}.qw_result.result_unrnd_va%type,
      p_sample_start_date in ${NWIS_SCHEMA_NAME}.qw_sample.sample_start_dt%type,
      p_project_cd        in ${NWIS_SCHEMA_NAME}.qw_sample.project_cd%type)
        returns text
      as $$

    declare
        nawqa text := 'National Water Quality Assessment Program (NAWQA)';
        rtn text;
    begin
        rtn := null;

        if p_site_no is not null then
            --Only sites in the nawqa_sites file are eligible
            if p_sample_start_date >= to_date('2001-10-01', 'yyyy-mm-dd') then
                if p_71999_value = 20 then
                    rtn := nawqa;
                else
                    if p_71999_value = 25 then
                        rtn := nawqa;
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

        return rtn;
    end;
    $$ language plpgsql;