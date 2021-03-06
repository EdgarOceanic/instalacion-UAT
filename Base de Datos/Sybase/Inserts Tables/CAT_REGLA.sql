﻿INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) 
VALUES ('10M','M',1,'Condicionado a las caracterizticas del producto',1);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) 
VALUES ('11M','M',2,'Titular de la Cuenta bancaria en donde se realiza el Reembolso relacionada al Afectado',2);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) 
VALUES ('1CE','CE',1,'Agentes',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('1D','D',2,'Facturas Duplicadas',2);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('1E','E',3,'Asegurados_ Emisión',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('1M','M',2,'Padecimientos no acordes a la edad del afectado',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('2CE','CE',1,'Asegurados_ Siniestros',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('2D','D',2,'Siniestros Duplicados',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('2M','M',2,'Padecimientos no acordes al sexo del afectado',1);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('3CE','CE',1,'Médicos',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('3D','D',2,'Cuentas bancarias Duplicadas',2);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('3M','M',2,'Tiempo de resolución del padecimiento',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('4CE','CE',1,'Laboratorios',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('4D','D',2,'Asegurados_ Emisión',2);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('4M','M',1,'CIE (Clasificación internacional de enfermedades) vs CPT 4 (Terminología actual de procedimientos)',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('5CE','CE',1,'Hospitales',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('5M','M',1,'Padecimientos y Proveedor no acordes al tipo de atención hospitalaria',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('6CE','CE',2,'Cuentas bancarias',3);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('6M','M',2,'Días de estancia Hospitalaria',1);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('7M','M',1,'Monto medio del procedimiento (+2sd)',1);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('8M','M',1,'Proclives a fraude si ocurre en el 1er año',1);
INSERT INTO CAT_REGLA (Cve,Tipo,Aplicacion,Descripcion,Riesgo) VALUES ('9M','M',1,'CIE 10  que se relacionan a CX estéticas',1);
COMMIT;

