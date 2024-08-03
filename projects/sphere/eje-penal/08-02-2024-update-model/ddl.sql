
CREATE TABLE ACCION_TRAN
(
	ACCION_ID            INTEGER NOT NULL ,
	TIPO                 VARCHAR2(20) NULL ,
	FECHA                DATE NULL ,
	HORA                 DATE NULL ,
	MOTIVO               VARCHAR2(20) NULL ,
	DETALLE              VARCHAR2(20) NULL ,
	USUARIO_ID           INTEGER NULL ,
	PERSONA_PPL_ID       INTEGER NULL 
);



COMMENT ON TABLE ACCION_TRAN IS 'Esta tabla documenta las acciones realizadas por los usuarios del sistema, registrando el tipo de acción, la fecha y el usuario que la realizó.';




COMMENT ON COLUMN ACCION_TRAN.ACCION_ID IS 'Este campo almacena el identificador único de la acción y es utilizado como clave primaria para distinguir entre diferentes acciones.';




COMMENT ON COLUMN ACCION_TRAN.TIPO IS 'Este campo indica el tipo de acción.';




COMMENT ON COLUMN ACCION_TRAN.FECHA IS 'Este campo almacena la fecha de la acción.';




COMMENT ON COLUMN ACCION_TRAN.HORA IS 'Este campo almacena la hora de la acción.';




COMMENT ON COLUMN ACCION_TRAN.MOTIVO IS 'Motivo de la acción.';




COMMENT ON COLUMN ACCION_TRAN.DETALLE IS 'Detalles adicionales sobre la acción.';




COMMENT ON COLUMN ACCION_TRAN.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';




COMMENT ON COLUMN ACCION_TRAN.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';



CREATE UNIQUE INDEX XPKACCION ON ACCION_TRAN
(ACCION_ID   ASC);



ALTER TABLE ACCION_TRAN
	ADD CONSTRAINT  XPKACCION PRIMARY KEY (ACCION_ID);



CREATE TABLE ACTA_INCAUTACION_CAB
(
	ACTA_ID              CHAR(18) NOT NULL ,
	FECHA                DATE NULL ,
	HORA                 DATE NULL ,
	MOTIVO               VARCHAR2(20) NULL ,
	RESULTADO            VARCHAR2(20) NULL ,
	ESTADO               VARCHAR2(20) NULL ,
	ACCIONES_POSTERIORES VARCHAR2(20) NULL ,
	PERSONA_PPL_ID       INTEGER NULL ,
	USUARIO_ID           INTEGER NULL 
);



COMMENT ON TABLE ACTA_INCAUTACION_CAB IS 'Esta tabla documenta los actos de incautación, incluyendo la fecha, lugar y descripción general de los elementos incautados.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.ACTA_ID IS 'Este campo almacena el identificador único del acta de incautación y es utilizado como clave primaria para distinguir entre diferentes actas.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.FECHA IS 'Este campo almacena la fecha del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.HORA IS 'Este campo almacena la hora del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.MOTIVO IS 'Este campo indica el motivo del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.RESULTADO IS 'Este campo indica el resultado de la incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.ESTADO IS 'Este campo indica el estado actual del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.ACCIONES_POSTERIORES IS 'Este campo almacena las acciones posteriores relacionadas con el acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';




COMMENT ON COLUMN ACTA_INCAUTACION_CAB.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';



CREATE UNIQUE INDEX XPKACTA_INCAUTACION ON ACTA_INCAUTACION_CAB
(ACTA_ID   ASC);



ALTER TABLE ACTA_INCAUTACION_CAB
	ADD CONSTRAINT  XPKACTA_INCAUTACION PRIMARY KEY (ACTA_ID);



CREATE TABLE ACTA_INCAUTACION_DET
(
	DETALLE_ACTA_ID      INTEGER NOT NULL ,
	TIPO                 VARCHAR2(20) NULL ,
	OBSERVACION          VARCHAR2(20) NULL ,
	ACTA_ID              CHAR(18) NULL 
);



COMMENT ON TABLE ACTA_INCAUTACION_DET IS 'Esta tabla almacena los detalles específicos de cada acto de incautación, listando individualmente cada objeto incautado y sus características.';




COMMENT ON COLUMN ACTA_INCAUTACION_DET.DETALLE_ACTA_ID IS 'Este campo almacena el identificador único del detalle del acta de incautación y es utilizado como clave primaria para distinguir entre diferentes detalles.';




COMMENT ON COLUMN ACTA_INCAUTACION_DET.TIPO IS 'Este campo indica el tipo de detalle del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_DET.OBSERVACION IS 'Este campo almacena observaciones adicionales sobre el detalle del acta de incautación.';




COMMENT ON COLUMN ACTA_INCAUTACION_DET.ACTA_ID IS 'Este campo almacena el identificador único del acta de incautación y es utilizado como clave primaria para distinguir entre diferentes actas.';



CREATE UNIQUE INDEX XPKDETALLE_ACTA_INCAUTACION ON ACTA_INCAUTACION_DET
(DETALLE_ACTA_ID   ASC);



ALTER TABLE ACTA_INCAUTACION_DET
	ADD CONSTRAINT  XPKDETALLE_ACTA_INCAUTACION PRIMARY KEY (DETALLE_ACTA_ID);



CREATE TABLE CLASIFICACION_TRAN
(
	CLASIFICACION_ID     INTEGER NOT NULL ,
	FECHA                DATE NULL ,
	HORA                 DATE NULL ,
	REGIMEN              VARCHAR2(20) NULL ,
	ETAPA                VARCHAR2(20) NULL ,
	PABELLON             VARCHAR2(20) NULL ,
	ALERO                VARCHAR2(20) NULL ,
	CELDA                VARCHAR2(20) NULL ,
	LITERA               VARCHAR2(20) NULL ,
	RUTA_ARCHIVO         VARCHAR2(20) NULL ,
	NOMBRE_ARCHIVO       VARCHAR2(20) NULL ,
	USUARIO_ID           INTEGER NULL ,
	PERSONA_PPL_ID       INTEGER NULL 
);



COMMENT ON TABLE CLASIFICACION_TRAN IS 'Esta tabla contiene las clasificaciones usadas en el sistema para categorizar a las personas procesadas o sentenciadas, las incautaciones y las ocurrencias.';




COMMENT ON COLUMN CLASIFICACION_TRAN.CLASIFICACION_ID IS 'Este campo almacena el identificador único de la clasificación y es utilizado como clave primaria para distinguir entre diferentes clasificaciones.';




COMMENT ON COLUMN CLASIFICACION_TRAN.FECHA IS 'Este campo almacena la fecha de la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.HORA IS 'Este campo almacena la hora de la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.REGIMEN IS 'Este campo indica el régimen al que pertenece la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.ETAPA IS 'Este campo indica la etapa del proceso de clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.PABELLON IS 'Este campo almacena el pabellón donde se encuentra la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.ALERO IS 'Este campo almacena el alero donde se encuentra la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.CELDA IS 'Este campo almacena la celda donde se encuentra la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.LITERA IS 'Este campo almacena la litera donde se encuentra la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.RUTA_ARCHIVO IS 'Este campo almacena la ruta del archivo digitalizado de la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.NOMBRE_ARCHIVO IS 'Este campo almacena el nombre del archivo digitalizado de la clasificación.';




COMMENT ON COLUMN CLASIFICACION_TRAN.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';




COMMENT ON COLUMN CLASIFICACION_TRAN.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';



CREATE UNIQUE INDEX XPKCLASIFICACION ON CLASIFICACION_TRAN
(CLASIFICACION_ID   ASC);



ALTER TABLE CLASIFICACION_TRAN
	ADD CONSTRAINT  XPKCLASIFICACION PRIMARY KEY (CLASIFICACION_ID);



CREATE TABLE DOCUMENTO_DET
(
	DOCUMENTO_ID         INTEGER NOT NULL ,
	AUTORIDAD            VARCHAR2(20) NULL ,
	NUM_OFICIO           INTEGER NULL ,
	FECHA_EMISION        DATE NULL ,
	FECHA_RECEPCION      DATE NULL ,
	TIPO_DOCUMENTO       VARCHAR2(20) NULL ,
	ASUNTO               VARCHAR2(20) NULL ,
	RUTA_ARCHIVO         VARCHAR2(20) NULL ,
	NOMBRE_ARCHIVO       VARCHAR2(20) NULL ,
	ACCION_ID            INTEGER NULL 
);



COMMENT ON TABLE DOCUMENTO_DET IS 'Esta tabla guarda los documentos generados o recibidos por el sistema, como informes, cartas oficiales y otros documentos relevantes.';




COMMENT ON COLUMN DOCUMENTO_DET.DOCUMENTO_ID IS 'Este campo almacena el identificador único del documento y es utilizado como clave primaria para distinguir entre diferentes documentos.';




COMMENT ON COLUMN DOCUMENTO_DET.AUTORIDAD IS 'Este campo indica la autoridad que emitió el documento.';




COMMENT ON COLUMN DOCUMENTO_DET.NUM_OFICIO IS 'Este campo almacena el número de oficio del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.FECHA_EMISION IS 'Este campo almacena la fecha de emisión del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.FECHA_RECEPCION IS 'Este campo almacena la fecha de recepción del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.TIPO_DOCUMENTO IS 'Este campo indica el tipo de documento.';




COMMENT ON COLUMN DOCUMENTO_DET.ASUNTO IS 'Este campo almacena el asunto del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.RUTA_ARCHIVO IS 'Este campo almacena la ruta del archivo digitalizado del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.NOMBRE_ARCHIVO IS 'Este campo almacena el nombre del archivo digitalizado del documento.';




COMMENT ON COLUMN DOCUMENTO_DET.ACCION_ID IS 'Este campo almacena el identificador único de la acción y es utilizado como clave primaria para distinguir entre diferentes acciones.';



CREATE UNIQUE INDEX XPKDOCUMENTO ON DOCUMENTO_DET
(DOCUMENTO_ID   ASC);



ALTER TABLE DOCUMENTO_DET
	ADD CONSTRAINT  XPKDOCUMENTO PRIMARY KEY (DOCUMENTO_ID);



CREATE TABLE ESCANEO_TRAN
(
	ESCANEO_ID           INTEGER NOT NULL ,
	FECHA                DATE NULL ,
	HORA                 DATE NULL ,
	RESULTADO            VARCHAR2(20) NULL ,
	PERSONA_PPL_ID       INTEGER NULL ,
	USUARIO_ID           INTEGER NULL 
);



COMMENT ON TABLE ESCANEO_TRAN IS 'Esta tabla almacena los escaneos de documentos físicos relacionados con los expedientes y otros registros importantes, permitiendo su acceso digital.';




COMMENT ON COLUMN ESCANEO_TRAN.ESCANEO_ID IS 'Este campo almacena el identificador único del escaneo y es utilizado como clave primaria para distinguir entre diferentes escaneos.';




COMMENT ON COLUMN ESCANEO_TRAN.FECHA IS 'Este campo almacena la fecha del escaneo.';




COMMENT ON COLUMN ESCANEO_TRAN.HORA IS 'Este campo almacena la hora del escaneo.';




COMMENT ON COLUMN ESCANEO_TRAN.RESULTADO IS 'Este campo indica el resultado del escaneo.';




COMMENT ON COLUMN ESCANEO_TRAN.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';




COMMENT ON COLUMN ESCANEO_TRAN.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';



CREATE UNIQUE INDEX XPKESCANEO ON ESCANEO_TRAN
(ESCANEO_ID   ASC);



ALTER TABLE ESCANEO_TRAN
	ADD CONSTRAINT  XPKESCANEO PRIMARY KEY (ESCANEO_ID);



CREATE TABLE EST_PENITENCIARIO_MAE
(
	OFICINA_ID           INTEGER NOT NULL ,
	ESTABLECIMIENTO_ID   INTEGER NOT NULL ,
	NOMBRE               VARCHAR2(20) NULL ,
	DESCRIPCION          VARCHAR2(20) NULL 
);



COMMENT ON TABLE EST_PENITENCIARIO_MAE IS 'Esta tabla contiene los detalles de los establecimientos penitenciarios, como su ubicación, capacidad y la oficina regional a la que pertenecen.';




COMMENT ON COLUMN EST_PENITENCIARIO_MAE.OFICINA_ID IS 'Este campo almacena el identificador único para cada oficina regional y es utilizado como clave primaria para distinguir entre diferentes oficinas.';




COMMENT ON COLUMN EST_PENITENCIARIO_MAE.ESTABLECIMIENTO_ID IS 'Este campo almacena el identificador único del establecimiento penitenciario y es utilizado como clave primaria para distinguir entre diferentes establecimientos.';




COMMENT ON COLUMN EST_PENITENCIARIO_MAE.NOMBRE IS 'Este campo almacena el nombre del establecimiento penitenciario, el cual debe ser descriptivo y único.';




COMMENT ON COLUMN EST_PENITENCIARIO_MAE.DESCRIPCION IS 'Este campo proporciona una descripción detallada del establecimiento penitenciario.';



CREATE UNIQUE INDEX XPKESTABLECIMIENTO_PENITENCIAR ON EST_PENITENCIARIO_MAE
(OFICINA_ID   ASC,ESTABLECIMIENTO_ID   ASC);



ALTER TABLE EST_PENITENCIARIO_MAE
	ADD CONSTRAINT  XPKESTABLECIMIENTO_PENITENCIAR PRIMARY KEY (OFICINA_ID,ESTABLECIMIENTO_ID);



CREATE TABLE EXPEDIENTE_MAE
(
	EXPEDIENTE_ID        INTEGER NOT NULL ,
	FECHA                DATE NULL ,
	ESTADO               VARCHAR2(20) NULL ,
	DESCRIPCION          VARCHAR2(20) NULL ,
	PERSONA_PPL_ID       INTEGER NULL 
);



COMMENT ON TABLE EXPEDIENTE_MAE IS 'Esta tabla registra los expedientes de las personas procesadas o sentenciadas, incluyendo detalles del caso, fechas importantes y estado del expediente.';




COMMENT ON COLUMN EXPEDIENTE_MAE.EXPEDIENTE_ID IS 'Este campo almacena el identificador único del expediente y es utilizado como clave primaria para distinguir entre diferentes expedientes.';




COMMENT ON COLUMN EXPEDIENTE_MAE.FECHA IS 'Este campo almacena la fecha del expediente.';




COMMENT ON COLUMN EXPEDIENTE_MAE.ESTADO IS 'Este campo indica el estado actual del expediente.';




COMMENT ON COLUMN EXPEDIENTE_MAE.DESCRIPCION IS 'Este campo proporciona una descripción detallada del expediente.';




COMMENT ON COLUMN EXPEDIENTE_MAE.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';



CREATE UNIQUE INDEX XPKEXPEDIENTE ON EXPEDIENTE_MAE
(EXPEDIENTE_ID   ASC);



ALTER TABLE EXPEDIENTE_MAE
	ADD CONSTRAINT  XPKEXPEDIENTE PRIMARY KEY (EXPEDIENTE_ID);



CREATE TABLE OCURRENCIA_TRAN
(
	OCURRENCIA_ID        INTEGER NOT NULL ,
	FECHA_REGISTRO       DATE NULL ,
	HORA_REGISTRO        DATE NULL ,
	AREA_OCURRENCIA      VARCHAR2(20) NULL ,
	FECHA_OCURRENCIA     DATE NULL ,
	HORA_OCURRENCIA      DATE NULL ,
	DETALLE              VARCHAR2(20) NULL ,
	VOZ_GRABADA          BLOB NULL ,
	USUARIO_ID           INTEGER NULL ,
	PERSONA_PPL_ID       INTEGER NULL 
);



COMMENT ON TABLE OCURRENCIA_TRAN IS 'Esta tabla registra las ocurrencias o incidentes dentro de los establecimientos penitenciarios, incluyendo la descripción del evento y las acciones tomadas.';




COMMENT ON COLUMN OCURRENCIA_TRAN.OCURRENCIA_ID IS 'Este campo almacena el identificador único de la ocurrencia y es utilizado como clave primaria para distinguir entre diferentes ocurrencias.';




COMMENT ON COLUMN OCURRENCIA_TRAN.FECHA_REGISTRO IS 'Este campo almacena la fecha de registro de la ocurrencia.';




COMMENT ON COLUMN OCURRENCIA_TRAN.HORA_REGISTRO IS 'Este campo almacena la hora de registro de la ocurrencia.';




COMMENT ON COLUMN OCURRENCIA_TRAN.AREA_OCURRENCIA IS 'Este campo indica el área donde ocurrió el evento.';




COMMENT ON COLUMN OCURRENCIA_TRAN.FECHA_OCURRENCIA IS 'Este campo almacena la fecha en que ocurrió el evento.';




COMMENT ON COLUMN OCURRENCIA_TRAN.HORA_OCURRENCIA IS 'Este campo almacena la hora en que ocurrió el evento.';




COMMENT ON COLUMN OCURRENCIA_TRAN.DETALLE IS 'Este campo proporciona detalles adicionales sobre la ocurrencia.';




COMMENT ON COLUMN OCURRENCIA_TRAN.VOZ_GRABADA IS 'Este campo almacena un archivo de voz grabada relacionado con la ocurrencia.';




COMMENT ON COLUMN OCURRENCIA_TRAN.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';




COMMENT ON COLUMN OCURRENCIA_TRAN.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';



CREATE UNIQUE INDEX XPKOCURRENCIA ON OCURRENCIA_TRAN
(OCURRENCIA_ID   ASC);



ALTER TABLE OCURRENCIA_TRAN
	ADD CONSTRAINT  XPKOCURRENCIA PRIMARY KEY (OCURRENCIA_ID);



CREATE TABLE OFICINA_REGIONAL_MAE
(
	OFICINA_ID           INTEGER NOT NULL ,
	NOMBRE               VARCHAR2(20) NULL ,
	DESCRIPCION          VARCHAR2(20) NULL ,
	DEPARTAMENTO         VARCHAR2(20) NULL 
);



COMMENT ON TABLE OFICINA_REGIONAL_MAE IS 'Esta tabla almacena información sobre las diferentes oficinas regionales que administran varios establecimientos penitenciarios.';




COMMENT ON COLUMN OFICINA_REGIONAL_MAE.OFICINA_ID IS 'Este campo almacena el identificador único para cada oficina regional y es utilizado como clave primaria para distinguir entre diferentes oficinas.';




COMMENT ON COLUMN OFICINA_REGIONAL_MAE.NOMBRE IS 'Este campo almacena el nombre de la oficina regional. Debe ser una cadena descriptiva que identifique claramente la oficina.';




COMMENT ON COLUMN OFICINA_REGIONAL_MAE.DESCRIPCION IS 'Este campo proporciona una descripción más detallada sobre la oficina regional, incluyendo información adicional relevante.';




COMMENT ON COLUMN OFICINA_REGIONAL_MAE.DEPARTAMENTO IS 'Este campo indica el departamento geográfico al que pertenece la oficina regional.';



CREATE UNIQUE INDEX XPKOFICINA_REGIONAL ON OFICINA_REGIONAL_MAE
(OFICINA_ID   ASC);



ALTER TABLE OFICINA_REGIONAL_MAE
	ADD CONSTRAINT  XPKOFICINA_REGIONAL PRIMARY KEY (OFICINA_ID);



CREATE TABLE PERSONA_PPL_MAE
(
	PERSONA_PPL_ID       INTEGER NOT NULL ,
	NUM_DOCUMENTO        VARCHAR2(20) NULL ,
	APELLIDO_PATERNO     VARCHAR2(20) NULL ,
	APELLIDO_MATERNO     VARCHAR2(20) NULL ,
	NOMBRE               VARCHAR2(20) NULL ,
	FECHA_INGRESO        DATE NULL ,
	ESTADO_CIVIL         VARCHAR2(20) NULL ,
	GENERO               VARCHAR2(20) NULL ,
	FECHA_NACIMIENTO     DATE NULL ,
	PROCEDENCIA          VARCHAR2(20) NULL ,
	OFICINA_ID           INTEGER NULL ,
	ESTABLECIMIENTO_ID   INTEGER NULL ,
	TIPO_SEGURO_ID       INTEGER NULL ,
	EDAD                 INTEGER NULL ,
	TIPO_DOCUMENTO       VARCHAR2(20) NULL ,
	GRUPO_SANGUINEO      VARCHAR2(20) NULL ,
	LUGAR_NACIMIENTO     VARCHAR2(20) NULL ,
	PROFESION            VARCHAR2(20) NULL ,
	GRADO_INSTRUCCION    VARCHAR2(20) NULL ,
	DOMICILIO            VARCHAR2(20) NULL ,
	ESTADO               INTEGER NULL 
);



COMMENT ON TABLE PERSONA_PPL_MAE IS 'Esta tabla guarda información sobre las personas procesadas o sentenciadas, incluyendo datos personales y el estado de su proceso judicial.';




COMMENT ON COLUMN PERSONA_PPL_MAE.PERSONA_PPL_ID IS 'Este campo almacena el número de ingreso de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.NUM_DOCUMENTO IS 'Este campo almacena el número del documento de identificación de la persona.';




COMMENT ON COLUMN PERSONA_PPL_MAE.APELLIDO_PATERNO IS 'Este campo almacena el apellido paterno de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.APELLIDO_MATERNO IS 'Este campo almacena el apellido materno de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.NOMBRE IS 'Este campo almacena los nombres de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.FECHA_INGRESO IS 'Este campo almacena la fecha de ingreso de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.ESTADO_CIVIL IS 'Este campo indica el estado actual de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.GENERO IS 'Indica el sexo de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.FECHA_NACIMIENTO IS 'Indica la fecha de nacimiento de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.PROCEDENCIA IS 'Indica la nacionalidad de la persona procesada o sentenciada.';




COMMENT ON COLUMN PERSONA_PPL_MAE.OFICINA_ID IS 'Este campo almacena el identificador único para cada oficina regional y es utilizado como clave primaria para distinguir entre diferentes oficinas.';




COMMENT ON COLUMN PERSONA_PPL_MAE.ESTABLECIMIENTO_ID IS 'Este campo almacena el identificador único del establecimiento penitenciario y es utilizado como clave primaria para distinguir entre diferentes establecimientos.';




COMMENT ON COLUMN PERSONA_PPL_MAE.TIPO_SEGURO_ID IS 'Identificador del tipo de seguro de salud de la persona.';




COMMENT ON COLUMN PERSONA_PPL_MAE.EDAD IS 'Edad actual de la persona.';




COMMENT ON COLUMN PERSONA_PPL_MAE.TIPO_DOCUMENTO IS 'Tipo de documento de identidad.';




COMMENT ON COLUMN PERSONA_PPL_MAE.GRUPO_SANGUINEO IS 'Grupo sanguíneo de la persona.';




COMMENT ON COLUMN PERSONA_PPL_MAE.LUGAR_NACIMIENTO IS 'Lugar de nacimiento de la persona';




COMMENT ON COLUMN PERSONA_PPL_MAE.PROFESION IS 'Profesión o ocupación de la persona antes de su detención.';




COMMENT ON COLUMN PERSONA_PPL_MAE.GRADO_INSTRUCCION IS 'Nivel de instrucción o educación alcanzado por la persona.';




COMMENT ON COLUMN PERSONA_PPL_MAE.DOMICILIO IS 'Dirección de residencia de la persona antes de su detención.';




COMMENT ON COLUMN PERSONA_PPL_MAE.ESTADO IS 'Estado actual de la persona';



CREATE UNIQUE INDEX XPKPERSONA_PROCESADA_SENTENCIA ON PERSONA_PPL_MAE
(PERSONA_PPL_ID   ASC);



ALTER TABLE PERSONA_PPL_MAE
	ADD CONSTRAINT  XPKPERSONA_PROCESADA_SENTENCIA PRIMARY KEY (PERSONA_PPL_ID);



CREATE TABLE USUARIO_MAE
(
	USUARIO_ID           INTEGER NOT NULL ,
	APELLIDO_PATERNO     VARCHAR2(20) NULL ,
	APELLIDO_MATERNO     VARCHAR2(20) NULL ,
	NOMBRES              VARCHAR2(20) NULL ,
	NUM_DOCUMENTO        VARCHAR2(20) NULL ,
	ESTADO               CHAR(18) NULL ,
	CLAVE_ENCRIPTADA     VARCHAR2(20) NULL 
);



COMMENT ON TABLE USUARIO_MAE IS 'Esta tabla almacena la información de los usuarios del sistema, incluyendo sus credenciales, roles y permisos de acceso.';




COMMENT ON COLUMN USUARIO_MAE.USUARIO_ID IS 'Este campo almacena el identificador único del usuario y es utilizado como clave primaria para distinguir entre diferentes usuarios.';




COMMENT ON COLUMN USUARIO_MAE.APELLIDO_PATERNO IS 'Este campo almacena el apellido paterno del usuario.';




COMMENT ON COLUMN USUARIO_MAE.APELLIDO_MATERNO IS 'Este campo almacena el apellido materno del usuario.';




COMMENT ON COLUMN USUARIO_MAE.NOMBRES IS 'Este campo almacena los nombres del usuario.';




COMMENT ON COLUMN USUARIO_MAE.NUM_DOCUMENTO IS 'Este campo almacena el número del documento de identificación del usuario.';




COMMENT ON COLUMN USUARIO_MAE.ESTADO IS 'Este campo indica el estado actual del usuario.';




COMMENT ON COLUMN USUARIO_MAE.CLAVE_ENCRIPTADA IS 'Este campo almacena la clave encriptada del usuario.';



CREATE UNIQUE INDEX XPKUSUARIO ON USUARIO_MAE
(USUARIO_ID   ASC);



ALTER TABLE USUARIO_MAE
	ADD CONSTRAINT  XPKUSUARIO PRIMARY KEY (USUARIO_ID);



ALTER TABLE ACCION_TRAN
	ADD (CONSTRAINT R_58 FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_MAE (USUARIO_ID) ON DELETE SET NULL);



ALTER TABLE ACCION_TRAN
	ADD (CONSTRAINT R_59 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE ACTA_INCAUTACION_CAB
	ADD (CONSTRAINT R_55 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE ACTA_INCAUTACION_CAB
	ADD (CONSTRAINT R_56 FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_MAE (USUARIO_ID) ON DELETE SET NULL);



ALTER TABLE ACTA_INCAUTACION_DET
	ADD (CONSTRAINT R_57 FOREIGN KEY (ACTA_ID) REFERENCES ACTA_INCAUTACION_CAB (ACTA_ID) ON DELETE SET NULL);



ALTER TABLE CLASIFICACION_TRAN
	ADD (CONSTRAINT R_66 FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_MAE (USUARIO_ID) ON DELETE SET NULL);



ALTER TABLE CLASIFICACION_TRAN
	ADD (CONSTRAINT R_67 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE DOCUMENTO_DET
	ADD (CONSTRAINT R_62 FOREIGN KEY (ACCION_ID) REFERENCES ACCION_TRAN (ACCION_ID) ON DELETE SET NULL);



ALTER TABLE ESCANEO_TRAN
	ADD (CONSTRAINT R_53 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE ESCANEO_TRAN
	ADD (CONSTRAINT R_54 FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_MAE (USUARIO_ID) ON DELETE SET NULL);



ALTER TABLE EST_PENITENCIARIO_MAE
	ADD (CONSTRAINT R_1 FOREIGN KEY (OFICINA_ID) REFERENCES OFICINA_REGIONAL_MAE (OFICINA_ID));



ALTER TABLE EXPEDIENTE_MAE
	ADD (CONSTRAINT R_61 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE OCURRENCIA_TRAN
	ADD (CONSTRAINT R_63 FOREIGN KEY (USUARIO_ID) REFERENCES USUARIO_MAE (USUARIO_ID) ON DELETE SET NULL);



ALTER TABLE OCURRENCIA_TRAN
	ADD (CONSTRAINT R_64 FOREIGN KEY (PERSONA_PPL_ID) REFERENCES PERSONA_PPL_MAE (PERSONA_PPL_ID) ON DELETE SET NULL);



ALTER TABLE PERSONA_PPL_MAE
	ADD (CONSTRAINT R_52 FOREIGN KEY (OFICINA_ID, ESTABLECIMIENTO_ID) REFERENCES EST_PENITENCIARIO_MAE (OFICINA_ID, ESTABLECIMIENTO_ID) ON DELETE SET NULL);


