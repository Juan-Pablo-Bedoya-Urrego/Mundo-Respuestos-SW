create database MundoRepuestosDB

use MundoRepuestosDB

--Tabla Para las Sucursales--
create table Sucursales(
IdSucursal int primary key not null,
NombreSucursal varchar(20) not null,
Direccion varchar(20) not null)

--Tabla Para La Piezas--
create table PiezasMedellin(
IdPiezaMedellin int primary key not null,
CantidadPiezasMedellin int not null,
ValorPiezaMedellin float not null,
IdSucursal int not null,
foreign key (IdSucursal) references Sucursales(IdSucursal))

create table PiezasBello(
IdPiezaBello int primary key not null,
CantidadPiezasBello int not null,
ValorPiezaBello float not null,
IdSucursal int,
foreign key (IdSucursal) references Sucursales(IdSucursal))

create table PiezasEnvigado(
IdPiezaEnvigado int primary key not null,
CantidadPiezasEnvigado int not null,
ValorPiezaEnvigado float not null,
IdSucursal int,
foreign key (IdSucursal) references Sucursales(IdSucursal))

--Crear Tabla De Roles--
create table Roles(
IdRol int primary key not null,
Rol varchar(10) not null)

--Crear Tabla De Usuarios--
create table Usuario(
IdUsuario int primary key not null,
NombreCompletoUsuario varchar(50) not null,
IdSucursal int not null,
IdRol int not null,
Contraseña varchar(50)not null,
foreign key (IdSucursal) references Sucursales(IdSucursal),
foreign key (IdRol) references Roles(IdRol))