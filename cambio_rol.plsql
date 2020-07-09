create or replace procedure CambioRol(
p_nombre_usuario  in usuario.nombre_usuario%type,
p_id_rol          in usuario.id_rol%type,
P_mensaje         out varchar2)
as
v_id usuario.ID_usuario%type;
begin
p_mensaje:='se ha creado el registro'
select ID_usuario into v_id from usuario where nombre_usuario=p_nombre_usuario;
update usuario 
set id_rol = p_id_rol;
where ID_usuario=v_id;

EXCEPTION
    WHEN others THEN
        p_mensaje:='No se ha creado el registro...';
end CambioRol;
/

SET serveroutput ON
declare
v_nombre_usuario varchar(20):='Kadir507';
v_Nid_rol        number(15):=4;
BEGIN
CambioRol(v_nombre_usuario,v_Nid_rol,v_mensaje);
DBMS_output.put_line(v_mensaje);
end;
/
