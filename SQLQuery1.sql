create procedure USP_Listado_ca
@cTexto varchar(100)=''
as
	 select codigo_ca, descripcion_ca 
	 from TB_CATERGORIA
	 where estado=1 and 
	 upper(trim(cast(codigo_ca as char))+trim(descripcion_ca)) like '%'+upper(trim(@cTexto))+'%';
	 --trim limpia espacios a la derecha
	 --cast convierte a otro tipo de dato
	 --upper pasa a mayuscula
go