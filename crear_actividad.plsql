CREATE SEQUENCE secuencia_actividad
start with 1
increment by 1
maxvalue 99999
minvalue 1;

create or replace procedure crear_actividad (
P_Id_proyectos          in actividades.id_proyectos%type,
P_nombre_actividad      in actividades.nombre_actividad%type,
P_duracion_actividad    in actividades.duracion_actividad%type,
P_fecha_actividad       in actividades.fecha_actividad%type,
P_mensaje out varchar2
)
as

BEGIN 
p_mensaje:='se ha creado el registro...';
insert into actividades(Id_actividades,id_proyectos,nombre_actividad,duracion_actividad,fecha_actividad)
values(secuencia_actividad.nextval,P_Id_proyectos,P_nombre_actividad,P_duracion_actividad,P_fecha_actividad);

EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
End crear_actividad;
/

SET serveroutput ON
declare
v_id_proyectos  number(15):=1;
v_duracion_actividad  number(15):=8;
v_fecha_actividad date:='15/05/2020';
v_nombre_actividad varchar2(25):='Limpieza playa';
v_mensaje varchar2(50);
begin 
crear_actividad(v_id_proyectos,v_nombre_actividad,v_duracion_actividad,v_fecha_actividad,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/

SET serveroutput ON
declare
v_id_proyectos  number(15):=1;
v_duracion_actividad number(15):=12;
v_fecha_actividad date:='15/06/2020';
v_nombre_actividad varchar2(25):='recoleccion de basura';
v_mensaje varchar2(50);
begin 
crear_actividad(v_id_proyectos,v_nombre_actividad,v_duracion_actividad,v_fecha_actividad,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/
SET serveroutput ON
declare
v_id_proyectos  number(15):=1;
v_duracion_actividad number(15):=6;
v_fecha_actividad date:='15/07/2020';
v_nombre_actividad varchar2(25):='pintando hogares';
v_mensaje varchar2(50);
begin 
crear_actividad(v_id_proyectos,v_nombre_actividad,v_duracion_actividad,v_fecha_actividad,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/ 

SET serveroutput ON
declare
v_id_proyectos  number(15):=1;
v_duracion_actividad number(15):=10; 
v_fecha_actividad date:='15/08/2020';
v_nombre_actividad varchar2(25):='Reciclando';
v_mensaje varchar2(50);
begin 
crear_actividad(v_id_proyectos,v_nombre_actividad,v_duracion_actividad,v_fecha_actividad,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/


SET serveroutput ON
declare
v_id_proyectos  number(15):=1;
v_duracion_actividad number(15):=6;
v_fecha_actividad date:='15/09/2020';
v_nombre_actividad varchar2(25):='Techo hogar';
v_mensaje varchar2(50);
begin 
crear_actividad(v_id_proyectos,v_nombre_actividad,v_duracion_actividad,v_fecha_actividad,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/