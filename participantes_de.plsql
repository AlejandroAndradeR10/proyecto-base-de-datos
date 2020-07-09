create or replace procedure inser_participantes(
p_id_actividades participa_de.id_actividades%type,
p_id_usuario     participa_de.id_usuario%type,
p_id_proyectos   participa_de.id_proyecto%type,
p_horas_participadas participa_de.horas_participadas%type;
P_mensaje         out varchar2
as)
begin 
p_mensaje:='Proceso ejecutado con exito';

insert into participa_de(id_actividades,
                         id_usuario,
                         id_proyecto,
                         horas_participadas)
                  values(p_id_actividades,
                         p_id_usuario,
                         p_id_proyectos,
                         p_horas_participadas);
                         
EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
end inser_tipo_usuario;
/

SET serveroutput ON
declare
v_id_actividades number(15):=1;
v_id_usuario number(15):=1;
v_id_proyectos number(15):=1;
v_horas_participadas number(15):=8;
v_mensaje varchar2(50);
begin 
inser_tipo_usuario(v_id_actividades,v_id_usuario,v_id_proyectos,v_mensaje)
DBMS_output.put_line(v_mensaje);
end;
/