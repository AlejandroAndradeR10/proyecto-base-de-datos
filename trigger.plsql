create or replace trigger T_usuario_normal AFTER insert or update ON participa_de for each row 
declare

BEGIN
 dbms_output.put_line('se ha ejecutado el trigger T_usuario_normal con exito');
update usuario set cantidad_horas_completadas = cantidad_horas_completadas+:new.horas_participadas where Id_usuario=:new.Id_usuario ;

end T_usuario_normal;