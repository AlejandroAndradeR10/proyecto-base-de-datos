create or replace PROCEDURE Actualizacion_horas_proyecto(
    
p_estado out varchar2)as
cursor c_actualizacion is
select Id_actividades,Id_proyectos from actividades;
v_duracion_actividad actividades.duracion_actividad%type;
begin
 p_estado:='Proceso ejecutado con exito';
 
for v_indice in c_actualizacion loop
select duracion_actividad into v_duracion_actividad from actividades where Id_actividades=v_indice.Id_actividades and Id_proyectos=v_indice.Id_proyectos;


Update proyectos
  SET horas_proyecto = horas_proyecto + v_duracion_actividad
WHERE Id_proyectos = v_indice.Id_proyectos;

Update integrante_proyecto
  SET horas_proyecto = horas_proyecto + v_duracion_actividad
WHERE Id_proyectos = v_indice.Id_proyectos;


end loop;
 
 
 EXCEPTION 
         WHEN dup_val_on_index THEN 
              p_estado:='Este valor ya existe';
         WHEN others THEN
              p_estado:='No se ha creado el registro...';
end Actualizacion_horas_proyecto;
/
 
 
SET SERVEROUTPUT ON
declare
v_estado varchar(50);
begin
Actualizacion_horas_proyecto(v_estado);
dbms_output.put_line(v_estado);
end;
/