create or replace function truncate_table(table_name character varying)
returns void
language plpgsql
as $$

begin
	execute format('truncate table %I', table_name);
end
$$