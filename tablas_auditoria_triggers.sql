--TRIGGERS PARA CADA TABLA DE AUDITORIA
--TABLAS MAESTRAS DE AUDITORIA
CREATE OR REPLACE TRIGGER TR_AUDIT_GRADO_ACADEM
BEFORE INSERT OR UPDATE OR DELETE ON GRADO_ACADEM
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_GRADO_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_GRA_ACA,
        :NEW.GRADO_ACADEM,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_GRADO_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_GRA_ACA,
        :NEW.GRADO_ACADEM,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_GRADO_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_GRA_ACA,
        :OLD.GRADO_ACADEM,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_UBIGEO
BEFORE INSERT OR UPDATE OR DELETE ON UBIGEO
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_UBIGEO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_UBIGEO,
        :NEW.DISTRITO,
        :NEW.PROVINCIA,
        :NEW.DEPARTAMENTO,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_UBIGEO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_UBIGEO,
        :NEW.DISTRITO,
        :NEW.PROVINCIA,
        :NEW.DEPARTAMENTO,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_UBIGEO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_UBIGEO,
        :OLD.DISTRITO,
        :OLD.PROVINCIA,
        :OLD.DEPARTAMENTO,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_ESTAD_CIV
BEFORE INSERT OR UPDATE OR DELETE ON ESTAD_CIV
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_ESTAD_CIV VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EST_CIV,
        :NEW.ESTADO_CIVIL,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_ESTAD_CIV VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EST_CIV,
        :NEW.ESTADO_CIVIL,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_ESTAD_CIV VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_EST_CIV,
        :OLD.ESTADO_CIVIL,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_CAT_BREVETE
BEFORE INSERT OR UPDATE OR DELETE ON CAT_BREVETE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_CAT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CAT_BREV,
        :NEW.CATE_BREV,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_CAT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CAT_BREV,
        :NEW.CATE_BREV,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_CAT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_CAT_BREV,
        :OLD.CATE_BREV,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_NIVEL_IDIOMA
BEFORE INSERT OR UPDATE OR DELETE ON NIVEL_IDIOMA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_NIVEL_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_NIV_IDIOMA,
        :NEW.NIVEL_IDIOMA,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_NIVEL_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_NIV_IDIOMA,
        :NEW.NIVEL_IDIOMA,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_NIVEL_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_NIV_IDIOMA,
        :OLD.NIVEL_IDIOMA,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_IDIOMA
BEFORE INSERT OR UPDATE OR DELETE ON IDIOMA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_IDIOMA,
        :NEW.IDIOMA,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_IDIOMA,
        :NEW.IDIOMA,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_IDIOMA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_IDIOMA,
        :OLD.IDIOMA,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_JEFE
BEFORE INSERT OR UPDATE OR DELETE ON JEFE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_JEFE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_JEFE,
        :NEW.CARGO_JEFE,
        :NEW.CARGO_JEFE,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_JEFE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_JEFE,
        :NEW.CARGO_JEFE,
        :NEW.CARGO_JEFE,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_JEFE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_JEFE,
        :OLD.CARGO_JEFE,
        :OLD.CARGO_JEFE,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_SALARIO
BEFORE INSERT OR UPDATE OR DELETE ON SALARIO
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_SALARIO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_SALARIO,
        :NEW.SALARIO,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_SALARIO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_SALARIO,
        :NEW.SALARIO,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_SALARIO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_SALARIO,
        :OLD.SALARIO,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_CAPACITACION
BEFORE INSERT OR UPDATE OR DELETE ON CAPACITACION
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_CAPACITACION VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CAPACI,
        :NEW.INICIO_MES_A�O,
        :NEW.FIN_MES_A�O,
        :NEW.CURSO_EVENTO,
        :NEW.INSTITUCION,
        :NEW.HORAS_LECT,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_CAPACITACION VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CAPACI,
        :NEW.INICIO_MES_A�O,
        :NEW.FIN_MES_A�O,
        :NEW.CURSO_EVENTO,
        :NEW.INSTITUCION,
        :NEW.HORAS_LECT,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_CAPACITACION VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_CAPACI,
        :OLD.INICIO_MES_A�O,
        :OLD.FIN_MES_A�O,
        :OLD.CURSO_EVENTO,
        :OLD.INSTITUCION,
        :OLD.HORAS_LECT,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_CARGO
BEFORE INSERT OR UPDATE OR DELETE ON CARGO
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_CARGO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CARGO,
        :NEW.CARGO,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_CARGO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_CARGO,
        :NEW.CARGO,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_CARGO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_CARGO,
        :OLD.CARGO,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_EMPRESA
BEFORE INSERT OR UPDATE OR DELETE ON EMPRESA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_EMPRESA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EMPRESA,
        :NEW.NOMBRE_EMPRESA,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_EMPRESA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EMPRESA,
        :NEW.NOMBRE_EMPRESA,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_EMPRESA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_EMPRESA,
        :OLD.NOMBRE_EMPRESA,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_AREA
BEFORE INSERT OR UPDATE OR DELETE ON AREA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_AREA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_AREA,
        :NEW.AREA,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_AREA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_AREA,
        :NEW.AREA,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_AREA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_AREA,
        :OLD.AREA,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_TIPO_FORM_ACA
BEFORE INSERT OR UPDATE OR DELETE ON TIPO_FORM_ACA
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_TIPO_FORM_ACA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_TIPO_FA,
        :NEW.TIPO_FORM,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_TIPO_FORM_ACA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_TIPO_FA,
        :NEW.TIPO_FORM,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_TIPO_FORM_ACA VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_TIPO_FA,
        :OLD.TIPO_FORM,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;


--TABLAS DETALLE DE AUDITORIA
CREATE OR REPLACE TRIGGER TR_AUDIT_BREVETE
BEFORE INSERT OR UPDATE OR DELETE ON BREVETE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_BREVETE,
        :NEW.BREVETE,
        :NEW.CODIGO_CAT_BREV,
        :NEW.CAT_BREVETE_ID_CAT_BREV,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_BREVETE,
        :NEW.BREVETE,
        :NEW.CODIGO_CAT_BREV,
        :NEW.CAT_BREVETE_ID_CAT_BREV,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_BREVETE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_BREVETE,
        :OLD.BREVETE,
        :OLD.CODIGO_CAT_BREV,
        :OLD.CAT_BREVETE_ID_CAT_BREV,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_FORMA_ACADEM
BEFORE INSERT OR UPDATE OR DELETE ON FORMA_ACADEM
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_FORMA_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_FOR_ACA,
        :NEW.NOM_INST,
        :NEW.PRO_ESP,
        :NEW.FECHA_INICIO,
        :NEW.FECHA_FIN,
        :NEW.CODIGO_GRA_ACA,
        :NEW.GRADO_ACADEM_ID_GRA_ACA,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_FORMA_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_FOR_ACA,
        :NEW.NOM_INST,
        :NEW.PRO_ESP,
        :NEW.FECHA_INICIO,
        :NEW.FECHA_FIN,
        :NEW.CODIGO_GRA_ACA,
        :NEW.GRADO_ACADEM_ID_GRA_ACA,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_FORMA_ACADEM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_FOR_ACA,
        :OLD.NOM_INST,
        :OLD.PRO_ESP,
        :OLD.FECHA_INICIO,
        :OLD.FECHA_FIN,
        :OLD.CODIGO_GRA_ACA,
        :OLD.GRADO_ACADEM_ID_GRA_ACA,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_POSTULANTE
BEFORE INSERT OR UPDATE OR DELETE ON POSTULANTE
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_POSTULANTE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_POSTULANTE,
        :NEW.APE_PATERNO,
        :NEW.APE_MATERNO,
        :NEW.NOMBRES,
        :NEW.EDAD,
        :NEW.FEC_NAC,
        :NEW.SEXO,
        :NEW.DNI,
        :NEW.RUC,
        :NEW.DIRECCION,
        :NEW.LT_MZ,
        :NEW.TEL_FIJO,
        :NEW.TEL_CELULAR,
        :NEW.CORREO,
        :NEW.LUGAR_NAC,
        :NEW.CODIGO_UBIGEO,
        :NEW.CODIGO_EST_CIV,
        :NEW.CODIGO_BREVETE,
        :NEW.ESTAD_CIV_ID_EST_CIV,
        :NEW.BREVETE_ID_BREVETE,
        :NEW.UBIGEO_ID_UBIGEO,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_POSTULANTE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_POSTULANTE,
        :NEW.APE_PATERNO,
        :NEW.APE_MATERNO,
        :NEW.NOMBRES,
        :NEW.EDAD,
        :NEW.FEC_NAC,
        :NEW.SEXO,
        :NEW.DNI,
        :NEW.RUC,
        :NEW.DIRECCION,
        :NEW.LT_MZ,
        :NEW.TEL_FIJO,
        :NEW.TEL_CELULAR,
        :NEW.CORREO,
        :NEW.LUGAR_NAC,
        :NEW.CODIGO_UBIGEO,
        :NEW.CODIGO_EST_CIV,
        :NEW.CODIGO_BREVETE,
        :NEW.ESTAD_CIV_ID_EST_CIV,
        :NEW.BREVETE_ID_BREVETE,
        :NEW.UBIGEO_ID_UBIGEO,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_POSTULANTE VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_POSTULANTE,
        :OLD.APE_PATERNO,
        :OLD.APE_MATERNO,
        :OLD.NOMBRES,
        :OLD.EDAD,
        :OLD.FEC_NAC,
        :OLD.SEXO,
        :OLD.DNI,
        :OLD.RUC,
        :OLD.DIRECCION,
        :OLD.LT_MZ,
        :OLD.TEL_FIJO,
        :OLD.TEL_CELULAR,
        :OLD.CORREO,
        :OLD.LUGAR_NAC,
        :OLD.CODIGO_UBIGEO,
        :OLD.CODIGO_EST_CIV,
        :OLD.CODIGO_BREVETE,
        :OLD.ESTAD_CIV_ID_EST_CIV,
        :OLD.BREVETE_ID_BREVETE,
        :OLD.UBIGEO_ID_UBIGEO,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_IDIOMA_POST
BEFORE INSERT OR UPDATE OR DELETE ON IDIOMA_POST
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_IDIOMA_POST VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_IDIPOS,
        :NEW.CODIGO_POSTULANTE,
        :NEW.CODIGO_IDIOMA,
        :NEW.CODIGO_NIV_IDIOMA,
        :NEW.IDIOMA_ID_IDIOMA,
        :NEW.NIVEL_IDIOMA_ID_NIV_IDIOMA,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_IDIOMA_POST VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_IDIPOS,
        :NEW.CODIGO_POSTULANTE,
        :NEW.CODIGO_IDIOMA,
        :NEW.CODIGO_NIV_IDIOMA,
        :NEW.IDIOMA_ID_IDIOMA,
        :NEW.NIVEL_IDIOMA_ID_NIV_IDIOMA,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_IDIOMA_POST VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_IDIPOS,
        :OLD.CODIGO_POSTULANTE,
        :OLD.CODIGO_IDIOMA,
        :OLD.CODIGO_NIV_IDIOMA,
        :OLD.IDIOMA_ID_IDIOMA,
        :OLD.NIVEL_IDIOMA_ID_NIV_IDIOMA,
        :OLD.POSTULANTE_ID_POSTULANTE,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_DETALLE_FORM
BEFORE INSERT OR UPDATE OR DELETE ON DETALLE_FORM
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_DETALLE_FORM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_DETALLE_FORM,
        :NEW.CODIGO_FORM_ACA,
        :NEW.CODIGO_TIPO_FA,
        :NEW.CODIGO_POSTULANTE,
        :NEW.FORMA_ACADEM_ID_FOR_ACA,
        :NEW.TIPO_FORM_ACA_ID_TIPO_FA,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_DETALLE_FORM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_DETALLE_FORM,
        :NEW.CODIGO_FORM_ACA,
        :NEW.CODIGO_TIPO_FA,
        :NEW.CODIGO_POSTULANTE,
        :NEW.FORMA_ACADEM_ID_FOR_ACA,
        :NEW.TIPO_FORM_ACA_ID_TIPO_FA,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_DETALLE_FORM VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_DETALLE_FORM,
        :OLD.CODIGO_FORM_ACA,
        :OLD.CODIGO_TIPO_FA,
        :OLD.CODIGO_POSTULANTE,
        :OLD.FORMA_ACADEM_ID_FOR_ACA,
        :OLD.TIPO_FORM_ACA_ID_TIPO_FA,
        :OLD.POSTULANTE_ID_POSTULANTE,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;

--
CREATE OR REPLACE TRIGGER TR_AUDIT_EXPE_LABO
BEFORE INSERT OR UPDATE OR DELETE ON EXPE_LABO
FOR EACH ROW
BEGIN
    IF INSERTING THEN
    INSERT INTO AUDIT_EXPE_LABO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EXP_LAB,
        :NEW.FUNC_PRINCIP,
        :NEW.MOD_CONT,
        :NEW.MOT_RETIRO,
        :NEW.TIEMPO_SERV,
        :NEW.FECHA_INICIO,
        :NEW.FECHA_FIN,
        :NEW.TEL_OFICINA,
        :NEW.CODIGO_JEFE,
        :NEW.CODIGO_CAPACI,
        :NEW.CODIGO_EMPRESA,
        :NEW.CODIGO_CARGO,
        :NEW.CODIGO_AREA,
        :NEW.CODIGO_SALARIO,
        :NEW.CODIGO_POSTULANTE,
        :NEW.JEFE_ID_JEFE,
        :NEW.CAPACITACION_ID_CAPACI,
        :NEW.EMPRESA_ID_EMPRESA,
        :NEW.CARGO_ID_CARGO,
        :NEW.AREA_ID_AREA,
        :NEW.SALARIO_ID_SLARIO,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'INSERT');
    END IF;
 
    IF UPDATING THEN
    INSERT INTO AUDIT_EXPE_LABO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :NEW.CODIGO_EXP_LAB,
        :NEW.FUNC_PRINCIP,
        :NEW.MOD_CONT,
        :NEW.MOT_RETIRO,
        :NEW.TIEMPO_SERV,
        :NEW.FECHA_INICIO,
        :NEW.FECHA_FIN,
        :NEW.TEL_OFICINA,
        :NEW.CODIGO_JEFE,
        :NEW.CODIGO_CAPACI,
        :NEW.CODIGO_EMPRESA,
        :NEW.CODIGO_CARGO,
        :NEW.CODIGO_AREA,
        :NEW.CODIGO_SALARIO,
        :NEW.CODIGO_POSTULANTE,
        :NEW.JEFE_ID_JEFE,
        :NEW.CAPACITACION_ID_CAPACI,
        :NEW.EMPRESA_ID_EMPRESA,
        :NEW.CARGO_ID_CARGO,
        :NEW.AREA_ID_AREA,
        :NEW.SALARIO_ID_SLARIO,
        :NEW.POSTULANTE_ID_POSTULANTE,
        :NEW.ESTADO,
        'UPDATE');
    END IF;
     
    IF DELETING THEN 
    INSERT INTO AUDIT_EXPE_LABO VALUES (
        USER,
        SYSDATE,
        TO_CHAR(SYSDATE, 'HH24:MI:SS'),
        :OLD.CODIGO_EXP_LAB,
        :OLD.FUNC_PRINCIP,
        :OLD.MOD_CONT,
        :OLD.MOT_RETIRO,
        :OLD.TIEMPO_SERV,
        :OLD.FECHA_INICIO,
        :OLD.FECHA_FIN,
        :OLD.TEL_OFICINA,
        :OLD.CODIGO_JEFE,
        :OLD.CODIGO_CAPACI,
        :OLD.CODIGO_EMPRESA,
        :OLD.CODIGO_CARGO,
        :OLD.CODIGO_AREA,
        :OLD.CODIGO_SALARIO,
        :OLD.CODIGO_POSTULANTE,
        :OLD.JEFE_ID_JEFE,
        :OLD.CAPACITACION_ID_CAPACI,
        :OLD.EMPRESA_ID_EMPRESA,
        :OLD.CARGO_ID_CARGO,
        :OLD.AREA_ID_AREA,
        :OLD.SALARIO_ID_SLARIO,
        :OLD.POSTULANTE_ID_POSTULANTE,
        :OLD.ESTADO,
        'DELETE');
    END IF;
END;







