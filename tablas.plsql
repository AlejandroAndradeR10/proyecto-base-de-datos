/*secuencias*/

/*tablas*/
create table tipo_usuario(
ID_tipo_de_usuario number(15),
tipo_de_usuario varchar2(20),
constraint pk_ID_tipo_de_usuario
primary key (ID_tipo_de_usuario)
);

CREATE TABLE roles(
    ID_rol number(15),
    Tipo_de_rol varchar2(15),
constraint pk_ID_rol
primary key (id_rol)
);

Create table usuario(
ID_usuario number(15), 
nombre_usuario varchar2(20),
correo_institucional varchar2(25),
nombre_apellido varchar2(25),
cantidad_horas_completadas number(15),
estado_de_horas varchar2(20),
ID_tipo_de_usuario number(15), 
celular varchar2(15),
id_rol number(15), 
cedula varchar2(15),
estado_usuarios varchar2(10),
carrera varchar2(35),
Constraint pk_ID_usuario
Primary key (ID_usuario),
constraint fk_ID_tipo_de_usuario 
foreign key(ID_tipo_de_usuario)
references tipo_usuario(ID_tipo_de_usuario),
constraint fk_id_rol 
foreign key(id_rol)
references Roles(id_rol)
);

create table sede(
ID_sede number(15),
nombre_sede varchar2(35),
constraint pk_sede 
primary key(ID_sede)
);

create table proyectos(
ID_proyectos number(15),
ID_usuario number(15),
nombre_proyecto varchar2(35),
duracion_proyecto varchar2(15),
descripcion_proyecto varchar2(35),
prioridad varchar2(20),
fecha_inicio date,
fecha_finalizacion date,
costo_proyecto number(15),
estado_proyecto varchar2(15),
horas_proyecto number(15),
ID_sede number(15),
Constraint pk_ID_proyectos
primary key (ID_proyectos),
constraint fk_ID_usuario 
foreign key(ID_usuario)
references usuario (ID_usuario),
constraint fk_ID_sede
foreign key(ID_sede)
references sede(ID_sede)
);

create table Integrante_proyecto(
  ID_usuario number(15),
  ID_proyectos number(15),
  id_rol number(15), 
  nombre_apellido varchar2(25),
  horas_proyecto number(15),
  Constraint pk_id_usuario_rol
Primary key (ID_usuario,ID_proyectos),
constraint fk_usuario_rol
foreign key(ID_rol)
references Roles (ID_rol)
);

create table actividades(
ID_actividades number(15),
ID_proyectos number(15),
nombre_actividad varchar2(25),
duracion_actividad number(15), 
fecha_actividad date,
Constraint pk_ID_actividades
primary key (ID_actividades),
constraint fk_ID_proyectos
foreign key(ID_proyectos)
references proyectos (ID_proyectos)
);

Create table participa_de(
    ID_actividades number(15),
    ID_usuario number(15),
    ID_proyectos number(15),
    horas_participadas number(15),
    Constraint pk_participa_de
    Primary key (ID_actividades,ID_usuario),
    constraint fk_participa_Id_proyecto
    foreign key(ID_proyectos)
    references proyectos (ID_proyectos)
);

create table sede_vs_proyectos(
ID_sede number(15),
ID_proyectos number(15),
estado_proyecto varchar2(15),
Constraint pk_sede_vs_proyecto
Primary key (ID_sede,ID_proyectos)
);