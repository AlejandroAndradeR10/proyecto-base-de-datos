create or replace procedure inser_integrantes(
p_id_usuario        in integrante_proyecto.id_usuario%type,
p_id_proyectos      in integrante_proyecto.id_proyectos%type,
p_id_rol            in integrante_proyecto.id_rol%type,
p_nombre_apellido  in integrante_proyecto.nombre_apellido%type,
P_mensaje         out varchar2
)as
v_horas_proyecto integrante_proyecto.horas_proyecto%type;
begin
p_mensaje:='Proceso ejecutado con exito';
v_horas_proyecto:=0;
insert into integrante_proyecto(id_usuario,
                                id_proyectos,
                                id_rol,
                                nombre_apellido,
                                horas_proyecto)
                          values(p_id_usuario,
                                p_id_proyectos,
                                p_id_rol,
                                p_nombre_apellido,
                                v_horas_proyecto);
EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
end inser_integrantes;
/
SET serveroutput ON
declare
v_id_usuario number(15):=1;
v_id_proyectos number(15):=1;
v_id_rol number(15):=3;
v_nombre_apellido varchar2(25):='Kadir Franksasu';
v_mensaje varchar2(50);
begin
inser_integrantes(v_id_usuario,v_id_proyectos,v_id_rol,v_nombre_apellido,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/
SET serveroutput ON
declare
v_id_usuario number(15):=5;
v_id_proyectos number(15):=1;
v_id_rol number(15):=3;
v_nombre_apellido varchar2(25):='Armenio San';
v_mensaje varchar2(50);
begin
inser_integrantes(v_id_usuario,v_id_proyectos,v_id_rol,v_nombre_apellido,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/