-- this proedure creates synonyms for all grants received.
declare 
	s_command varchar2(500);  
	s_grantor varchar2(500);
begin

	-- TODO: use query below to get owner name
	Begin
		SELECT Concat(substr(USER, 1, instr(USER, '_')), 'OWNER')
		INTO s_grantor
		FROM DUAL;
	Exception
	when no_data_found then
		s_grantor := 'DEV1_OWNER';
	End;

	-- drop all synonyms
	for i in (select synonym_name from user_synonyms)
	loop 
	  s_command := 'drop synonym ' ||  i.synonym_name; 
	  dbms_output.put_line( s_command ); 
	  execute immediate  s_command    ; 
	end loop ;     

	 --synonyms for all tables (avoid table partitions [subobject_name is null])
	for i in (   select object_name,owner   from all_objects where owner =s_grantor and subobject_name is null     )                    
	loop 
	  s_command := ' create  or replace synonym    ' ||  i.object_name  || ' for ' ||  i.owner ||  '.'  || i.object_name ; 
	  dbms_output.put_line( s_command ); 
	  execute immediate  s_command    ; 
	end loop ;     
end    ;
/
