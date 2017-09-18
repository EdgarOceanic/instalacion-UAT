--SCRIPTS CREACION DE TABLAS DESDE SIT

-- TABLAS PADRES

CREATE TABLE CAT_CATALOGOS (
	CatalogoId varchar(4) NOT NULL,
	DescripcionCatalogo varchar(30) NOT NULL,
	CatalogoPadreId varchar(6),
	CatalogoValor varchar(100) NOT NULL,
	CatalogoActivo char(1),
	CONSTRAINT CAT_CATALOGOS_PK PRIMARY KEY (CatalogoId)
) go;


CREATE TABLE CAT_REGLA (
	Cve varchar(5) NOT NULL,
	Tipo varchar(5) NOT NULL,
	Aplicacion int NOT NULL,
	Descripcion varchar(250) NOT NULL,
	Riesgo int NOT NULL,
	CONSTRAINT CAT_REGLA_PK PRIMARY KEY (Cve)
) go
CREATE UNIQUE INDEX NewTable_PK ON CAT_REGLA (Cve) go;


CREATE TABLE CAT_REGLAS (
	ReglaId int NOT NULL,
	DescripcionRegla varchar(250) NOT NULL,
	NombreRegla varchar(10) NOT NULL,
	Estado char(1) NOT NULL,
	Nivel int NOT NULL,
	Aplicacion int NOT NULL,
	CONSTRAINT CAT_REGLAS_PK PRIMARY KEY (ReglaId)
) go;


CREATE TABLE CAT_SISTEMAS (
	SistemaId int NOT NULL,
	DescripcionSistema varchar(25) NOT NULL,
	CONSTRAINT CAT_SISTEMAS_PK PRIMARY KEY (SistemaId)
) go;



CREATE TABLE CIE10 (
	ClaveCie10cve varchar(10) NOT NULL,
	Descripcion varchar(100) NOT NULL,
	Genero varchar(1) NOT NULL,
	PropensoFraude varchar(1) NOT NULL,
	EdadMinima int NOT NULL,
	RelacionCirugiaEstetica char(1) NOT NULL,
	EdadMaxima int NOT NULL,
	Principal varchar(1),
	TipoPadecimiento int,
	CondicionadoCaracteristicas varchar(1),
	TiempodeResolucionMinimo int,
	TiempodeResolucionMaximo int,
	CONSTRAINT CIE10_PK PRIMARY KEY (ClaveCie10cve)
) go;



CREATE TABLE CIE10_CPT4 (
	Cie10 varchar(10) NOT NULL,
	Cpt4 int NOT NULL,
	IdEspecialidad varchar(10) NOT NULL
) go;



CREATE TABLE COBERTURA (
	ClaveTipoProducto varchar(10) NOT NULL,
	ClaveTipoSeguro varchar(10) NOT NULL,
	CONSTRAINT COBERTURA_PK PRIMARY KEY (ClaveTipoProducto,ClaveTipoSeguro)
) go;


CREATE TABLE CONFIG (
	Parametro varchar(100) NOT NULL,
	Valor varchar(150) NOT NULL
) go;
CREATE UNIQUE INDEX CONFIG_PK ON CONFIG (Parametro) go;


CREATE TABLE CPT4 (
	ClaveCPT4 varchar(10) NOT NULL,
	Descripcion varchar(150) NOT NULL,
	CVTR varchar(1),
	Especialidad varchar(10),
	LimiteSuperior decimal(18,0),
	LimiteInferior decimal(18,0),
	DesviacionEstandar decimal(18,0),
	CONSTRAINT CPT4_PK PRIMARY KEY (ClaveCPT4)
) go;


CREATE TABLE DEYDE_NORMALIZACION (
	NormalizacionId INTEGER  identity not null,
	ValorOriginal varchar(250) NOT NULL,
	ValorNormalizado varchar(250),
	Tratamiento varchar(3) NOT NULL,
	Campo varchar(50) NOT NULL,
	Archivo varchar(50) NOT NULL,
	FechaInsercion date NOT NULL,
	FechaNormalizacion date,
	Posiciones varchar(255),
	CONSTRAINT DEYDE_NORMALIZACION_PK PRIMARY KEY (NormalizacionId)
) go;
CREATE UNIQUE INDEX CAT_REGLAS_PK ON DEYDE_NORMALIZACION (NormalizacionId) go;


CREATE TABLE ESPECIALIDAD (
	Cve varchar(10) NOT NULL,
	Descripcion varchar(100) NOT NULL,
	CONSTRAINT ESPECIALIDAD_PK PRIMARY KEY (Cve)
) go;


CREATE TABLE FACT_PROC_DUPL (
	id_Detalle_GMM int NOT NULL,
	Procesado bit NOT NULL
) go;

CREATE TABLE HISTORICO_DESCARGAS (
	Id INTEGER  identity not null,
	NombreArchivo varchar(100) NOT NULL,
	Registros int NOT NULL,
	FechaDescarga date NOT NULL,
	Usuario varchar(35) NOT NULL,
	FechaInicio date NOT NULL,
	FechaFin date NOT NULL
) go;

CREATE TABLE LISTAS_ESPECIALES (
	Id INTEGER  identity not null,
	Tipo varchar(16),
	RazonSocial varchar(140),
	NombreProveedor varchar(70),
	Domicilio varchar(140),
	RfcProveedor varchar(40),
	CedulaProfesional varchar(140),
	TipoRiesgo char(1),
	Telefono varchar(25),
	PaginaInternet varchar(100),
	FechaReporte date,
	RevisionInsumosElevados char(1),
	FacturasRecetas char(1),
	SiniestroFicticio char(1),
	Observaciones varchar(220),
	VerificadoFogBugz char(1),
	CasoFogBugz numeric(10,2),
	ArchivoVerificacion varchar(220),
	CoincidenciaListaCofepris char(1),
	Repetidos varchar(120),
	LicenciaCofepris char(1),
	CONSTRAINT LISTAS_ESPECIALES_PK PRIMARY KEY (Id)
) go;

CREATE TABLE MONTOS_MEDIOS (
	ClaveCPT4 varchar(10) NOT NULL,
	LimiteInferior bigint NOT NULL,
	LimiteSuperior bigint NOT NULL,
	CONSTRAINT MONTOS_MEDIOS_PK PRIMARY KEY (ClaveCPT4)
) go;

CREATE TABLE PAGO_SEGURO (
	ClaveTipoPago varchar(10) NOT NULL,
	ClaveTipoProducto varchar(10) NOT NULL,
	ClaveTipoSeguro varchar(10) NOT NULL,
	CONSTRAINT PAGO_SEGURO_PK PRIMARY KEY (ClaveTipoPago,ClaveTipoProducto,ClaveTipoSeguro)
) go;

CREATE TABLE PROVEEDOR (
	Rfc varchar(14) NOT NULL,
	ClaveEntidad varchar(10) NOT NULL,
	TipoProveedor varchar(10) NOT NULL,
	Especialidad varchar(10) NOT NULL,
	Nombre varchar(150) NOT NULL,
	Alias varchar(150) NOT NULL,
	TipoRiesgo varchar(10),
	CONSTRAINT PROVEEDOR_PK PRIMARY KEY (Rfc)
) go;

CREATE TABLE RESUMEN_ARCHIVOS_PROCESADOS (
	NombreArchivo varchar(100) NOT NULL,
	CompaniaId varchar(5) NOT NULL,
	Registros int NOT NULL,
	RegistrosValidos int,
	RegistrosDuplicados int NOT NULL,
	ArchivoProcesadoValido char(1),
	AlertasGeneradas int,
	FechaCarga date NOT NULL,
	Usuario varchar(35),
	FechaCancelacion date,
	Id numeric(10,0) NOT NULL IDENTITY(1,1),
	FechaInicio date,
	FechaFin date,
	CONSTRAINT RESUMEN_ARCHIVOS_PROCESADOS_PK PRIMARY KEY (Id)
) go;

CREATE TABLE RIESGO_SINIESTRO (
	ClaveRiesgo varchar(5) NOT NULL,
	FK_ID_GMM int NOT NULL,
	CONSTRAINT RIESGO_SINIESTRO_PK PRIMARY KEY (FK_ID_GMM,ClaveRiesgo)
) go;

CREATE TABLE SOLICITUD_AUTORIZACION (
	Id INTEGER  identity not null,
	Motivo varchar(140),
	NombreSolicita varchar(70) NOT NULL,
	NombreAutoriza varchar(70) NOT NULL,
	OpcionAutoriza varchar(70) NOT NULL,
	MailsSolicita varchar(140) NOT NULL,
	MailsAutoriza varchar(140) NOT NULL,
	FechaSolicita date NOT NULL,
	FechaAutoriza date,
	EstatusActivo char(1),
	EstatusAutorizado char(1)
) go;

CREATE TABLE SOLICITUD_AUTORIZADORES_CATALOGO (
	Id INTEGER  identity not null,
	Nombres varchar(70) NOT NULL,
	ApellidoPaterno varchar(70) NOT NULL,
	ApellidoMaterno varchar(70) NOT NULL,
	CompaniaId varchar(70) NOT NULL,
	Mail varchar(140),
	EstatusActivo char(1)
) go;

CREATE TABLE SOLICITUD_CANCELACION_ARCHIVO (
	FolioGenerado varchar(50) NOT NULL,
	FechaAplicacion date NOT NULL,
	FK_NombreArchivo varchar(100) NOT NULL,
	FK_NumeroIntento int NOT NULL,
	CompaniaId varchar(5) NOT NULL,
	FK_UsuarioId varchar(15) NOT NULL,
	Descripcion varchar(300) NOT NULL,
	TipoCancelacion char(1) NOT NULL,
	NuevoFolio varchar(50) NOT NULL,
	CONSTRAINT SOLICITUD_CANCELACION_ARCHIVO_PK PRIMARY KEY (FolioGenerado)
) go;

CREATE TABLE TIPO_ERROR (
	Cve varchar(10) NOT NULL,
	Descripcion varchar(1000) NOT NULL,
	CONSTRAINT TIPO_ERROR_PK PRIMARY KEY (Cve)
) go;

CREATE TABLE UMBRAL (
	Parametro varchar(100) NOT NULL,
	Valor varchar(150) NOT NULL
) go
CREATE UNIQUE INDEX UMBRAL_PK ON UMBRAL (Parametro) go;



/**
********
TABLAS HIJAS
********
**/


CREATE TABLE ATENCION (
	ClaveCPT4 varchar(10) NOT NULL,
	ClaveCie10cve varchar(10) NOT NULL,
	CONSTRAINT ATENCION_PK PRIMARY KEY (ClaveCPT4,ClaveCie10cve),
	CONSTRAINT FK_ATENCION_CIE10 FOREIGN KEY (ClaveCie10cve) REFERENCES CIE10(ClaveCie10cve) ,
	CONSTRAINT FK_ATENCION_CPT4 FOREIGN KEY (ClaveCPT4) REFERENCES CPT4(ClaveCPT4) 
) go;


CREATE TABLE CAT_SISTEMAS_CATALOGOS (
	FK_SistemaId int NOT NULL,
	FK_CatalogoId varchar(4) NOT NULL,
	CONSTRAINT CAT_SISTEMAS_CATALOGOS_PK PRIMARY KEY (FK_SistemaId,FK_CatalogoId),
	CONSTRAINT FK_CAT_SISTEMAS_CATALOGOS_CAT_CATALOGOS FOREIGN KEY (FK_CatalogoId) REFERENCES CAT_CATALOGOS(CatalogoId) ,
	CONSTRAINT FK_CAT_SISTEMAS_CATALOGOS_CAT_SISTEMAS FOREIGN KEY (FK_SistemaId) REFERENCES CAT_SISTEMAS(SistemaId) 
) go;


CREATE TABLE DETALLE_ARCHIVO_GMM (
	CompaniaId varchar(5),
	NumeroPoliza varchar(20),
	Siniestro varchar(20),
	Reclamacion varchar(20),
	TipoSeguro int,
	TipoProducto int,
	CertificadoAfectado varchar(20),
	FechaAntiguedadAfectado date,
	NombreAfectado varchar(80),
	ApellidoPaternoAfectado varchar(80),
	ApellidoMaternoAfectado varchar(80),
	FechaNacimientoAfectado date,
	GeneroAfectado char(1),
	RfcAfectado varchar(13),
	Cie10 varchar(4),
	CPT4 int,
	FechaIngresoHospital date,
	FechaegresoHospital date,
	DiasEstancia int,
	NombreProveedor varchar(80),
	ApellidoPaternoProveedor varchar(80),
	ApellidoMaternoProveedor varchar(80),
	RfcProveedor varchar(13),
	EntidadProveedor int,
	TipoProveedor int,
	TipoPago int,
	FechaPrimerGastoSiniestro date,
	FechaComprobante date,
	FolioFiscal varchar(36),
	MontoComprobante numeric(14,2),
	CLABE varchar(18),
	Banco int,
	NombreTitularClabe varchar(80),
	ApellidoPaternoTitularClabe varchar(80),
	ApellidoMaternoTitularClabe varchar(80),
	RegistroActivo char(1),
	Linea int NOT NULL,
	Id INTEGER  identity not null,
	FK_ID_ARCHIVO int NOT NULL,
	CONSTRAINT DETALLE_ARCHIVO_GMM_PK PRIMARY KEY (Id),
	CONSTRAINT FK_DETALLE_ARCHIVO_GMM_RESUMEN_ARCHIVOS_PROCESADOS FOREIGN KEY (FK_ID_ARCHIVO) REFERENCES RESUMEN_ARCHIVOS_PROCESADOS(Id) 
) go;



CREATE TABLE ERROR_SINIESTRO (
	IdTipo varchar(10) NOT NULL,
	Descripcion varchar(1000) NOT NULL,
	Contenido varchar(5000) NOT NULL,
	IdArchivo int NOT NULL,
	linea int NOT NULL,
	Id INTEGER  identity not null,
	CONSTRAINT ERROR_SINIESTRO_PK PRIMARY KEY (Id),
	CONSTRAINT FK_ERROR_SINIESTRO_RESUMEN_ARCHIVOS_PROCESADOS FOREIGN KEY (IdArchivo) REFERENCES RESUMEN_ARCHIVOS_PROCESADOS(Id) ,
	CONSTRAINT FK_ERROR_SINIESTRO_TIPO_ERROR FOREIGN KEY (IdTipo) REFERENCES TIPO_ERROR(Cve) 
) go;


CREATE TABLE HISTORICO_ALERTAS (
	FK_ReglaId int NOT NULL,
	FK_NombreArchivo varchar(100) NOT NULL,
	FK_CampoId int NOT NULL,
	FK_NumeroIntento int NOT NULL,
	FechaActivacion date NOT NULL,
	DescripcionError varchar(250) NOT NULL,
	CompaniaId varchar(5) NOT NULL,
	NumeroLinea int NOT NULL,
	CONSTRAINT HISTORICO_ALERTAS_PK PRIMARY KEY (FK_ReglaId,FK_NombreArchivo,FK_CampoId,FK_NumeroIntento),
	CONSTRAINT FK_HISTORICO_ALERTAS_CAT_REGLAS FOREIGN KEY (FK_ReglaId) REFERENCES CAT_REGLAS(ReglaId) 
) go;







































































