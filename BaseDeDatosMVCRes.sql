CREATE DATABASE Recetario
GO
	use Recetario
	GO





Create Table ProcesoElaboracionPlatos(
IdReceta int Primary Key,
ListaDeIngredientes Varchar(250),
Utensilios Varchar (250),
Tiempo_Estimado Varchar (20),
TipoDePlato Varchar (30),
IngredenteRepresentativo Varchar (30),
Ubicacion varchar (30),


)

Create Table Cantidaddecalorias(
IdCantidad_Calorias Varchar (50) Primary key,
Receta int,
Foreign Key (Receta) references ProcesoElaboracionPlatos(IdReceta) 
)

Create Table Carta(
IdCarta Varchar (50) Primary Key,
Platos Varchar (50),
Precio Nvarchar (30),
Comentario Varchar (100),
Menu int,
Foreign Key (menu) references ProcesoElaboracionPlatos(IdReceta) 
)

Create Table AñadirReceta(
IdAñadirNuevoPaso Varchar (100) Primary Key,
Anadir int ,
Foreign Key (Anadir) references ProcesoElaboracionPlatos(IdReceta) 
)