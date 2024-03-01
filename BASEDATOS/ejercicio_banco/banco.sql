CREATE DATABASE bancos;
use bancos;


create table bancos (
    codigo varchar (10)  auto_increment,
    nombre varchar (30),
    fecha_fundacion DATE,
    PRIMARY KEY (codigo, nombre)
);

create table sucursales (
    codigo int auto_increment PRIMARY KEY,
    ubicacion varchar(35) NOT NULL,
    ciudad varchar(35) NOT NULL,
    telefono varchar(25) NOT NULL
);

create table clientes (
    nro_cuenta int PRIMARY KEY NOT NULL,
    nombre varchar(35) NOT NULL,
    telefono varchar(25) NOT NULL,
    direccion varchar(25) NOT NULL,
    genero varchar (10) NOT NULL check (genero in ("masculino","femenino")),
    saldo numeric(6) NOT NULL check (saldo >0)
);

create table cajeros_automaticos (
    numero int auto_increment PRIMARY KEY,
    ubicacion VARCHAR(35) NOT NULL,
    deposito float NOT NULL check (deposito <30000)
);

create table empleados (
    codigo int auto_increment PRIMARY KEY,
    nombre varchar(35) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero varchar(10) NOT NULL check (genero in ("masculino","femenino")),
    telefono int NOT NULL,
    salario float NOT NULL check (salario between 500 and  2000),
    nro_hijos int check (nro_hijos >=4)
);

create table cargos (
    codigo int auto_increment PRIMARY KEY NOT NULL,
    nombre varchar(35) NOT NULL,
    descripcion varchar (200) NOT NULL
);

create table vigilantes(
    nro_cedula int PRIMARY KEY NOT NULL,
    nombre varchar(35) NOT NULL,
    telefono int NOT NULL,
    genero varchar(10) NOT NULL check (genero in ("masculino","femenino")),
    salario numeric(10,2) NOT NULL
);
