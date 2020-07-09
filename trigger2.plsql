create or replace trigger T_usuario_Proyecto AFTER UPDATE ON integrante_proyecto for each row 
declare

BEGIN
 dbms_output.put_line('se ha ejecutado el trigger T_sucursales con exito');

update usuario 
set cantidad_horas_completadas= cantidad_horas_completadas+:new.horas_proyecto 
where Id_usuario=:new.Id_usuario;
end T_usuario_Proyecto;