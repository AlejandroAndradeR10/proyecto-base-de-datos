create or replace procedure Finalizar_proyecto(
p_id_proyectos in proyectos.ID_proyectos%type,
P_mensaje out varchar2
)as
BEGIN 
p_mensaje:='Proceso ejecutado con exito proyecto finalizado';
update proyectos set estado_proyecto='finalizado',fecha_finalizacion='01/01/2021' where ID_proyectos=p_id_proyectos 
update sede_vs_proyectos set estado_proyecto='finalizado' where ID_proyectos=p_id_proyectos 
EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';

end aprobar_proyectos;
/

SET serveroutput ON
declare
v_id_proyectos number(15):=1;
v_mensaje varchar2(50);
BEGIN
Finalizar_proyecto(v_id_proyectos,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/
