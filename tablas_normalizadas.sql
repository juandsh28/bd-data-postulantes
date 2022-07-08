-- Generado por Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   en:        2021-12-14 17:33:24 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE area (
    id_area      INTEGER NOT NULL,
    codigo_area  NVARCHAR2(20) NOT NULL,
    area         NVARCHAR2(100) NOT NULL
);

ALTER TABLE area ADD CONSTRAINT area_pk PRIMARY KEY ( id_area );

CREATE TABLE brevete (
    id_brevete               INTEGER NOT NULL,
    codigo_brevete           NVARCHAR2(20) NOT NULL,
    brevete                  NVARCHAR2(100) NOT NULL,
    codigo_cat_brev          NVARCHAR2(20) NOT NULL,
    cat_brevete_id_cat_brev  INTEGER NOT NULL
);

ALTER TABLE brevete ADD CONSTRAINT brevete_pk PRIMARY KEY ( id_brevete );

CREATE TABLE capacitacion (
    id_capaci       INTEGER NOT NULL,
    codigo_capaci   NVARCHAR2(20) NOT NULL,
    inicio_mes_año  NVARCHAR2(20) NOT NULL,
    fin_mes_año     NVARCHAR2(20) NOT NULL,
    curso_evento    NVARCHAR2(200) NOT NULL,
    institucion     NVARCHAR2(100) NOT NULL,
    horas_lect      NVARCHAR2(20) NOT NULL
);

ALTER TABLE capacitacion ADD CONSTRAINT capacitacion_pk PRIMARY KEY ( id_capaci );

CREATE TABLE cargo (
    id_cargo      INTEGER NOT NULL,
    codigo_cargo  NVARCHAR2(20) NOT NULL,
    cargo         NVARCHAR2(100) NOT NULL
);

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( id_cargo );

CREATE TABLE cat_brevete (
    id_cat_brev      INTEGER NOT NULL,
    codigo_cat_brev  NVARCHAR2(20) NOT NULL,
    cate_brev        NVARCHAR2(20) NOT NULL
);

ALTER TABLE cat_brevete ADD CONSTRAINT cat_brevete_pk PRIMARY KEY ( id_cat_brev );

CREATE TABLE detalle_form (
    id_detalle_form           INTEGER NOT NULL,
    codigo_detalle_form       NVARCHAR2(20) NOT NULL,
    codigo_form_aca           NVARCHAR2(20) NOT NULL,
    codigo_tipo_fa            NVARCHAR2(20) NOT NULL,
    codigo_postulante         NVARCHAR2(20) NOT NULL,
    forma_academ_id_for_aca   INTEGER NOT NULL,
    tipo_form_aca_id_tipo_fa  INTEGER NOT NULL,
    postulante_id_postulante  INTEGER NOT NULL
);

ALTER TABLE detalle_form ADD CONSTRAINT detalle_form_pk PRIMARY KEY ( id_detalle_form );

CREATE TABLE empresa (
    id_empresa      INTEGER NOT NULL,
    codigo_empresa  NVARCHAR2(20) NOT NULL,
    nombre_empresa  NVARCHAR2(100) NOT NULL
);

ALTER TABLE empresa ADD CONSTRAINT empresa_pk PRIMARY KEY ( id_empresa );

CREATE TABLE estad_civ (
    id_est_civ      INTEGER NOT NULL,
    codigo_est_civ  NVARCHAR2(20) NOT NULL,
    estado_civil    NVARCHAR2(50) NOT NULL
);

ALTER TABLE estad_civ ADD CONSTRAINT estad_civ_pk PRIMARY KEY ( id_est_civ );

CREATE TABLE expe_labo (
    id_exp_lab                INTEGER NOT NULL,
    codigo_exp_lab            NVARCHAR2(20) NOT NULL,
    func_princip              NVARCHAR2(200) NOT NULL,
    mod_cont                  NVARCHAR2(100) NOT NULL,
    mot_retiro                NVARCHAR2(100) NOT NULL,
    tiempo_serv               NVARCHAR2(50) NOT NULL,
    fecha_inicio              NVARCHAR2(50) NOT NULL,
    fecha_fin                 NVARCHAR2(50) NOT NULL,
    tel_oficina               NVARCHAR2(20) NOT NULL,
    codigo_jefe               NVARCHAR2(20) NOT NULL,
    codigo_capaci             NVARCHAR2(20) NOT NULL,
    codigo_empresa            NVARCHAR2(20) NOT NULL,
    codigo_cargo              NVARCHAR2(20) NOT NULL,
    codigo_area               NVARCHAR2(20) NOT NULL,
    codigo_salario            NVARCHAR2(20) NOT NULL,
    codigo_postulante         NVARCHAR2(20) NOT NULL,
    jefe_id_jefe              INTEGER NOT NULL,
    capacitacion_id_capaci    INTEGER NOT NULL,
    empresa_id_empresa        INTEGER NOT NULL,
    cargo_id_cargo            INTEGER NOT NULL,
    area_id_area              INTEGER NOT NULL,
    salario_id_slario         INTEGER NOT NULL,
    postulante_id_postulante  INTEGER NOT NULL
);

ALTER TABLE expe_labo ADD CONSTRAINT expe_labo_pk PRIMARY KEY ( id_exp_lab );

CREATE TABLE forma_academ (
    id_for_aca               INTEGER NOT NULL,
    codigo_for_aca           NVARCHAR2(20) NOT NULL,
    nom_inst                 NVARCHAR2(50) NOT NULL,
    pro_esp                  NVARCHAR2(100) NOT NULL,
    fecha_inicio             NVARCHAR2(20) NOT NULL,
    fecha_fin                NVARCHAR2(20) NOT NULL,
    codigo_gra_aca           NVARCHAR2(20) NOT NULL,
    grado_academ_id_gra_aca  INTEGER NOT NULL
);

ALTER TABLE forma_academ ADD CONSTRAINT forma_academ_pk PRIMARY KEY ( id_for_aca );

CREATE TABLE grado_academ (
    id_gra_aca      INTEGER NOT NULL,
    codigo_gra_aca  NVARCHAR2(20) NOT NULL,
    grado_academ    NVARCHAR2(50) NOT NULL
);

ALTER TABLE grado_academ ADD CONSTRAINT grado_academ_pk PRIMARY KEY ( id_gra_aca );

CREATE TABLE idioma (
    id_idioma      INTEGER NOT NULL,
    codigo_idioma  NVARCHAR2(20) NOT NULL,
    idioma         NVARCHAR2(100) NOT NULL
);

ALTER TABLE idioma ADD CONSTRAINT idioma_pk PRIMARY KEY ( id_idioma );

CREATE TABLE idioma_post (
    id_idipos                   INTEGER NOT NULL,
    codigo_idipos               NVARCHAR2(20) NOT NULL,
    codigo_postulante           NVARCHAR2(20) NOT NULL,
    codigo_idioma               NVARCHAR2(20) NOT NULL,
    codigo_niv_idioma           NVARCHAR2(20) NOT NULL,
    idioma_id_idioma            INTEGER NOT NULL,
    nivel_idioma_id_niv_idioma  INTEGER NOT NULL,
    postulante_id_postulante    INTEGER NOT NULL
);

ALTER TABLE idioma_post ADD CONSTRAINT idioma_post_pk PRIMARY KEY ( id_idipos );

CREATE TABLE jefe (
    id_jefe      INTEGER NOT NULL,
    codigo_jefe  NVARCHAR2(20) NOT NULL,
    nombre_jefe  NVARCHAR2(100) NOT NULL,
    cargo_jefe   NVARCHAR2(50) NOT NULL
);

ALTER TABLE jefe ADD CONSTRAINT jefe_pk PRIMARY KEY ( id_jefe );

CREATE TABLE nivel_idioma (
    id_niv_idioma      INTEGER NOT NULL,
    codigo_niv_idioma  NVARCHAR2(20) NOT NULL,
    nivel_idioma       NVARCHAR2(50) NOT NULL
);

ALTER TABLE nivel_idioma ADD CONSTRAINT nivel_idioma_pk PRIMARY KEY ( id_niv_idioma );

CREATE TABLE postulante (
    id_postulante         INTEGER NOT NULL,
    codigo_postulante     NVARCHAR2(20) NOT NULL,
    ape_paterno           NVARCHAR2(100) NOT NULL,
    ape_materno           NVARCHAR2(100) NOT NULL,
    nombres               NVARCHAR2(100) NOT NULL,
    edad                  NVARCHAR2(50) NOT NULL,
    fec_nac               NVARCHAR2(50) NOT NULL,
    sexo                  NVARCHAR2(20) NOT NULL,
    dni                   NVARCHAR2(20) NOT NULL,
    ruc                   NVARCHAR2(50) NOT NULL,
    direccion             NVARCHAR2(50) NOT NULL,
    lt_mz                 NVARCHAR2(50) NOT NULL,
    tel_fijo              NVARCHAR2(20) NOT NULL,
    tel_celular           NVARCHAR2(20) NOT NULL,
    correo                NVARCHAR2(100) NOT NULL,
    lugar_nac             NVARCHAR2(20) NOT NULL,
    codigo_ubigeo         NVARCHAR2(20) NOT NULL,
    codigo_est_civ        NVARCHAR2(20) NOT NULL,
    codigo_brevete        NVARCHAR2(20) NOT NULL,
    estad_civ_id_est_civ  INTEGER NOT NULL,
    brevete_id_brevete    INTEGER NOT NULL,
    ubigeo_id_ubigeo      INTEGER NOT NULL
);

ALTER TABLE postulante ADD CONSTRAINT postulante_pk PRIMARY KEY ( id_postulante );

CREATE TABLE salario (
    id_slario       INTEGER NOT NULL,
    codigo_salario  NVARCHAR2(20) NOT NULL,
    salario         NVARCHAR2(50) NOT NULL
);

ALTER TABLE salario ADD CONSTRAINT salario_pk PRIMARY KEY ( id_slario );

CREATE TABLE tipo_form_aca (
    id_tipo_fa      INTEGER NOT NULL,
    codigo_tipo_fa  NVARCHAR2(20) NOT NULL,
    tipo_form       NVARCHAR2(100) NOT NULL
);

ALTER TABLE tipo_form_aca ADD CONSTRAINT tipo_form_aca_pk PRIMARY KEY ( id_tipo_fa );

CREATE TABLE ubigeo (
    id_ubigeo      INTEGER NOT NULL,
    codigo_ubigeo  NVARCHAR2(20) NOT NULL,
    distrito       NVARCHAR2(100) NOT NULL,
    provincia      NVARCHAR2(100) NOT NULL,
    departamento   NVARCHAR2(100) NOT NULL
);

ALTER TABLE ubigeo ADD CONSTRAINT ubigeo_pk PRIMARY KEY ( id_ubigeo );

ALTER TABLE brevete
    ADD CONSTRAINT brevete_cat_brevete_fk FOREIGN KEY ( cat_brevete_id_cat_brev )
        REFERENCES cat_brevete ( id_cat_brev )
            ON DELETE CASCADE;

ALTER TABLE detalle_form
    ADD CONSTRAINT detalle_form_forma_academ_fk FOREIGN KEY ( forma_academ_id_for_aca )
        REFERENCES forma_academ ( id_for_aca )
            ON DELETE CASCADE;

ALTER TABLE detalle_form
    ADD CONSTRAINT detalle_form_postulante_fk FOREIGN KEY ( postulante_id_postulante )
        REFERENCES postulante ( id_postulante )
            ON DELETE CASCADE;

ALTER TABLE detalle_form
    ADD CONSTRAINT detalle_form_tipo_form_aca_fk FOREIGN KEY ( tipo_form_aca_id_tipo_fa )
        REFERENCES tipo_form_aca ( id_tipo_fa )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_area_fk FOREIGN KEY ( area_id_area )
        REFERENCES area ( id_area )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_capacitacion_fk FOREIGN KEY ( capacitacion_id_capaci )
        REFERENCES capacitacion ( id_capaci )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_cargo_fk FOREIGN KEY ( cargo_id_cargo )
        REFERENCES cargo ( id_cargo )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_empresa_fk FOREIGN KEY ( empresa_id_empresa )
        REFERENCES empresa ( id_empresa )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_jefe_fk FOREIGN KEY ( jefe_id_jefe )
        REFERENCES jefe ( id_jefe )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_postulante_fk FOREIGN KEY ( postulante_id_postulante )
        REFERENCES postulante ( id_postulante )
            ON DELETE CASCADE;

ALTER TABLE expe_labo
    ADD CONSTRAINT expe_labo_salario_fk FOREIGN KEY ( salario_id_slario )
        REFERENCES salario ( id_slario )
            ON DELETE CASCADE;

ALTER TABLE forma_academ
    ADD CONSTRAINT forma_academ_grado_academ_fk FOREIGN KEY ( grado_academ_id_gra_aca )
        REFERENCES grado_academ ( id_gra_aca )
            ON DELETE CASCADE;

ALTER TABLE idioma_post
    ADD CONSTRAINT idioma_post_idioma_fk FOREIGN KEY ( idioma_id_idioma )
        REFERENCES idioma ( id_idioma )
            ON DELETE CASCADE;

ALTER TABLE idioma_post
    ADD CONSTRAINT idioma_post_nivel_idioma_fk FOREIGN KEY ( nivel_idioma_id_niv_idioma )
        REFERENCES nivel_idioma ( id_niv_idioma )
            ON DELETE CASCADE;

ALTER TABLE idioma_post
    ADD CONSTRAINT idioma_post_postulante_fk FOREIGN KEY ( postulante_id_postulante )
        REFERENCES postulante ( id_postulante )
            ON DELETE CASCADE;

ALTER TABLE postulante
    ADD CONSTRAINT postulante_brevete_fk FOREIGN KEY ( brevete_id_brevete )
        REFERENCES brevete ( id_brevete )
            ON DELETE CASCADE;

ALTER TABLE postulante
    ADD CONSTRAINT postulante_estad_civ_fk FOREIGN KEY ( estad_civ_id_est_civ )
        REFERENCES estad_civ ( id_est_civ )
            ON DELETE CASCADE;

ALTER TABLE postulante
    ADD CONSTRAINT postulante_ubigeo_fk FOREIGN KEY ( ubigeo_id_ubigeo )
        REFERENCES ubigeo ( id_ubigeo )
            ON DELETE CASCADE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            19
-- CREATE INDEX                             0
-- ALTER TABLE                             37
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
