create or replace package etl_helper as

    function determine_project_id(p_site_no           in nawqa_sites.site_no%type,
                                  p_50280_value       in qw_result.result_unrnd_va%type,
                                  p_71999_value       in qw_result.result_unrnd_va%type,
                                  p_sample_start_date in qw_sample.sample_start_dt%type,
                                  p_project_cd        in qw_sample.project_cd%type)
        return varchar2;

end etl_helper;
