CREATE SEQUENCE secuenciausuario
start with 1
increment by 1
maxvalue 99999
minvalue 1;
/
create or replace procedure inser_usuarios(
p_nombre_usuario        in usuario.nombre_usuario%type,
p_correo                          in usuario.correo_institucional%type,
p_nombre_apellido       in usuario.nombre_apellido%type,
p_horas_completadas  in usuario.cantidad_horas_completadas%type, 
p_estado_horas             in usuario.estado_de_horas%type,
p_id_tipo_usuario         in usuario.ID_tipo_de_usuario%type,
p_celular                        in usuario.celular%type,
p_id_rol                          in usuario.id_rol%type,
p_cedula                        in usuario.cedula%type,
p_estado_usuario        in usuario.estado_usuarios%type,
p_carrera                      in usuario.carrera%type,
P_mensaje         out varchar2
) as
begin
p_mensaje:='Proceso ejecutado con exito';

insert into usuario(ID_usuario,
                    nombre_usuario,
                    correo_institucional,
                    nombre_apellido,
                    cantidad_horas_completadas,
                    estado_de_horas,
                    ID_tipo_de_usuario,
                    celular,
                    id_rol,
                    cedula,
                    estado_usuarios,
                    carrera)
             values(secuenciausuario.nextval,
                    p_nombre_usuario,
                    p_correo,
                    p_nombre_apellido,
                    p_horas_completadas,
                    p_estado_horas,
                    p_id_tipo_usuario,
                    p_celular,
                    p_id_rol,
                    p_cedula,
                    p_estado_usuario,
                    p_carrera);

EXCEPTION
    WHEN dup_val_on_index THEN
        p_mensaje:='Este valor ya existe';
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
end inser_usuarios;
/

SET serveroutput ON
declare
v_nombre_usuario varchar2(20):='Kadir507';
v_correo varchar2(25):='kadircalidad@utp_ac_pa';
v_nombre_apellido varchar2(25):='Kadir Franksasu';
v_horas_completadas number(15):=0;
v_estado_horas varchar2(20):='incompleto';
v_id_tipo_usuario number(15):=3;
v_celular varchar2(15):='65648925';
v_id_rol number(15):=3;
v_cedula varchar2(15):='8-654-3567';
v_estado_usuario varchar2(10):='Activo';
v_carrera varchar2(35):='Ing_ Sistemas'; 
v_mensaje varchar2(50);
begin 
inser_usuarios(v_nombre_usuario,
               v_correo,
               v_nombre_apellido,
               v_horas_completadas,
               v_estado_horas,
               v_id_tipo_usuario,
               v_celular,
               v_id_rol,
               v_cedula,
               v_estado_usuario,
               v_carrera,
               v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/

SET serveroutput ON
declare
v_nombre_usuario varchar2(20):='Louis507';
v_correo varchar2(25):='louis64@utp.ac.pa';
v_nombre_apellido varchar2(25):='Louis Incalidad';
v_horas_completadas number(15):=0;
v_estado_horas varchar2(20):='incompleto';
v_id_tipo_usuario number(15):=1;
v_celular varchar2(15):='63245124';
v_id_rol number(15):=2;
v_cedula varchar2(15):='4-684-3567';
v_estado_usuario varchar2(10):='Activo';
v_carrera varchar2(35):=' '; 
v_mensaje varchar2(50);
begin 
inser_usuarios(v_nombre_usuario,
               v_correo,
               v_nombre_apellido,
               v_horas_completadas,
               v_estado_horas,
               v_id_tipo_usuario,
               v_celular,
               v_id_rol,
               v_cedula,
               v_estado_usuario,
               v_carrera,
               v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/


SET serveroutput ON
declare
v_nombre_usuario varchar2(20):='Alejndro369';
v_correo varchar2(25):='incralidad@utp.ac.pa';
v_nombre_apellido varchar2(25):='Alendro Andrade';
v_horas_completadas number(15):=0;
v_estado_horas varchar2(20):='incompleto';
v_id_tipo_usuario number(15):=1;
v_celular varchar2(15):='65639245';
v_id_rol number(15):=1;
v_cedula varchar2(15):='9-654-67';
v_estado_usuario varchar2(10):='Activo';
v_carrera varchar2(35):=' '; 
v_mensaje varchar2(50);
begin 
inser_usuarios(v_nombre_usuario,
               v_correo,
               v_nombre_apellido,
               v_horas_completadas,
               v_estado_horas,
               v_id_tipo_usuario,
               v_celular,
               v_id_rol,
               v_cedula,
               v_estado_usuario,
               v_carrera,
               v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/


SET serveroutput ON
declare
v_nombre_usuario varchar2(20):='Juan789';
v_correo varchar2(25):='ucuhdvuhurtht@utp.ac.pa';
v_nombre_apellido varchar2(25):='Juan Amenal';
v_horas_completadas number(15):=0;
v_estado_horas varchar2(20):='incompleto';
v_id_tipo_usuario number(15):=3;
v_celular varchar2(15):='67986525';
v_id_rol number(15):=3;
v_cedula varchar2(15):='7-784-367';
v_estado_usuario varchar2(10):='Activo';
v_carrera varchar2(35):='Ing. Sistemas'; 
v_mensaje varchar2(50);
begin 
inser_usuarios(v_nombre_usuario,
               v_correo,
               v_nombre_apellido,
               v_horas_completadas,
               v_estado_horas,
               v_id_tipo_usuario,
               v_celular,
               v_id_rol,
               v_cedula,
               v_estado_usuario,
               v_carrera,
               v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/


SET serveroutput ON
declare
v_nombre_usuario varchar2(20):='caramuli10';
v_correo varchar2(25):='djijfijvbnb @utp.ac.pa';
v_nombre_apellido varchar2(25):='Armenio San';
v_horas_completadas number(15):=0;
v_estado_horas varchar2(20):='incompleto';
v_id_tipo_usuario number(15):=3;
v_celular varchar2(15):='65898925';
v_id_rol number(15):=3;
v_cedula varchar2(15):='8-654-3567';
v_estado_usuario varchar2(10):='Activo';
v_carrera varchar2(35):='Ing. Sistemas'; 
v_mensaje varchar2(50);
begin 
inser_usuarios(v_nombre_usuario,
               v_correo,
               v_nombre_apellido,
               v_horas_completadas,
               v_estado_horas,
               v_id_tipo_usuario,
               v_celular,
               v_id_rol,
               v_cedula,
               v_estado_usuario,
               v_carrera,
               v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/