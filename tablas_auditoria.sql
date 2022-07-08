--TABLAS AUDITORIAS PARA CADA TABLA NORMALIZADA
CREATE TABLE audit_area (
    usuario      NVARCHAR2(100) NOT NULL,
    fecha        DATE,
    hora         NVARCHAR2(50) NOT NULL,
    codigo_area  NVARCHAR2(20) NOT NULL,
    area         NVARCHAR2(100) NOT NULL,
    estado       INT,
    accion       NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_brevete (
    usuario                  NVARCHAR2(100) NOT NULL,
    fecha                    DATE,
    hora                     NVARCHAR2(50) NOT NULL,              
    codigo_brevete           NVARCHAR2(20) NOT NULL,
    brevete                  NVARCHAR2(100) NOT NULL,
    codigo_cat_brev          NVARCHAR2(20) NOT NULL,
    cat_brevete_id_cat_brev  INTEGER NOT NULL,
    estado                   INT,
    accion                   NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_capacitacion (
    usuario         NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_capaci   NVARCHAR2(20) NOT NULL,
    inicio_mes_año  NVARCHAR2(20) NOT NULL,
    fin_mes_año     NVARCHAR2(20) NOT NULL,
    curso_evento    NVARCHAR2(200) NOT NULL,
    institucion     NVARCHAR2(100) NOT NULL,
    horas_lect      NVARCHAR2(20) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);


CREATE TABLE audit_cargo (
    usuario       NVARCHAR2(100) NOT NULL,
    fecha         DATE,
    hora          NVARCHAR2(50) NOT NULL,
    codigo_cargo  NVARCHAR2(20) NOT NULL,
    cargo         NVARCHAR2(100) NOT NULL,
    estado        INT,
    accion        NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_cat_brevete (
    usuario          NVARCHAR2(100) NOT NULL,
    fecha            DATE,
    hora             NVARCHAR2(50) NOT NULL,
    codigo_cat_brev  NVARCHAR2(20) NOT NULL,
    cate_brev        NVARCHAR2(20) NOT NULL,
    estado           INT,
    accion           NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_detalle_form (
    usuario                   NVARCHAR2(100) NOT NULL,
    fecha                     DATE,
    hora                      NVARCHAR2(50) NOT NULL,
    codigo_detalle_form       NVARCHAR2(20) NOT NULL,
    codigo_form_aca           NVARCHAR2(20) NOT NULL,
    codigo_tipo_fa            NVARCHAR2(20) NOT NULL,
    codigo_postulante         NVARCHAR2(20) NOT NULL,
    forma_academ_id_for_aca   INTEGER NOT NULL,
    tipo_form_aca_id_tipo_fa  INTEGER NOT NULL,
    postulante_id_postulante  INTEGER NOT NULL,
    estado                    INT,
    accion                    NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_empresa (
    usuario         NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_empresa  NVARCHAR2(20) NOT NULL,
    nombre_empresa  NVARCHAR2(100) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_estad_civ (
    usuario         NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_est_civ  NVARCHAR2(20) NOT NULL,
    estado_civil    NVARCHAR2(50) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_expe_labo (
    usuario                   NVARCHAR2(100) NOT NULL,
    fecha                     DATE,
    hora                      NVARCHAR2(50) NOT NULL,
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
    postulante_id_postulante  INTEGER NOT NULL,
    estado                    INT,
    accion                    NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_forma_academ (
    usuario                  NVARCHAR2(100) NOT NULL,
    fecha                    DATE,
    hora                     NVARCHAR2(50) NOT NULL,
    codigo_for_aca           NVARCHAR2(20) NOT NULL,
    nom_inst                 NVARCHAR2(50) NOT NULL,
    pro_esp                  NVARCHAR2(100) NOT NULL,
    fecha_inicio             NVARCHAR2(20) NOT NULL,
    fecha_fin                NVARCHAR2(20) NOT NULL,
    codigo_gra_aca           NVARCHAR2(20) NOT NULL,
    grado_academ_id_gra_aca  INTEGER NOT NULL,
    estado                   INT,
    accion                   NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_grado_academ (
    usuario        NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_gra_aca  NVARCHAR2(20) NOT NULL,
    grado_academ    NVARCHAR2(50) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_idioma (
    usuario        NVARCHAR2(100) NOT NULL,
    fecha          DATE,
    hora           NVARCHAR2(50) NOT NULL,
    codigo_idioma  NVARCHAR2(20) NOT NULL,
    idioma         NVARCHAR2(100) NOT NULL,
    estado         INT,
    accion         NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_idioma_post (
    usuario                     NVARCHAR2(100) NOT NULL,
    fecha                       DATE,
    hora                        NVARCHAR2(50) NOT NULL,
    codigo_idipos               NVARCHAR2(20) NOT NULL,
    codigo_postulante           NVARCHAR2(20) NOT NULL,
    codigo_idioma               NVARCHAR2(20) NOT NULL,
    codigo_niv_idioma           NVARCHAR2(20) NOT NULL,
    idioma_id_idioma            INTEGER NOT NULL,
    nivel_idioma_id_niv_idioma  INTEGER NOT NULL,
    postulante_id_postulante    INTEGER NOT NULL,
    estado                      INT,
    accion                      NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_jefe (
    usuario      NVARCHAR2(100) NOT NULL,
    fecha        DATE,
    hora         NVARCHAR2(50) NOT NULL,
    codigo_jefe  NVARCHAR2(20) NOT NULL,
    nombre_jefe  NVARCHAR2(100) NOT NULL,
    cargo_jefe   NVARCHAR2(50) NOT NULL,
    estado       INT,
    accion       NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_nivel_idioma (
    usuario            NVARCHAR2(100) NOT NULL,
    fecha              DATE,
    hora               NVARCHAR2(50) NOT NULL,
    codigo_niv_idioma  NVARCHAR2(20) NOT NULL,
    nivel_idioma       NVARCHAR2(50) NOT NULL,
    estado             INT,
    accion             NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_postulante (
    usuario               NVARCHAR2(100) NOT NULL,
    fecha                 DATE,
    hora                  NVARCHAR2(50) NOT NULL,
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
    ubigeo_id_ubigeo      INTEGER NOT NULL,
    estado                INT,
    accion                NVARCHAR2(50) NOT NULL
);


CREATE TABLE audit_salario (
    usuario         NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_salario  NVARCHAR2(20) NOT NULL,
    salario         NVARCHAR2(50) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);


CREATE TABLE audit_tipo_form_aca (
    usuario         NVARCHAR2(100) NOT NULL,
    fecha           DATE,
    hora            NVARCHAR2(50) NOT NULL,
    codigo_tipo_fa  NVARCHAR2(20) NOT NULL,
    tipo_form       NVARCHAR2(100) NOT NULL,
    estado          INT,
    accion          NVARCHAR2(50) NOT NULL
);



CREATE TABLE audit_ubigeo (
    usuario        NVARCHAR2(100) NOT NULL,
    fecha          DATE,
    hora           NVARCHAR2(50) NOT NULL,
    codigo_ubigeo  NVARCHAR2(20) NOT NULL,
    distrito       NVARCHAR2(100) NOT NULL,
    provincia      NVARCHAR2(100) NOT NULL,
    departamento   NVARCHAR2(100) NOT NULL,
    estado         INT,
    accion         NVARCHAR2(50) NOT NULL
);
