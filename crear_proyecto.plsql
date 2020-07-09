CREATE SEQUENCE secuencia_proyectos
start with 1
increment by 1
maxvalue 99999
minvalue 1;
/
create or replace procedure crear_proyectos(
p_id_usuario  in proyectos.ID_usuario%type,
p_nombre_proyecto    in proyectos.nombre_proyecto%type,
p_duracion_proyecto  in proyectos.duracion_proyecto%type,
p_descripcion_proyecto in proyectos.descripcion_proyecto%type,
p_prioridad          in proyectos.prioridad%type,
p_fecha_inicio       in proyectos.fecha_inicio%type,
p_costo_proyecto     in proyectos.costo_proyecto%type,
p_horas_proyecto     in proyectos.horas_proyecto%type,
p_id_sede            in proyectos.ID_sede%type,
P_mensaje  out varchar2
)as
v_estado_proyecto proyectos.estado_proyecto%type;
begin
v_estado_proyecto:='Inactivo';
p_mensaje:='Proceso ejecutado con exito';
insert into proyectos(id_proyectos,
                      id_usuario,
                      nombre_proyecto,
                      duracion_proyecto,
                      descripcion_proyecto,
                      prioridad,
                      fecha_inicio,
                      costo_proyecto,
                      estado_proyecto,
                      horas_proyecto,
                      ID_sede
                      )
                values(secuencia_proyectos.nextval,
                        p_id_usuario,
                        p_nombre_proyecto,
                        p_duracion_proyecto,
                        p_descripcion_proyecto,
                        p_prioridad,
                        p_fecha_inicio,
                        p_costo_proyecto,
                        v_estado_proyecto,
                        p_horas_proyecto,
                        p_id_sede
                        );
EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
end crear_proyectos;
/

SET serveroutput ON
declare
v_id_usuario number(15):=4;
v_nombre_proyecto varchar(35):='Limpieza de Playa';
v_duracion_proyecto varchar2(15):='10 semanas'; 
v_descripcion_proyecto VARCHAR2(35):='Limpieza limpiecitas';
v_prioridad varchar(20):='Alta';
v_fecha_inicio date:='16/05/2020';
v_costo_proyecto number(15):=2000;
v_horas_proyecto number(15):=0;
v_id_sede number(15):=1;
v_mensaje varchar2(50);
begin 
crear_proyectos(v_id_usuario,v_nombre_proyecto,v_duracion_proyecto,v_descripcion_proyecto,v_prioridad,v_fecha_inicio,v_costo_proyecto,v_horas_proyecto,v_id_sede,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/