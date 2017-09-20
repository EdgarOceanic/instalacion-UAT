

-- TABLAS PADRES

CREATE TABLE CAT_CATALOGOS (
	CatalogoId varchar(4) NOT NULL,
	DescripcionCatalogo varchar(30) NOT NULL,
	CatalogoPadreId varchar(6) NULL,
	CatalogoValor varchar(100) NOT NULL,
	CatalogoActivo char(1) NULL,
	CONSTRAINT CAT_CATALOGOS_PK PRIMARY KEY (CatalogoId)
) go;


CREATE TABLE CAT_REGLA (
	Cve varchar(5) NOT NULL,
	Tipo varchar(5) NOT NULL,
	Aplicacion int NOT NULL,
	Descripcion varchar(250) NOT NULL,
	Riesgo int NOT NULL,
	CONSTRAINT CAT_REGLA_PK PRIMARY KEY (Cve)
) go;


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
	Principal varchar(1) NULL,
	TipoPadecimiento int NULL,
	CondicionadoCaracteristicas varchar(1) NULL,
	TiempodeResolucionMinimo int NULL,
	TiempodeResolucionMaximo int NULL,
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
	Valor varchar(150) NOT NULL,
	CONSTRAINT CONFIG_PK PRIMARY KEY (Parametro)
) go;


CREATE TABLE CPT4 (
	ClaveCPT4 varchar(10) NOT NULL,
	Descripcion varchar(150) NOT NULL,
	CVTR varchar(1) NULL,
	Especialidad varchar(10) NULL,
	LimiteSuperior decimal(18,0) NULL,
	LimiteInferior decimal(18,0) NULL,
	DesviacionEstandar decimal(18,0) NULL,
	CONSTRAINT CPT4_PK PRIMARY KEY (ClaveCPT4)
) go;


CREATE TABLE DEYDE_NORMALIZACION (
	NormalizacionId INTEGER  identity not null,
	ValorOriginal varchar(250) NOT NULL,
	ValorNormalizado varchar(250) NULL,
	Tratamiento varchar(3) NOT NULL,
	Campo varchar(50) NOT NULL,
	Archivo varchar(50) NOT NULL,
	FechaInsercion date NOT NULL,
	FechaNormalizacion date NULL,
	Posiciones varchar(255) NULL,
	CONSTRAINT DEYDE_NORMALIZACION_PK PRIMARY KEY (NormalizacionId)
) go;


CREATE TABLE ESPECIALIDAD (
	Cve varchar(10) NOT NULL,
	Descripcion varchar(100) NOT NULL,
	CONSTRAINT ESPECIALIDAD_PK PRIMARY KEY (Cve)
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
	Tipo varchar(16) NULL,
	RazonSocial varchar(140) NULL,
	NombreProveedor varchar(70) NULL,
	Domicilio varchar(140) NULL,
	RfcProveedor varchar(40) NULL,
	CedulaProfesional varchar(140) NULL,
	TipoRiesgo char(1) NULL,
	Telefono varchar(25) NULL,
	PaginaInternet varchar(100) NULL,
	FechaReporte date NULL,
	RevisionInsumosElevados char(1) NULL,
	FacturasRecetas char(1) NULL,
	SiniestroFicticio char(1) NULL,
	Observaciones varchar(220) NULL,
	VerificadoFogBugz char(1) NULL,
	CasoFogBugz numeric(10,2) NULL,
	ArchivoVerificacion varchar(220) NULL,
	CoincidenciaListaCofepris char(1) NULL,
	Repetidos varchar(120) NULL,
	LicenciaCofepris char(1) NULL,
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
	RegistrosValidos int NULL,
	RegistrosDuplicados int NOT NULL,
	ArchivoProcesadoValido char(1) NULL,
	AlertasGeneradas int NULL,
	FechaCarga date NOT NULL,
	Usuario varchar(35) NULL,
	FechaCancelacion date NULL,
	Id INTEGER  identity not null,
	FechaInicio date NULL,
	FechaFin date NULL,
	CONSTRAINT RESUMEN_ARCHIVOS_PROCESADOS_PK PRIMARY KEY (Id)
) go;

CREATE TABLE RIESGO_SINIESTRO (
	ClaveRiesgo varchar(5) NOT NULL,
	FK_ID_GMM int NOT NULL,
	CONSTRAINT RIESGO_SINIESTRO_PK PRIMARY KEY (FK_ID_GMM,ClaveRiesgo)
) go;

CREATE TABLE SOLICITUD_AUTORIZACION (
	Id INTEGER  identity not null,
	Motivo varchar(140) NULL,
	NombreSolicita varchar(70) NOT NULL,
	NombreAutoriza varchar(70) NOT NULL,
	OpcionAutoriza varchar(70) NOT NULL,
	MailsSolicita varchar(140) NOT NULL,
	MailsAutoriza varchar(140) NOT NULL,
	FechaSolicita date NOT NULL,
	FechaAutoriza date NULL,
	EstatusActivo char(1) NULL,
	EstatusAutorizado char(1)
) go;

CREATE TABLE SOLICITUD_AUTORIZADORES_CATALOGO (
	Id INTEGER  identity not null,
	Nombres varchar(70) NOT NULL,
	ApellidoPaterno varchar(70) NOT NULL,
	ApellidoMaterno varchar(70) NOT NULL,
	CompaniaId varchar(70) NOT NULL,
	Mail varchar(140) NULL,
	EstatusActivo char(1) NULL
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
	Cve varchar(30) NOT NULL,
	Descripcion varchar(1000) NOT NULL,
	CONSTRAINT TIPO_ERROR_PK PRIMARY KEY (Cve)
) go;

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
	CompaniaId varchar(5) NULL,
	NumeroPoliza varchar(20) NULL,
	Siniestro varchar(20) NULL,
	Reclamacion varchar(20) NULL,
	TipoSeguro int NULL,
	TipoProducto int NULL,
	CertificadoAfectado varchar(20) NULL,
	FechaAntiguedadAfectado date NULL,
	NombreAfectado varchar(80) NULL,
	ApellidoPaternoAfectado varchar(80) NULL,
	ApellidoMaternoAfectado varchar(80) NULL,
	FechaNacimientoAfectado date,
	GeneroAfectado char(1) NULL,
	RfcAfectado varchar(13) NULL,
	Cie10 varchar(4) NULL,
	CPT4 int NULL,
	FechaIngresoHospital date NULL,
	FechaegresoHospital date NULL,
	DiasEstancia int NULL,
	NombreProveedor varchar(80) NULL,
	ApellidoPaternoProveedor varchar(80) NULL,
	ApellidoMaternoProveedor varchar(80) NULL,
	RfcProveedor varchar(13) NULL,
	EntidadProveedor int NULL,
	TipoProveedor int NULL,
	TipoPago int NULL,
	FechaPrimerGastoSiniestro date NULL,
	FechaComprobante date NULL,
	FolioFiscal varchar(36) NULL,
	MontoComprobante numeric(14,2) NULL,
	CLABE varchar(18) NULL,
	Banco int NULL,
	NombreTitularClabe varchar(80) NULL,
	ApellidoPaternoTitularClabe varchar(80) NULL,
	ApellidoMaternoTitularClabe varchar(80) NULL,
	RegistroActivo char(1) NULL,
	Linea int NOT NULL,
	Id INTEGER  identity not null,
	FK_ID_ARCHIVO int NOT NULL,
	CONSTRAINT DETALLE_ARCHIVO_GMM_PK PRIMARY KEY (Id),
	CONSTRAINT FK_DETALLE_ARCHIVO_GMM_RESUMEN_ARCHIVOS_PROCESADOS FOREIGN KEY (FK_ID_ARCHIVO) REFERENCES RESUMEN_ARCHIVOS_PROCESADOS(Id) 
) go;



CREATE TABLE ERROR_SINIESTRO (
	IdTipo varchar(30) NOT NULL,
	Descripcion varchar(1000) NOT NULL,
	Contenido varchar(5000) NOT NULL,
	IdArchivo int NOT NULL,
	linea int NOT NULL,
	Id INTEGER  identity not null,
	Campo varchar(100) NOT NULL,
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


