create procedure USP_Guardar_ca
@nOpcion int=0,
@nCodigo_Ca int=0,
@Descripcion_Ca varchar(40)=''
as
if @nOpcion=1--Nuevo registro
begin
	insert into TB_CATERGORIA (descripcion_ca, Estado) values (@Descripcion_Ca,1);
end;
else--actualiza
begin
	update TB_CATERGORIA set descripcion_ca=@Descripcion_Ca where codigo_ca=@nCodigo_Ca;
end;
go


insert into TB_CATERGORIA
values ('prueba categoria', 1)