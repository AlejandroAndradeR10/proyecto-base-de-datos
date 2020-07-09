create or replace trigger T_sede_proyecto AFTER insert ON proyectos for each row 
declare

BEGIN
 dbms_output.put_line('se ha ejecutado el trigger T_usuario_normal con exito');
insert into sede_vs_proyectos(ID_sede,ID_proyectos,estado_proyecto)
values (:new.ID_sede,:new.ID_proyectos,:new.estado_proyecto);
end T_sede_proyecto;