PGDMP     2        
        
    u            IDPP    9.6.5    10.0 S   (
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            )
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *
           1262    16384    IDPP    DATABASE     x   CREATE DATABASE "IDPP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_GT.UTF-8' LC_CTYPE = 'es_GT.UTF-8';
    DROP DATABASE "IDPP";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            +
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12395    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ,
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16385    asignacion_vehiculo    TABLE       CREATE TABLE asignacion_vehiculo (
    cod_asignacion_vehiculo integer NOT NULL,
    fecha_asignacion timestamp without time zone,
    no_solicitud integer,
    year_solicitud integer,
    cod_unidad_solicitante integer,
    cod_persona_pasajero integer,
    fecha_hora_uso_vehiculo timestamp without time zone,
    fecha_hora_retorno_vehiculo timestamp without time zone,
    dias_asignacion integer,
    num_personas_viaje integer,
    cod_sede_lugar_salida integer,
    destino character varying(512),
    diligencia text,
    causa_1 character varying(50),
    causa_2 character varying(50),
    causa_3 character varying(50),
    cod_dependencia_institucion_juzgado integer,
    utiliza_piloto boolean,
    utiliza_vehiculo boolean,
    carga_voluminosa boolean,
    observaciones text,
    cod_persona_solicitante integer,
    cod_puesto_solicitante integer,
    cod_persona_coordinador_jefe integer,
    cod_puesto_coordinador_jefe integer,
    cod_persona_asignador_vehiculo integer,
    cod_puesto_asignador_vehiculo integer
);
 '   DROP TABLE public.asignacion_vehiculo;
       public         postgres    false    3            �            1259    16391 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.asignacion_vehiculo_cod_asignacion_vehiculo_seq;
       public       postgres    false    3    185            -
           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNED BY asignacion_vehiculo.cod_asignacion_vehiculo;
            public       postgres    false    186            �            1259    16393    asignacion_vehiculo_piloto    TABLE     �  CREATE TABLE asignacion_vehiculo_piloto (
    cod_asignacion_vehiculo_piloto integer NOT NULL,
    cod_asignacion_vehiculo integer,
    cod_vehiculo integer,
    cod_persona_piloto_asignado integer,
    fecha_hora_uso_vehiculo timestamp without time zone,
    fecha_hora_retorno_vehiculo timestamp without time zone,
    fecha_hora_asignacion timestamp without time zone,
    estatus_asignacion character varying(2)
);
 .   DROP TABLE public.asignacion_vehiculo_piloto;
       public         postgres    false    3            �            1259    16396 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq;
       public       postgres    false    3    187            .
           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNED BY asignacion_vehiculo_piloto.cod_asignacion_vehiculo_piloto;
            public       postgres    false    188            �            1259    16398    color    TABLE     �   CREATE TABLE color (
    cod_color integer NOT NULL,
    nombre_color character varying(100),
    orden integer,
    activo boolean
);
    DROP TABLE public.color;
       public         postgres    false    3            �            1259    16401    color_cod_color_seq    SEQUENCE     u   CREATE SEQUENCE color_cod_color_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.color_cod_color_seq;
       public       postgres    false    3    189            /
           0    0    color_cod_color_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE color_cod_color_seq OWNED BY color.cod_color;
            public       postgres    false    190            �            1259    16403    combustible_comision    TABLE     7  CREATE TABLE combustible_comision (
    cod_combustible_comision integer NOT NULL,
    fecha_entrega timestamp without time zone,
    cod_persona_solicitante integer,
    cod_puesto_solicitante integer,
    cod_unidad integer,
    cod_sede integer,
    cod_vehiculo integer,
    placa character varying(15),
    kilometraje_actual bigint,
    comision_a text,
    observaciones text,
    importe_total_letras text,
    cantidad_estimada_carga numeric,
    cod_persona_receptor integer,
    cod_puesto_receptor integer,
    cod_persona_encargado_transporte integer
);
 (   DROP TABLE public.combustible_comision;
       public         postgres    false    3            �            1259    16409 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE     �   CREATE SEQUENCE combustible_comision_cod_combustible_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.combustible_comision_cod_combustible_comision_seq;
       public       postgres    false    3    191            0
           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE combustible_comision_cod_combustible_comision_seq OWNED BY combustible_comision.cod_combustible_comision;
            public       postgres    false    192            �            1259    16411    combustible_cupon    TABLE       CREATE TABLE combustible_cupon (
    cod_combustible_cupon integer NOT NULL,
    cod_combustible_comision integer,
    cod_cupon_denominancion integer,
    cantidad_cupones integer,
    numero_cupon_inicial bigint,
    numero_cupon_final bigint,
    suma_total numeric
);
 %   DROP TABLE public.combustible_cupon;
       public         postgres    false    3            �            1259    16417 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE     �   CREATE SEQUENCE combustible_cupon_cod_combustible_cupon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.combustible_cupon_cod_combustible_cupon_seq;
       public       postgres    false    3    193            1
           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE combustible_cupon_cod_combustible_cupon_seq OWNED BY combustible_cupon.cod_combustible_cupon;
            public       postgres    false    194            �            1259    16419    concurso_mantenimientos    TABLE     <  CREATE TABLE concurso_mantenimientos (
    cod_concurso_mantenimiento integer NOT NULL,
    no_concurso character varying(200),
    fecha_concurso date,
    placa_vehiculo character varying(15),
    realizado smallint,
    cod_empleado_autoriza bigint,
    cod_cargo_empleado_autoriza bigint,
    activo smallint
);
 +   DROP TABLE public.concurso_mantenimientos;
       public         postgres    false    3            �            1259    16422 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE     �   CREATE SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.concurso_mantenimientos_cod_concurso_mantenimiento_seq;
       public       postgres    false    3    195            2
           0    0 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq OWNED BY concurso_mantenimientos.cod_concurso_mantenimiento;
            public       postgres    false    196            �            1259    16424    cupon_denominacion    TABLE     �   CREATE TABLE cupon_denominacion (
    cod_cupon_denominacion integer NOT NULL,
    descripcion character varying(100),
    denominacion numeric
);
 &   DROP TABLE public.cupon_denominacion;
       public         postgres    false    3            �            1259    16430 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE     �   CREATE SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.cupon_denominacion_cod_cupon_denominacion_seq;
       public       postgres    false    197    3            3
           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq OWNED BY cupon_denominacion.cod_cupon_denominacion;
            public       postgres    false    198            �            1259    16432    departamento    TABLE     �   CREATE TABLE departamento (
    cod_departamento integer NOT NULL,
    cod_region integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
     DROP TABLE public.departamento;
       public         postgres    false    3            �            1259    16435 !   departamento_cod_departamento_seq    SEQUENCE     �   CREATE SEQUENCE departamento_cod_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.departamento_cod_departamento_seq;
       public       postgres    false    3    199            4
           0    0 !   departamento_cod_departamento_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE departamento_cod_departamento_seq OWNED BY departamento.cod_departamento;
            public       postgres    false    200            �            1259    16437    dependencia_institucion    TABLE     �  CREATE TABLE dependencia_institucion (
    cod_dependencia_institucion integer NOT NULL,
    cod_institucion integer,
    cod_estatus character varying(2),
    nombre character varying(100),
    direccion character varying(150),
    cod_municipio integer,
    cod_departamento integer,
    telefono_1 character varying(50),
    cod_tipo_organo integer,
    codigo_causa integer,
    cod_tipo_dependencia_institucion integer,
    fecha_sistema timestamp without time zone
);
 +   DROP TABLE public.dependencia_institucion;
       public         postgres    false    3            �            1259    16440 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE     �   CREATE SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.dependencia_institucion_cod_dependencia_institucion_seq;
       public       postgres    false    201    3            5
           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq OWNED BY dependencia_institucion.cod_dependencia_institucion;
            public       postgres    false    202            �            1259    16442    detalle_mant_rep    TABLE     ,  CREATE TABLE detalle_mant_rep (
    cod_mantenimiento_reparacion bigint NOT NULL,
    cod_detalle_mant_repara integer NOT NULL,
    cod_tipo_mant_rep bigint NOT NULL,
    costo_reparacion_detalle double precision,
    descripcion character varying(400),
    tiempo_garantia character varying(100)
);
 $   DROP TABLE public.detalle_mant_rep;
       public         postgres    false    3            �            1259    16448 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE     �   CREATE SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.detalle_mant_rep_cod_detalle_mant_repara_seq;
       public       postgres    false    3    203            6
           0    0 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq OWNED BY detalle_mant_rep.cod_detalle_mant_repara;
            public       postgres    false    204            �            1259    16450    imagen    TABLE     �   CREATE TABLE imagen (
    cod_imagen integer NOT NULL,
    cod_vehiculo integer,
    cod_tipo_imagen integer,
    path_imagen text,
    imagenb bytea,
    nombre_imagen character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.imagen;
       public         postgres    false    3            �            1259    16456    imagen_cod_imagen_seq    SEQUENCE     w   CREATE SEQUENCE imagen_cod_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.imagen_cod_imagen_seq;
       public       postgres    false    3    205            7
           0    0    imagen_cod_imagen_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE imagen_cod_imagen_seq OWNED BY imagen.cod_imagen;
            public       postgres    false    206            �            1259    16458    kilometraje_comision    TABLE     "  CREATE TABLE kilometraje_comision (
    cod_kilometraje_comision integer NOT NULL,
    cod_persona_piloto integer,
    cod_vehiculo integer,
    placa character varying(15),
    kilometraje_inicial bigint,
    fecha_hora_salida timestamp without time zone,
    kilometraje_final bigint,
    fecha_hora_entrada timestamp without time zone,
    comision_realizada text,
    causa1 character varying(50),
    causa2 character varying(50),
    causa3 character varying(50),
    cod_dependencia_institucion integer,
    diligencias_realizadas text
);
 (   DROP TABLE public.kilometraje_comision;
       public         postgres    false    3            �            1259    16464 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE     �   CREATE SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.kilometraje_comision_cod_kilometraje_comision_seq;
       public       postgres    false    3    207            8
           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq OWNED BY kilometraje_comision.cod_kilometraje_comision;
            public       postgres    false    208            �            1259    16466    linea    TABLE     �   CREATE TABLE linea (
    cod_linea integer NOT NULL,
    cod_marca integer,
    nombre_linea character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.linea;
       public         postgres    false    3            �            1259    16469    linea_cod_linea_seq    SEQUENCE     u   CREATE SEQUENCE linea_cod_linea_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.linea_cod_linea_seq;
       public       postgres    false    209    3            9
           0    0    linea_cod_linea_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE linea_cod_linea_seq OWNED BY linea.cod_linea;
            public       postgres    false    210            �            1259    16471    mantenimiento_reparacion    TABLE     �  CREATE TABLE mantenimiento_reparacion (
    cod_mantenimiento_reparacion integer NOT NULL,
    cod_control_mant_rep bigint,
    mant_rep bigint,
    cod_no_concurso bigint,
    cod_proveedor bigint,
    no_factura bigint,
    serie_factura character varying(5),
    fecha_emision_factura date,
    fecha_recepcion_factura date,
    fecha_recepcion_vehiculo date,
    fecha_retorno_vehiculo date,
    dias_mantenimiento bigint,
    cod_tipo_mantenimiento bigint,
    total_mantenimiento_repara_q double precision,
    cod_vehiculo bigint,
    placa character varying(15),
    utilizo_seguro smallint,
    registro_pago smallint,
    cod_sede bigint,
    cod_empleado_recepcion bigint,
    cod_cargo_empleado_recepcion bigint,
    cod_empleado_recepcion_fact bigint,
    cod_cargo_empleado_recepcion_fact bigint,
    cod_empleado_digita bigint,
    activo boolean,
    fecha_envio_vehiculo date
);
 ,   DROP TABLE public.mantenimiento_reparacion;
       public         postgres    false    3            �            1259    16474 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE     �   CREATE SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.mantenimiento_reparacion_cod_mantenimiento_reparacion_seq;
       public       postgres    false    3    211            :
           0    0 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq OWNED BY mantenimiento_reparacion.cod_mantenimiento_reparacion;
            public       postgres    false    212            �            1259    16476    marca    TABLE     �   CREATE TABLE marca (
    cod_marca integer NOT NULL,
    nombre_marca character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.marca;
       public         postgres    false    3            �            1259    16479    marca_cod_marca_seq    SEQUENCE     u   CREATE SEQUENCE marca_cod_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marca_cod_marca_seq;
       public       postgres    false    213    3            ;
           0    0    marca_cod_marca_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE marca_cod_marca_seq OWNED BY marca.cod_marca;
            public       postgres    false    214            �            1259    16481 	   municipio    TABLE     �   CREATE TABLE municipio (
    cod_municipio integer NOT NULL,
    cod_departamento integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
    DROP TABLE public.municipio;
       public         postgres    false    3            �            1259    16484    municipio_cod_municipio_seq    SEQUENCE     }   CREATE SEQUENCE municipio_cod_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.municipio_cod_municipio_seq;
       public       postgres    false    3    215            <
           0    0    municipio_cod_municipio_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE municipio_cod_municipio_seq OWNED BY municipio.cod_municipio;
            public       postgres    false    216            �            1259    16486    organigrama    TABLE     �   CREATE TABLE organigrama (
    cod_organigrama integer NOT NULL,
    cod_unidad integer,
    cod_organigrama_padre integer,
    cod_status character(2)
);
    DROP TABLE public.organigrama;
       public         postgres    false    3            �            1259    16489    organigrama_cod_organigrama_seq    SEQUENCE     �   CREATE SEQUENCE organigrama_cod_organigrama_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.organigrama_cod_organigrama_seq;
       public       postgres    false    217    3            =
           0    0    organigrama_cod_organigrama_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE organigrama_cod_organigrama_seq OWNED BY organigrama.cod_organigrama;
            public       postgres    false    218            �            1259    16491    pais    TABLE     �   CREATE TABLE pais (
    cod_pais integer NOT NULL,
    nombre_pais character varying(60),
    gentilicio character varying(60),
    codigo_telefonico character varying(3),
    codigo_iso character varying(3),
    cod_estatus character varying(2)
);
    DROP TABLE public.pais;
       public         postgres    false    3            �            1259    16494    pais_cod_pais_seq    SEQUENCE     s   CREATE SEQUENCE pais_cod_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pais_cod_pais_seq;
       public       postgres    false    3    219            >
           0    0    pais_cod_pais_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE pais_cod_pais_seq OWNED BY pais.cod_pais;
            public       postgres    false    220            �            1259    16496    persona    TABLE       CREATE TABLE persona (
    cod_persona integer NOT NULL,
    nombre_1 character varying(50),
    nombre_2 character varying(50) DEFAULT ''::character varying,
    apellido_1 character varying(50) DEFAULT ''::character varying,
    apellido_2 character varying(50) DEFAULT ''::character varying,
    apellido_casada character varying(50) DEFAULT ''::character varying,
    nit character varying(15),
    estado_civil character varying(50),
    cod_estatus character varying(2),
    cod_reloj_persona integer,
    cod_puesto bigint
);
    DROP TABLE public.persona;
       public         postgres    false    3            �            1259    16503    persona_cod_persona_seq    SEQUENCE     y   CREATE SEQUENCE persona_cod_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.persona_cod_persona_seq;
       public       postgres    false    221    3            ?
           0    0    persona_cod_persona_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE persona_cod_persona_seq OWNED BY persona.cod_persona;
            public       postgres    false    222            �            1259    16505    proveedores    TABLE     �   CREATE TABLE proveedores (
    cod_proveedor integer NOT NULL,
    nit character varying(30),
    direccion character varying(50),
    telefono character varying(150),
    nombre_contacto character varying(350),
    activo boolean
);
    DROP TABLE public.proveedores;
       public         postgres    false    3            �            1259    16511    proveedores_cod_proveedor_seq    SEQUENCE        CREATE SEQUENCE proveedores_cod_proveedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.proveedores_cod_proveedor_seq;
       public       postgres    false    3    223            @
           0    0    proveedores_cod_proveedor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE proveedores_cod_proveedor_seq OWNED BY proveedores.cod_proveedor;
            public       postgres    false    224            �            1259    16513    puesto    TABLE     �  CREATE TABLE puesto (
    cod_puesto integer NOT NULL,
    cod_tipo_puesto integer,
    cod_organigrama integer,
    cod_persona integer,
    descripcion character varying(100),
    cod_estatus character varying(2),
    cod_sede integer,
    no_doc_creacion character varying(200),
    no_doc_finalizacion character varying(200),
    descripcion_femenino character varying(100),
    cod_puesto_reemplazo integer,
    fecha_sistema timestamp without time zone
);
    DROP TABLE public.puesto;
       public         postgres    false    3            �            1259    16519    puesto_cod_puesto_seq    SEQUENCE     w   CREATE SEQUENCE puesto_cod_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.puesto_cod_puesto_seq;
       public       postgres    false    3    225            A
           0    0    puesto_cod_puesto_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE puesto_cod_puesto_seq OWNED BY puesto.cod_puesto;
            public       postgres    false    226            �            1259    16521    region    TABLE     �   CREATE TABLE region (
    cod_region integer NOT NULL,
    descripcion character varying(60),
    cod_estatus character varying(2)
);
    DROP TABLE public.region;
       public         postgres    false    3            �            1259    16524    region_cod_region_seq    SEQUENCE     w   CREATE SEQUENCE region_cod_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.region_cod_region_seq;
       public       postgres    false    3    227            B
           0    0    region_cod_region_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE region_cod_region_seq OWNED BY region.cod_region;
            public       postgres    false    228            �            1259    17587    roles_usuario_id_seq    SEQUENCE     z   CREATE SEQUENCE roles_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;
 +   DROP SEQUENCE public.roles_usuario_id_seq;
       public       postgres    false    3            �            1259    17589    rol_usuario    TABLE     �   CREATE TABLE rol_usuario (
    id integer DEFAULT nextval('roles_usuario_id_seq'::regclass) NOT NULL,
    rol character varying(255),
    nombre character varying(255)
);
    DROP TABLE public.rol_usuario;
       public         postgres    false    247    3            �            1259    16526    sede    TABLE     �  CREATE TABLE sede (
    cod_sede integer NOT NULL,
    cod_municipio integer,
    cod_tipo_sede integer,
    nombre_sede character varying(60),
    direccion character varying(250),
    telefono_1 character varying(50),
    telefono_2 character varying(50),
    cod_coordindor integer,
    cod_organigrama integer,
    cod_estatus character varying(2),
    cod_region_supervision integer,
    correo_electronico character varying(100),
    zona character varying(2)
);
    DROP TABLE public.sede;
       public         postgres    false    3            �            1259    16532    sede_cod_sede_seq    SEQUENCE     s   CREATE SEQUENCE sede_cod_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sede_cod_sede_seq;
       public       postgres    false    3    229            C
           0    0    sede_cod_sede_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE sede_cod_sede_seq OWNED BY sede.cod_sede;
            public       postgres    false    230            �            1259    16534    tipo_dependencia_institucion    TABLE     �   CREATE TABLE tipo_dependencia_institucion (
    cod_tipo_dependencia_institucion integer NOT NULL,
    descripcion character varying(50),
    cod_estatus character varying(2),
    abreviatura character varying(30)
);
 0   DROP TABLE public.tipo_dependencia_institucion;
       public         postgres    false    3            �            1259    16537 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE     �   CREATE SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq;
       public       postgres    false    3    231            D
           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNED BY tipo_dependencia_institucion.cod_tipo_dependencia_institucion;
            public       postgres    false    232            �            1259    16539    tipo_imagen    TABLE     �   CREATE TABLE tipo_imagen (
    cod_tipo_imagen integer NOT NULL,
    nombre_tipo_imagen character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_imagen;
       public         postgres    false    3            �            1259    16542    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE     �   CREATE SEQUENCE tipo_imagen_cod_tipo_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tipo_imagen_cod_tipo_imagen_seq;
       public       postgres    false    3    233            E
           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE tipo_imagen_cod_tipo_imagen_seq OWNED BY tipo_imagen.cod_tipo_imagen;
            public       postgres    false    234            �            1259    16544    tipo_mantenimiento_reparacion    TABLE     �   CREATE TABLE tipo_mantenimiento_reparacion (
    cod_tipo_mant_rep integer NOT NULL,
    descripcion character varying(350),
    mant_repa smallint
);
 1   DROP TABLE public.tipo_mantenimiento_reparacion;
       public         postgres    false    3            �            1259    16547 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE     �   CREATE SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq;
       public       postgres    false    3    235            F
           0    0 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq OWNED BY tipo_mantenimiento_reparacion.cod_tipo_mant_rep;
            public       postgres    false    236            �            1259    16549 	   tipo_tipo    TABLE     �   CREATE TABLE tipo_tipo (
    cod_tipo_tipo integer NOT NULL,
    nombre_tipo_tipo character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_tipo;
       public         postgres    false    3            �            1259    16552    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE     }   CREATE SEQUENCE tipo_tipo_cod_tipo_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_tipo_cod_tipo_tipo_seq;
       public       postgres    false    237    3            G
           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE tipo_tipo_cod_tipo_tipo_seq OWNED BY tipo_tipo.cod_tipo_tipo;
            public       postgres    false    238            �            1259    16554    tipo_uso    TABLE     �   CREATE TABLE tipo_uso (
    cod_tipo_uso integer NOT NULL,
    nombre_tipo_uso character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_uso;
       public         postgres    false    3            �            1259    16557    tipo_uso_cod_tipo_uso_seq    SEQUENCE     {   CREATE SEQUENCE tipo_uso_cod_tipo_uso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tipo_uso_cod_tipo_uso_seq;
       public       postgres    false    239    3            H
           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE tipo_uso_cod_tipo_uso_seq OWNED BY tipo_uso.cod_tipo_uso;
            public       postgres    false    240            �            1259    16559    unidad    TABLE     �   CREATE TABLE unidad (
    cod_unidad integer NOT NULL,
    descripcion character varying(100),
    cod_estatus character varying(2),
    tiene_dependencia boolean,
    nomenclatura character varying(3)
);
    DROP TABLE public.unidad;
       public         postgres    false    3            �            1259    16562    unidad_cod_unidad_seq    SEQUENCE     w   CREATE SEQUENCE unidad_cod_unidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.unidad_cod_unidad_seq;
       public       postgres    false    3    241            I
           0    0    unidad_cod_unidad_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE unidad_cod_unidad_seq OWNED BY unidad.cod_unidad;
            public       postgres    false    242            �            1259    17579    usuario_id_seq    SEQUENCE     t   CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       postgres    false    3            �            1259    17581    usuario    TABLE     �   CREATE TABLE usuario (
    id integer DEFAULT nextval('usuario_id_seq'::regclass) NOT NULL,
    nombre character varying(255),
    password character varying(64)
);
    DROP TABLE public.usuario;
       public         postgres    false    245    3            �            1259    16564    vehiculo    TABLE     X  CREATE TABLE vehiculo (
    cod_vehiculo integer NOT NULL,
    placa character varying(15),
    nit character varying(15),
    poliza bigint,
    direccion character varying(250),
    cod_municipio integer,
    cod_departamento integer,
    nombre character varying(250),
    modelo integer,
    cod_tipo_uso integer,
    chasis character varying(20),
    cod_tipo_tipo integer,
    cod_marca integer,
    cod_linea integer,
    vin character varying(20),
    centimetros_cubicos integer,
    cilindros integer,
    toneladas integer,
    titulo character varying(100),
    tarjeta_circulacion character varying(100),
    cod_color integer,
    no_asientos integer,
    no_inventario_registro character varying(250),
    cod_persona_asignacion integer,
    cod_pueston integer,
    no_motor character varying(100),
    orden integer,
    activo boolean
);
    DROP TABLE public.vehiculo;
       public         postgres    false    3            �            1259    16570    vehiculo_cod_vehiculo_seq    SEQUENCE     {   CREATE SEQUENCE vehiculo_cod_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.vehiculo_cod_vehiculo_seq;
       public       postgres    false    3    243            J
           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE vehiculo_cod_vehiculo_seq OWNED BY vehiculo.cod_vehiculo;
            public       postgres    false    244            �           2604    16572 +   asignacion_vehiculo cod_asignacion_vehiculo    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo SET DEFAULT nextval('asignacion_vehiculo_cod_asignacion_vehiculo_seq'::regclass);
 Z   ALTER TABLE public.asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo DROP DEFAULT;
       public       postgres    false    186    185            �           2604    16573 9   asignacion_vehiculo_piloto cod_asignacion_vehiculo_piloto    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto SET DEFAULT nextval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq'::regclass);
 h   ALTER TABLE public.asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto DROP DEFAULT;
       public       postgres    false    188    187            �           2604    16574    color cod_color    DEFAULT     d   ALTER TABLE ONLY color ALTER COLUMN cod_color SET DEFAULT nextval('color_cod_color_seq'::regclass);
 >   ALTER TABLE public.color ALTER COLUMN cod_color DROP DEFAULT;
       public       postgres    false    190    189            �           2604    16575 -   combustible_comision cod_combustible_comision    DEFAULT     �   ALTER TABLE ONLY combustible_comision ALTER COLUMN cod_combustible_comision SET DEFAULT nextval('combustible_comision_cod_combustible_comision_seq'::regclass);
 \   ALTER TABLE public.combustible_comision ALTER COLUMN cod_combustible_comision DROP DEFAULT;
       public       postgres    false    192    191            �           2604    16576 '   combustible_cupon cod_combustible_cupon    DEFAULT     �   ALTER TABLE ONLY combustible_cupon ALTER COLUMN cod_combustible_cupon SET DEFAULT nextval('combustible_cupon_cod_combustible_cupon_seq'::regclass);
 V   ALTER TABLE public.combustible_cupon ALTER COLUMN cod_combustible_cupon DROP DEFAULT;
       public       postgres    false    194    193            �           2604    16577 2   concurso_mantenimientos cod_concurso_mantenimiento    DEFAULT     �   ALTER TABLE ONLY concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento SET DEFAULT nextval('concurso_mantenimientos_cod_concurso_mantenimiento_seq'::regclass);
 a   ALTER TABLE public.concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento DROP DEFAULT;
       public       postgres    false    196    195            �           2604    16578 )   cupon_denominacion cod_cupon_denominacion    DEFAULT     �   ALTER TABLE ONLY cupon_denominacion ALTER COLUMN cod_cupon_denominacion SET DEFAULT nextval('cupon_denominacion_cod_cupon_denominacion_seq'::regclass);
 X   ALTER TABLE public.cupon_denominacion ALTER COLUMN cod_cupon_denominacion DROP DEFAULT;
       public       postgres    false    198    197            �           2604    16579    departamento cod_departamento    DEFAULT     �   ALTER TABLE ONLY departamento ALTER COLUMN cod_departamento SET DEFAULT nextval('departamento_cod_departamento_seq'::regclass);
 L   ALTER TABLE public.departamento ALTER COLUMN cod_departamento DROP DEFAULT;
       public       postgres    false    200    199            �           2604    16580 3   dependencia_institucion cod_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY dependencia_institucion ALTER COLUMN cod_dependencia_institucion SET DEFAULT nextval('dependencia_institucion_cod_dependencia_institucion_seq'::regclass);
 b   ALTER TABLE public.dependencia_institucion ALTER COLUMN cod_dependencia_institucion DROP DEFAULT;
       public       postgres    false    202    201            �           2604    16581 (   detalle_mant_rep cod_detalle_mant_repara    DEFAULT     �   ALTER TABLE ONLY detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara SET DEFAULT nextval('detalle_mant_rep_cod_detalle_mant_repara_seq'::regclass);
 W   ALTER TABLE public.detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara DROP DEFAULT;
       public       postgres    false    204    203            �           2604    16582    imagen cod_imagen    DEFAULT     h   ALTER TABLE ONLY imagen ALTER COLUMN cod_imagen SET DEFAULT nextval('imagen_cod_imagen_seq'::regclass);
 @   ALTER TABLE public.imagen ALTER COLUMN cod_imagen DROP DEFAULT;
       public       postgres    false    206    205            �           2604    16583 -   kilometraje_comision cod_kilometraje_comision    DEFAULT     �   ALTER TABLE ONLY kilometraje_comision ALTER COLUMN cod_kilometraje_comision SET DEFAULT nextval('kilometraje_comision_cod_kilometraje_comision_seq'::regclass);
 \   ALTER TABLE public.kilometraje_comision ALTER COLUMN cod_kilometraje_comision DROP DEFAULT;
       public       postgres    false    208    207            �           2604    16584    linea cod_linea    DEFAULT     d   ALTER TABLE ONLY linea ALTER COLUMN cod_linea SET DEFAULT nextval('linea_cod_linea_seq'::regclass);
 >   ALTER TABLE public.linea ALTER COLUMN cod_linea DROP DEFAULT;
       public       postgres    false    210    209            �           2604    16585 5   mantenimiento_reparacion cod_mantenimiento_reparacion    DEFAULT     �   ALTER TABLE ONLY mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion SET DEFAULT nextval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq'::regclass);
 d   ALTER TABLE public.mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion DROP DEFAULT;
       public       postgres    false    212    211            �           2604    16586    marca cod_marca    DEFAULT     d   ALTER TABLE ONLY marca ALTER COLUMN cod_marca SET DEFAULT nextval('marca_cod_marca_seq'::regclass);
 >   ALTER TABLE public.marca ALTER COLUMN cod_marca DROP DEFAULT;
       public       postgres    false    214    213            �           2604    16587    municipio cod_municipio    DEFAULT     t   ALTER TABLE ONLY municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('municipio_cod_municipio_seq'::regclass);
 F   ALTER TABLE public.municipio ALTER COLUMN cod_municipio DROP DEFAULT;
       public       postgres    false    216    215            �           2604    16588    organigrama cod_organigrama    DEFAULT     |   ALTER TABLE ONLY organigrama ALTER COLUMN cod_organigrama SET DEFAULT nextval('organigrama_cod_organigrama_seq'::regclass);
 J   ALTER TABLE public.organigrama ALTER COLUMN cod_organigrama DROP DEFAULT;
       public       postgres    false    218    217            �           2604    16589    pais cod_pais    DEFAULT     `   ALTER TABLE ONLY pais ALTER COLUMN cod_pais SET DEFAULT nextval('pais_cod_pais_seq'::regclass);
 <   ALTER TABLE public.pais ALTER COLUMN cod_pais DROP DEFAULT;
       public       postgres    false    220    219            �           2604    16590    persona cod_persona    DEFAULT     l   ALTER TABLE ONLY persona ALTER COLUMN cod_persona SET DEFAULT nextval('persona_cod_persona_seq'::regclass);
 B   ALTER TABLE public.persona ALTER COLUMN cod_persona DROP DEFAULT;
       public       postgres    false    222    221            �           2604    16591    proveedores cod_proveedor    DEFAULT     x   ALTER TABLE ONLY proveedores ALTER COLUMN cod_proveedor SET DEFAULT nextval('proveedores_cod_proveedor_seq'::regclass);
 H   ALTER TABLE public.proveedores ALTER COLUMN cod_proveedor DROP DEFAULT;
       public       postgres    false    224    223            �           2604    16592    puesto cod_puesto    DEFAULT     h   ALTER TABLE ONLY puesto ALTER COLUMN cod_puesto SET DEFAULT nextval('puesto_cod_puesto_seq'::regclass);
 @   ALTER TABLE public.puesto ALTER COLUMN cod_puesto DROP DEFAULT;
       public       postgres    false    226    225            �           2604    16593    region cod_region    DEFAULT     h   ALTER TABLE ONLY region ALTER COLUMN cod_region SET DEFAULT nextval('region_cod_region_seq'::regclass);
 @   ALTER TABLE public.region ALTER COLUMN cod_region DROP DEFAULT;
       public       postgres    false    228    227            �           2604    16594    sede cod_sede    DEFAULT     `   ALTER TABLE ONLY sede ALTER COLUMN cod_sede SET DEFAULT nextval('sede_cod_sede_seq'::regclass);
 <   ALTER TABLE public.sede ALTER COLUMN cod_sede DROP DEFAULT;
       public       postgres    false    230    229            �           2604    16595 =   tipo_dependencia_institucion cod_tipo_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion SET DEFAULT nextval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq'::regclass);
 l   ALTER TABLE public.tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion DROP DEFAULT;
       public       postgres    false    232    231            �           2604    16596    tipo_imagen cod_tipo_imagen    DEFAULT     |   ALTER TABLE ONLY tipo_imagen ALTER COLUMN cod_tipo_imagen SET DEFAULT nextval('tipo_imagen_cod_tipo_imagen_seq'::regclass);
 J   ALTER TABLE public.tipo_imagen ALTER COLUMN cod_tipo_imagen DROP DEFAULT;
       public       postgres    false    234    233            �           2604    16597 /   tipo_mantenimiento_reparacion cod_tipo_mant_rep    DEFAULT     �   ALTER TABLE ONLY tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep SET DEFAULT nextval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq'::regclass);
 ^   ALTER TABLE public.tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep DROP DEFAULT;
       public       postgres    false    236    235            �           2604    16598    tipo_tipo cod_tipo_tipo    DEFAULT     t   ALTER TABLE ONLY tipo_tipo ALTER COLUMN cod_tipo_tipo SET DEFAULT nextval('tipo_tipo_cod_tipo_tipo_seq'::regclass);
 F   ALTER TABLE public.tipo_tipo ALTER COLUMN cod_tipo_tipo DROP DEFAULT;
       public       postgres    false    238    237            �           2604    16599    tipo_uso cod_tipo_uso    DEFAULT     p   ALTER TABLE ONLY tipo_uso ALTER COLUMN cod_tipo_uso SET DEFAULT nextval('tipo_uso_cod_tipo_uso_seq'::regclass);
 D   ALTER TABLE public.tipo_uso ALTER COLUMN cod_tipo_uso DROP DEFAULT;
       public       postgres    false    240    239            �           2604    16600    unidad cod_unidad    DEFAULT     h   ALTER TABLE ONLY unidad ALTER COLUMN cod_unidad SET DEFAULT nextval('unidad_cod_unidad_seq'::regclass);
 @   ALTER TABLE public.unidad ALTER COLUMN cod_unidad DROP DEFAULT;
       public       postgres    false    242    241            �           2604    16601    vehiculo cod_vehiculo    DEFAULT     p   ALTER TABLE ONLY vehiculo ALTER COLUMN cod_vehiculo SET DEFAULT nextval('vehiculo_cod_vehiculo_seq'::regclass);
 D   ALTER TABLE public.vehiculo ALTER COLUMN cod_vehiculo DROP DEFAULT;
       public       postgres    false    244    243            �	          0    16385    asignacion_vehiculo 
   TABLE DATA               R  COPY asignacion_vehiculo (cod_asignacion_vehiculo, fecha_asignacion, no_solicitud, year_solicitud, cod_unidad_solicitante, cod_persona_pasajero, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, dias_asignacion, num_personas_viaje, cod_sede_lugar_salida, destino, diligencia, causa_1, causa_2, causa_3, cod_dependencia_institucion_juzgado, utiliza_piloto, utiliza_vehiculo, carga_voluminosa, observaciones, cod_persona_solicitante, cod_puesto_solicitante, cod_persona_coordinador_jefe, cod_puesto_coordinador_jefe, cod_persona_asignador_vehiculo, cod_puesto_asignador_vehiculo) FROM stdin;
    public       postgres    false    185   &�      �	          0    16393    asignacion_vehiculo_piloto 
   TABLE DATA               �   COPY asignacion_vehiculo_piloto (cod_asignacion_vehiculo_piloto, cod_asignacion_vehiculo, cod_vehiculo, cod_persona_piloto_asignado, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, fecha_hora_asignacion, estatus_asignacion) FROM stdin;
    public       postgres    false    187   ��      �	          0    16398    color 
   TABLE DATA               @   COPY color (cod_color, nombre_color, orden, activo) FROM stdin;
    public       postgres    false    189   ��      �	          0    16403    combustible_comision 
   TABLE DATA               W  COPY combustible_comision (cod_combustible_comision, fecha_entrega, cod_persona_solicitante, cod_puesto_solicitante, cod_unidad, cod_sede, cod_vehiculo, placa, kilometraje_actual, comision_a, observaciones, importe_total_letras, cantidad_estimada_carga, cod_persona_receptor, cod_puesto_receptor, cod_persona_encargado_transporte) FROM stdin;
    public       postgres    false    191   t�      �	          0    16411    combustible_cupon 
   TABLE DATA               �   COPY combustible_cupon (cod_combustible_cupon, cod_combustible_comision, cod_cupon_denominancion, cantidad_cupones, numero_cupon_inicial, numero_cupon_final, suma_total) FROM stdin;
    public       postgres    false    193   ��      �	          0    16419    concurso_mantenimientos 
   TABLE DATA               �   COPY concurso_mantenimientos (cod_concurso_mantenimiento, no_concurso, fecha_concurso, placa_vehiculo, realizado, cod_empleado_autoriza, cod_cargo_empleado_autoriza, activo) FROM stdin;
    public       postgres    false    195   �      �	          0    16424    cupon_denominacion 
   TABLE DATA               X   COPY cupon_denominacion (cod_cupon_denominacion, descripcion, denominacion) FROM stdin;
    public       postgres    false    197   +�      �	          0    16432    departamento 
   TABLE DATA               �   COPY departamento (cod_departamento, cod_region, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    199   h�      �	          0    16437    dependencia_institucion 
   TABLE DATA               �   COPY dependencia_institucion (cod_dependencia_institucion, cod_institucion, cod_estatus, nombre, direccion, cod_municipio, cod_departamento, telefono_1, cod_tipo_organo, codigo_causa, cod_tipo_dependencia_institucion, fecha_sistema) FROM stdin;
    public       postgres    false    201   ��      �	          0    16442    detalle_mant_rep 
   TABLE DATA               �   COPY detalle_mant_rep (cod_mantenimiento_reparacion, cod_detalle_mant_repara, cod_tipo_mant_rep, costo_reparacion_detalle, descripcion, tiempo_garantia) FROM stdin;
    public       postgres    false    203   ��      �	          0    16450    imagen 
   TABLE DATA               x   COPY imagen (cod_imagen, cod_vehiculo, cod_tipo_imagen, path_imagen, imagenb, nombre_imagen, orden, activo) FROM stdin;
    public       postgres    false    205   ��      �	          0    16458    kilometraje_comision 
   TABLE DATA                 COPY kilometraje_comision (cod_kilometraje_comision, cod_persona_piloto, cod_vehiculo, placa, kilometraje_inicial, fecha_hora_salida, kilometraje_final, fecha_hora_entrada, comision_realizada, causa1, causa2, causa3, cod_dependencia_institucion, diligencias_realizadas) FROM stdin;
    public       postgres    false    207   �      �	          0    16466    linea 
   TABLE DATA               K   COPY linea (cod_linea, cod_marca, nombre_linea, orden, activo) FROM stdin;
    public       postgres    false    209   9�       
          0    16471    mantenimiento_reparacion 
   TABLE DATA               7  COPY mantenimiento_reparacion (cod_mantenimiento_reparacion, cod_control_mant_rep, mant_rep, cod_no_concurso, cod_proveedor, no_factura, serie_factura, fecha_emision_factura, fecha_recepcion_factura, fecha_recepcion_vehiculo, fecha_retorno_vehiculo, dias_mantenimiento, cod_tipo_mantenimiento, total_mantenimiento_repara_q, cod_vehiculo, placa, utilizo_seguro, registro_pago, cod_sede, cod_empleado_recepcion, cod_cargo_empleado_recepcion, cod_empleado_recepcion_fact, cod_cargo_empleado_recepcion_fact, cod_empleado_digita, activo, fecha_envio_vehiculo) FROM stdin;
    public       postgres    false    211   ��      
          0    16476    marca 
   TABLE DATA               @   COPY marca (cod_marca, nombre_marca, orden, activo) FROM stdin;
    public       postgres    false    213   ��      
          0    16481 	   municipio 
   TABLE DATA               �   COPY municipio (cod_municipio, cod_departamento, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    215   G�      
          0    16486    organigrama 
   TABLE DATA               ^   COPY organigrama (cod_organigrama, cod_unidad, cod_organigrama_padre, cod_status) FROM stdin;
    public       postgres    false    217   t�      
          0    16491    pais 
   TABLE DATA               f   COPY pais (cod_pais, nombre_pais, gentilicio, codigo_telefonico, codigo_iso, cod_estatus) FROM stdin;
    public       postgres    false    219   p�      

          0    16496    persona 
   TABLE DATA               �   COPY persona (cod_persona, nombre_1, nombre_2, apellido_1, apellido_2, apellido_casada, nit, estado_civil, cod_estatus, cod_reloj_persona, cod_puesto) FROM stdin;
    public       postgres    false    221   ��      
          0    16505    proveedores 
   TABLE DATA               `   COPY proveedores (cod_proveedor, nit, direccion, telefono, nombre_contacto, activo) FROM stdin;
    public       postgres    false    223   �<      
          0    16513    puesto 
   TABLE DATA               �   COPY puesto (cod_puesto, cod_tipo_puesto, cod_organigrama, cod_persona, descripcion, cod_estatus, cod_sede, no_doc_creacion, no_doc_finalizacion, descripcion_femenino, cod_puesto_reemplazo, fecha_sistema) FROM stdin;
    public       postgres    false    225   3=      
          0    16521    region 
   TABLE DATA               ?   COPY region (cod_region, descripcion, cod_estatus) FROM stdin;
    public       postgres    false    227   �      %
          0    17589    rol_usuario 
   TABLE DATA               /   COPY rol_usuario (id, rol, nombre) FROM stdin;
    public       postgres    false    248   +      
          0    16526    sede 
   TABLE DATA               �   COPY sede (cod_sede, cod_municipio, cod_tipo_sede, nombre_sede, direccion, telefono_1, telefono_2, cod_coordindor, cod_organigrama, cod_estatus, cod_region_supervision, correo_electronico, zona) FROM stdin;
    public       postgres    false    229   T      
          0    16534    tipo_dependencia_institucion 
   TABLE DATA               x   COPY tipo_dependencia_institucion (cod_tipo_dependencia_institucion, descripcion, cod_estatus, abreviatura) FROM stdin;
    public       postgres    false    231   $      
          0    16539    tipo_imagen 
   TABLE DATA               R   COPY tipo_imagen (cod_tipo_imagen, nombre_tipo_imagen, orden, activo) FROM stdin;
    public       postgres    false    233   A      
          0    16544    tipo_mantenimiento_reparacion 
   TABLE DATA               [   COPY tipo_mantenimiento_reparacion (cod_tipo_mant_rep, descripcion, mant_repa) FROM stdin;
    public       postgres    false    235   ^      
          0    16549 	   tipo_tipo 
   TABLE DATA               L   COPY tipo_tipo (cod_tipo_tipo, nombre_tipo_tipo, orden, activo) FROM stdin;
    public       postgres    false    237   �      
          0    16554    tipo_uso 
   TABLE DATA               I   COPY tipo_uso (cod_tipo_uso, nombre_tipo_uso, orden, activo) FROM stdin;
    public       postgres    false    239         
          0    16559    unidad 
   TABLE DATA               `   COPY unidad (cod_unidad, descripcion, cod_estatus, tiene_dependencia, nomenclatura) FROM stdin;
    public       postgres    false    241   J      #
          0    17581    usuario 
   TABLE DATA               0   COPY usuario (id, nombre, password) FROM stdin;
    public       postgres    false    246   �       
          0    16564    vehiculo 
   TABLE DATA               o  COPY vehiculo (cod_vehiculo, placa, nit, poliza, direccion, cod_municipio, cod_departamento, nombre, modelo, cod_tipo_uso, chasis, cod_tipo_tipo, cod_marca, cod_linea, vin, centimetros_cubicos, cilindros, toneladas, titulo, tarjeta_circulacion, cod_color, no_asientos, no_inventario_registro, cod_persona_asignacion, cod_pueston, no_motor, orden, activo) FROM stdin;
    public       postgres    false    243   E      K
           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('asignacion_vehiculo_cod_asignacion_vehiculo_seq', 1, true);
            public       postgres    false    186            L
           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq', 2, true);
            public       postgres    false    188            M
           0    0    color_cod_color_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('color_cod_color_seq', 3, true);
            public       postgres    false    190            N
           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('combustible_comision_cod_combustible_comision_seq', 2, true);
            public       postgres    false    192            O
           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('combustible_cupon_cod_combustible_cupon_seq', 5, true);
            public       postgres    false    194            P
           0    0 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('concurso_mantenimientos_cod_concurso_mantenimiento_seq', 1, false);
            public       postgres    false    196            Q
           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('cupon_denominacion_cod_cupon_denominacion_seq', 2, true);
            public       postgres    false    198            R
           0    0 !   departamento_cod_departamento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('departamento_cod_departamento_seq', 1, false);
            public       postgres    false    200            S
           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('dependencia_institucion_cod_dependencia_institucion_seq', 1, false);
            public       postgres    false    202            T
           0    0 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('detalle_mant_rep_cod_detalle_mant_repara_seq', 5, true);
            public       postgres    false    204            U
           0    0    imagen_cod_imagen_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('imagen_cod_imagen_seq', 55, true);
            public       postgres    false    206            V
           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('kilometraje_comision_cod_kilometraje_comision_seq', 1, false);
            public       postgres    false    208            W
           0    0    linea_cod_linea_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('linea_cod_linea_seq', 5, true);
            public       postgres    false    210            X
           0    0 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq', 7, true);
            public       postgres    false    212            Y
           0    0    marca_cod_marca_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('marca_cod_marca_seq', 1, true);
            public       postgres    false    214            Z
           0    0    municipio_cod_municipio_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('municipio_cod_municipio_seq', 1, false);
            public       postgres    false    216            [
           0    0    organigrama_cod_organigrama_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('organigrama_cod_organigrama_seq', 2, true);
            public       postgres    false    218            \
           0    0    pais_cod_pais_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('pais_cod_pais_seq', 1, true);
            public       postgres    false    220            ]
           0    0    persona_cod_persona_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('persona_cod_persona_seq', 2, true);
            public       postgres    false    222            ^
           0    0    proveedores_cod_proveedor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('proveedores_cod_proveedor_seq', 2, true);
            public       postgres    false    224            _
           0    0    puesto_cod_puesto_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('puesto_cod_puesto_seq', 2, true);
            public       postgres    false    226            `
           0    0    region_cod_region_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('region_cod_region_seq', 1, false);
            public       postgres    false    228            a
           0    0    roles_usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('roles_usuario_id_seq', 1, false);
            public       postgres    false    247            b
           0    0    sede_cod_sede_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('sede_cod_sede_seq', 1, true);
            public       postgres    false    230            c
           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq', 1, false);
            public       postgres    false    232            d
           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tipo_imagen_cod_tipo_imagen_seq', 1, false);
            public       postgres    false    234            e
           0    0 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq', 2, true);
            public       postgres    false    236            f
           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tipo_tipo_cod_tipo_tipo_seq', 3, true);
            public       postgres    false    238            g
           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tipo_uso_cod_tipo_uso_seq', 5, true);
            public       postgres    false    240            h
           0    0    unidad_cod_unidad_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('unidad_cod_unidad_seq', 3, true);
            public       postgres    false    242            i
           0    0    usuario_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('usuario_id_seq', 1, true);
            public       postgres    false    245            j
           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('vehiculo_cod_vehiculo_seq', 150, true);
            public       postgres    false    244            �           2606    16603 .   asignacion_vehiculo pk_cod_asignacion_vehiculo 
   CONSTRAINT     z   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT pk_cod_asignacion_vehiculo PRIMARY KEY (cod_asignacion_vehiculo);
 X   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT pk_cod_asignacion_vehiculo;
       public         postgres    false    185            �           2606    16605 <   asignacion_vehiculo_piloto pk_cod_asignacion_vehiculo_piloto 
   CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT pk_cod_asignacion_vehiculo_piloto PRIMARY KEY (cod_asignacion_vehiculo_piloto);
 f   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT pk_cod_asignacion_vehiculo_piloto;
       public         postgres    false    187            �           2606    16607    color pk_cod_color 
   CONSTRAINT     P   ALTER TABLE ONLY color
    ADD CONSTRAINT pk_cod_color PRIMARY KEY (cod_color);
 <   ALTER TABLE ONLY public.color DROP CONSTRAINT pk_cod_color;
       public         postgres    false    189            �           2606    16609 0   combustible_comision pk_cod_combustible_comision 
   CONSTRAINT     }   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT pk_cod_combustible_comision PRIMARY KEY (cod_combustible_comision);
 Z   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT pk_cod_combustible_comision;
       public         postgres    false    191            �           2606    16611 *   combustible_cupon pk_cod_combustible_cupon 
   CONSTRAINT     t   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT pk_cod_combustible_cupon PRIMARY KEY (cod_combustible_cupon);
 T   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT pk_cod_combustible_cupon;
       public         postgres    false    193            �           2606    16613 ,   cupon_denominacion pk_cod_cupon_denominacion 
   CONSTRAINT     w   ALTER TABLE ONLY cupon_denominacion
    ADD CONSTRAINT pk_cod_cupon_denominacion PRIMARY KEY (cod_cupon_denominacion);
 V   ALTER TABLE ONLY public.cupon_denominacion DROP CONSTRAINT pk_cod_cupon_denominacion;
       public         postgres    false    197            �           2606    16615     departamento pk_cod_departamento 
   CONSTRAINT     e   ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);
 J   ALTER TABLE ONLY public.departamento DROP CONSTRAINT pk_cod_departamento;
       public         postgres    false    199            �           2606    16617 6   dependencia_institucion pk_cod_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT pk_cod_dependencia_institucion PRIMARY KEY (cod_dependencia_institucion);
 `   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT pk_cod_dependencia_institucion;
       public         postgres    false    201            �           2606    16619    imagen pk_cod_imagen 
   CONSTRAINT     S   ALTER TABLE ONLY imagen
    ADD CONSTRAINT pk_cod_imagen PRIMARY KEY (cod_imagen);
 >   ALTER TABLE ONLY public.imagen DROP CONSTRAINT pk_cod_imagen;
       public         postgres    false    205            �           2606    16621 0   kilometraje_comision pk_cod_kilometraje_comision 
   CONSTRAINT     }   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT pk_cod_kilometraje_comision PRIMARY KEY (cod_kilometraje_comision);
 Z   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT pk_cod_kilometraje_comision;
       public         postgres    false    207            �           2606    16623    linea pk_cod_linea 
   CONSTRAINT     P   ALTER TABLE ONLY linea
    ADD CONSTRAINT pk_cod_linea PRIMARY KEY (cod_linea);
 <   ALTER TABLE ONLY public.linea DROP CONSTRAINT pk_cod_linea;
       public         postgres    false    209            �           2606    16625    marca pk_cod_marca 
   CONSTRAINT     P   ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_cod_marca PRIMARY KEY (cod_marca);
 <   ALTER TABLE ONLY public.marca DROP CONSTRAINT pk_cod_marca;
       public         postgres    false    213            �           2606    16627    municipio pk_cod_municipio 
   CONSTRAINT     \   ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_cod_municipio PRIMARY KEY (cod_municipio);
 D   ALTER TABLE ONLY public.municipio DROP CONSTRAINT pk_cod_municipio;
       public         postgres    false    215            �           2606    16629    pais pk_cod_pais 
   CONSTRAINT     M   ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_cod_pais PRIMARY KEY (cod_pais);
 :   ALTER TABLE ONLY public.pais DROP CONSTRAINT pk_cod_pais;
       public         postgres    false    219            	           2606    16631    persona pk_cod_persona 
   CONSTRAINT     V   ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_cod_persona PRIMARY KEY (cod_persona);
 @   ALTER TABLE ONLY public.persona DROP CONSTRAINT pk_cod_persona;
       public         postgres    false    221            	           2606    16633    puesto pk_cod_puesto 
   CONSTRAINT     S   ALTER TABLE ONLY puesto
    ADD CONSTRAINT pk_cod_puesto PRIMARY KEY (cod_puesto);
 >   ALTER TABLE ONLY public.puesto DROP CONSTRAINT pk_cod_puesto;
       public         postgres    false    225            	           2606    16635    region pk_cod_region 
   CONSTRAINT     S   ALTER TABLE ONLY region
    ADD CONSTRAINT pk_cod_region PRIMARY KEY (cod_region);
 >   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_cod_region;
       public         postgres    false    227            	           2606    16637    sede pk_cod_sede 
   CONSTRAINT     M   ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_cod_sede PRIMARY KEY (cod_sede);
 :   ALTER TABLE ONLY public.sede DROP CONSTRAINT pk_cod_sede;
       public         postgres    false    229            	           2606    16639 @   tipo_dependencia_institucion pk_cod_tipo_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY tipo_dependencia_institucion
    ADD CONSTRAINT pk_cod_tipo_dependencia_institucion PRIMARY KEY (cod_tipo_dependencia_institucion);
 j   ALTER TABLE ONLY public.tipo_dependencia_institucion DROP CONSTRAINT pk_cod_tipo_dependencia_institucion;
       public         postgres    false    231            	           2606    16641    tipo_imagen pk_cod_tipo_imagen 
   CONSTRAINT     b   ALTER TABLE ONLY tipo_imagen
    ADD CONSTRAINT pk_cod_tipo_imagen PRIMARY KEY (cod_tipo_imagen);
 H   ALTER TABLE ONLY public.tipo_imagen DROP CONSTRAINT pk_cod_tipo_imagen;
       public         postgres    false    233            !	           2606    16643    tipo_tipo pk_cod_tipo_tipo 
   CONSTRAINT     \   ALTER TABLE ONLY tipo_tipo
    ADD CONSTRAINT pk_cod_tipo_tipo PRIMARY KEY (cod_tipo_tipo);
 D   ALTER TABLE ONLY public.tipo_tipo DROP CONSTRAINT pk_cod_tipo_tipo;
       public         postgres    false    237            %	           2606    16645    tipo_uso pk_cod_tipo_uso 
   CONSTRAINT     Y   ALTER TABLE ONLY tipo_uso
    ADD CONSTRAINT pk_cod_tipo_uso PRIMARY KEY (cod_tipo_uso);
 B   ALTER TABLE ONLY public.tipo_uso DROP CONSTRAINT pk_cod_tipo_uso;
       public         postgres    false    239            *	           2606    16647    unidad pk_cod_unidad 
   CONSTRAINT     S   ALTER TABLE ONLY unidad
    ADD CONSTRAINT pk_cod_unidad PRIMARY KEY (cod_unidad);
 >   ALTER TABLE ONLY public.unidad DROP CONSTRAINT pk_cod_unidad;
       public         postgres    false    241            2	           2606    16649    vehiculo pk_cod_vehiculo 
   CONSTRAINT     Y   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_cod_vehiculo PRIMARY KEY (cod_vehiculo);
 B   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT pk_cod_vehiculo;
       public         postgres    false    243            �           2606    16651 2   concurso_mantenimientos pk_concurso_mantenimientos 
   CONSTRAINT     �   ALTER TABLE ONLY concurso_mantenimientos
    ADD CONSTRAINT pk_concurso_mantenimientos PRIMARY KEY (cod_concurso_mantenimiento);
 \   ALTER TABLE ONLY public.concurso_mantenimientos DROP CONSTRAINT pk_concurso_mantenimientos;
       public         postgres    false    195            �           2606    16653 $   detalle_mant_rep pk_detalle_mant_rep 
   CONSTRAINT     p   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT pk_detalle_mant_rep PRIMARY KEY (cod_detalle_mant_repara);
 N   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT pk_detalle_mant_rep;
       public         postgres    false    203            �           2606    16655 ,   mantenimiento_reparacion pk_manto_reparacion 
   CONSTRAINT     }   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT pk_manto_reparacion PRIMARY KEY (cod_mantenimiento_reparacion);
 V   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT pk_manto_reparacion;
       public         postgres    false    211            �           2606    16657    organigrama pk_organigrama 
   CONSTRAINT     ^   ALTER TABLE ONLY organigrama
    ADD CONSTRAINT pk_organigrama PRIMARY KEY (cod_organigrama);
 D   ALTER TABLE ONLY public.organigrama DROP CONSTRAINT pk_organigrama;
       public         postgres    false    217            	           2606    16659    proveedores pk_proveedores 
   CONSTRAINT     \   ALTER TABLE ONLY proveedores
    ADD CONSTRAINT pk_proveedores PRIMARY KEY (cod_proveedor);
 D   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT pk_proveedores;
       public         postgres    false    223            	           2606    16661 6   tipo_mantenimiento_reparacion pk_tipo_manto_reparacion 
   CONSTRAINT     |   ALTER TABLE ONLY tipo_mantenimiento_reparacion
    ADD CONSTRAINT pk_tipo_manto_reparacion PRIMARY KEY (cod_tipo_mant_rep);
 `   ALTER TABLE ONLY public.tipo_mantenimiento_reparacion DROP CONSTRAINT pk_tipo_manto_reparacion;
       public         postgres    false    235            6	           2606    17597    rol_usuario roles_usuario_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY rol_usuario
    ADD CONSTRAINT roles_usuario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.rol_usuario DROP CONSTRAINT roles_usuario_pkey;
       public         postgres    false    248            4	           2606    17586    usuario usuario_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    246            �           1259    16965    IDX_apellido    INDEX     A   CREATE INDEX "IDX_apellido" ON persona USING btree (apellido_1);
 "   DROP INDEX public."IDX_apellido";
       public         postgres    false    221            �           1259    17613    IDX_cod_apellido1    INDEX     F   CREATE INDEX "IDX_cod_apellido1" ON persona USING btree (apellido_1);
 '   DROP INDEX public."IDX_cod_apellido1";
       public         postgres    false    221            �           1259    17628    IDX_cod_asignacion_vehiculo    INDEX     p   CREATE INDEX "IDX_cod_asignacion_vehiculo" ON asignacion_vehiculo_piloto USING btree (cod_asignacion_vehiculo);
 1   DROP INDEX public."IDX_cod_asignacion_vehiculo";
       public         postgres    false    187            �           1259    17627 "   IDX_cod_asignacion_vehiculo_piloto    INDEX     ~   CREATE INDEX "IDX_cod_asignacion_vehiculo_piloto" ON asignacion_vehiculo_piloto USING btree (cod_asignacion_vehiculo_piloto);
 8   DROP INDEX public."IDX_cod_asignacion_vehiculo_piloto";
       public         postgres    false    187            +	           1259    16970    IDX_cod_color    INDEX     B   CREATE INDEX "IDX_cod_color" ON vehiculo USING btree (cod_color);
 #   DROP INDEX public."IDX_cod_color";
       public         postgres    false    243            �           1259    17598    IDX_cod_depto    INDEX     M   CREATE INDEX "IDX_cod_depto" ON departamento USING btree (cod_departamento);
 #   DROP INDEX public."IDX_cod_depto";
       public         postgres    false    199            �           1259    17608    IDX_cod_depto_municipio    INDEX     T   CREATE INDEX "IDX_cod_depto_municipio" ON municipio USING btree (cod_departamento);
 -   DROP INDEX public."IDX_cod_depto_municipio";
       public         postgres    false    215            �           1259    17600    IDX_cod_estatus    INDEX     J   CREATE INDEX "IDX_cod_estatus" ON departamento USING btree (cod_estatus);
 %   DROP INDEX public."IDX_cod_estatus";
       public         postgres    false    199            �           1259    17609    IDX_cod_estatus_municipio    INDEX     Q   CREATE INDEX "IDX_cod_estatus_municipio" ON municipio USING btree (cod_estatus);
 /   DROP INDEX public."IDX_cod_estatus_municipio";
       public         postgres    false    215            �           1259    17612    IDX_cod_estatus_persona    INDEX     M   CREATE INDEX "IDX_cod_estatus_persona" ON persona USING btree (cod_estatus);
 -   DROP INDEX public."IDX_cod_estatus_persona";
       public         postgres    false    221            	           1259    17602    IDX_cod_estatus_region    INDEX     K   CREATE INDEX "IDX_cod_estatus_region" ON region USING btree (cod_estatus);
 ,   DROP INDEX public."IDX_cod_estatus_region";
       public         postgres    false    227            &	           1259    17621    IDX_cod_estatus_unidad    INDEX     K   CREATE INDEX "IDX_cod_estatus_unidad" ON unidad USING btree (cod_estatus);
 ,   DROP INDEX public."IDX_cod_estatus_unidad";
       public         postgres    false    241            �           1259    16977    IDX_cod_imagen    INDEX     B   CREATE INDEX "IDX_cod_imagen" ON imagen USING btree (cod_imagen);
 $   DROP INDEX public."IDX_cod_imagen";
       public         postgres    false    205            �           1259    17607    IDX_cod_municipio    INDEX     K   CREATE INDEX "IDX_cod_municipio" ON municipio USING btree (cod_municipio);
 '   DROP INDEX public."IDX_cod_municipio";
       public         postgres    false    215            	           1259    17604    IDX_cod_municipio_sede    INDEX     K   CREATE INDEX "IDX_cod_municipio_sede" ON sede USING btree (cod_municipio);
 ,   DROP INDEX public."IDX_cod_municipio_sede";
       public         postgres    false    229            "	           1259    17618    IDX_cod_nombre_tipo_uso    INDEX     R   CREATE INDEX "IDX_cod_nombre_tipo_uso" ON tipo_uso USING btree (nombre_tipo_uso);
 -   DROP INDEX public."IDX_cod_nombre_tipo_uso";
       public         postgres    false    239            	           1259    16974    IDX_cod_organigrama    INDEX     L   CREATE INDEX "IDX_cod_organigrama" ON puesto USING btree (cod_organigrama);
 )   DROP INDEX public."IDX_cod_organigrama";
       public         postgres    false    225            �           1259    16962    IDX_cod_persona    INDEX     E   CREATE INDEX "IDX_cod_persona" ON persona USING btree (cod_persona);
 %   DROP INDEX public."IDX_cod_persona";
       public         postgres    false    221            	           1259    16975    IDX_cod_persona_    INDEX     E   CREATE INDEX "IDX_cod_persona_" ON puesto USING btree (cod_persona);
 &   DROP INDEX public."IDX_cod_persona_";
       public         postgres    false    225            ,	           1259    17615    IDX_cod_persona_asigna_vehiculo    INDEX     a   CREATE INDEX "IDX_cod_persona_asigna_vehiculo" ON vehiculo USING btree (cod_persona_asignacion);
 5   DROP INDEX public."IDX_cod_persona_asigna_vehiculo";
       public         postgres    false    243            �           1259    17629    IDX_cod_piloto_asignado    INDEX     p   CREATE INDEX "IDX_cod_piloto_asignado" ON asignacion_vehiculo_piloto USING btree (cod_persona_piloto_asignado);
 -   DROP INDEX public."IDX_cod_piloto_asignado";
       public         postgres    false    187            �           1259    16966    IDX_cod_puesto    INDEX     C   CREATE INDEX "IDX_cod_puesto" ON persona USING btree (cod_puesto);
 $   DROP INDEX public."IDX_cod_puesto";
       public         postgres    false    221            		           1259    16971    IDX_cod_puesto_    INDEX     C   CREATE INDEX "IDX_cod_puesto_" ON puesto USING btree (cod_puesto);
 %   DROP INDEX public."IDX_cod_puesto_";
       public         postgres    false    225            -	           1259    17616    IDX_cod_puesto_vehiculos    INDEX     O   CREATE INDEX "IDX_cod_puesto_vehiculos" ON vehiculo USING btree (cod_pueston);
 .   DROP INDEX public."IDX_cod_puesto_vehiculos";
       public         postgres    false    243            	           1259    17601    IDX_cod_region    INDEX     B   CREATE INDEX "IDX_cod_region" ON region USING btree (cod_region);
 $   DROP INDEX public."IDX_cod_region";
       public         postgres    false    227            	           1259    17603    IDX_cod_sede    INDEX     <   CREATE INDEX "IDX_cod_sede" ON sede USING btree (cod_sede);
 "   DROP INDEX public."IDX_cod_sede";
       public         postgres    false    229            �           1259    16976    IDX_cod_tipo_imagen    INDEX     L   CREATE INDEX "IDX_cod_tipo_imagen" ON imagen USING btree (cod_tipo_imagen);
 )   DROP INDEX public."IDX_cod_tipo_imagen";
       public         postgres    false    205            
	           1259    16973    IDX_cod_tipo_puesto    INDEX     L   CREATE INDEX "IDX_cod_tipo_puesto" ON puesto USING btree (cod_tipo_puesto);
 )   DROP INDEX public."IDX_cod_tipo_puesto";
       public         postgres    false    225            	           1259    17605    IDX_cod_tipo_sede_sede    INDEX     K   CREATE INDEX "IDX_cod_tipo_sede_sede" ON sede USING btree (cod_tipo_sede);
 ,   DROP INDEX public."IDX_cod_tipo_sede_sede";
       public         postgres    false    229            	           1259    17622    IDX_cod_tipo_tipo    INDEX     K   CREATE INDEX "IDX_cod_tipo_tipo" ON tipo_tipo USING btree (cod_tipo_tipo);
 '   DROP INDEX public."IDX_cod_tipo_tipo";
       public         postgres    false    237            #	           1259    17617    IDX_cod_tipo_uso    INDEX     H   CREATE INDEX "IDX_cod_tipo_uso" ON tipo_uso USING btree (cod_tipo_uso);
 &   DROP INDEX public."IDX_cod_tipo_uso";
       public         postgres    false    239            '	           1259    17619    IDX_cod_unidad_unidad    INDEX     I   CREATE INDEX "IDX_cod_unidad_unidad" ON unidad USING btree (cod_unidad);
 +   DROP INDEX public."IDX_cod_unidad_unidad";
       public         postgres    false    241            .	           1259    16967    IDX_cod_vehiculo    INDEX     O   CREATE UNIQUE INDEX "IDX_cod_vehiculo" ON vehiculo USING btree (cod_vehiculo);
 &   DROP INDEX public."IDX_cod_vehiculo";
       public         postgres    false    243            	           1259    16972    IDX_descripcion    INDEX     D   CREATE INDEX "IDX_descripcion" ON puesto USING btree (descripcion);
 %   DROP INDEX public."IDX_descripcion";
       public         postgres    false    225            �           1259    17611    IDX_descripcion_depto    INDEX     P   CREATE INDEX "IDX_descripcion_depto" ON departamento USING btree (descripcion);
 +   DROP INDEX public."IDX_descripcion_depto";
       public         postgres    false    199            �           1259    17610    IDX_descripcion_municipio    INDEX     Q   CREATE INDEX "IDX_descripcion_municipio" ON municipio USING btree (descripcion);
 /   DROP INDEX public."IDX_descripcion_municipio";
       public         postgres    false    215            (	           1259    17620    IDX_descripcion_unidad    INDEX     K   CREATE INDEX "IDX_descripcion_unidad" ON unidad USING btree (descripcion);
 ,   DROP INDEX public."IDX_descripcion_unidad";
       public         postgres    false    241            �           1259    16958    IDX_fecha_asignacion    INDEX     [   CREATE INDEX "IDX_fecha_asignacion" ON asignacion_vehiculo USING btree (fecha_asignacion);
 *   DROP INDEX public."IDX_fecha_asignacion";
       public         postgres    false    185            �           1259    17626    IDX_fecha_hora_asignacion    INDEX     l   CREATE INDEX "IDX_fecha_hora_asignacion" ON asignacion_vehiculo_piloto USING btree (fecha_hora_asignacion);
 /   DROP INDEX public."IDX_fecha_hora_asignacion";
       public         postgres    false    187            �           1259    17625    IDX_fecha_hora_retorno    INDEX     o   CREATE INDEX "IDX_fecha_hora_retorno" ON asignacion_vehiculo_piloto USING btree (fecha_hora_retorno_vehiculo);
 ,   DROP INDEX public."IDX_fecha_hora_retorno";
       public         postgres    false    187            �           1259    17631    IDX_fecha_hora_retorno_asigna    INDEX     o   CREATE INDEX "IDX_fecha_hora_retorno_asigna" ON asignacion_vehiculo USING btree (fecha_hora_retorno_vehiculo);
 3   DROP INDEX public."IDX_fecha_hora_retorno_asigna";
       public         postgres    false    185            �           1259    17624    IDX_fecha_hora_uso    INDEX     g   CREATE INDEX "IDX_fecha_hora_uso" ON asignacion_vehiculo_piloto USING btree (fecha_hora_uso_vehiculo);
 (   DROP INDEX public."IDX_fecha_hora_uso";
       public         postgres    false    187            �           1259    17630 *   IDX_fecha_hora_uso_vehiculo_asignavehiculo    INDEX     x   CREATE INDEX "IDX_fecha_hora_uso_vehiculo_asignavehiculo" ON asignacion_vehiculo USING btree (fecha_hora_uso_vehiculo);
 @   DROP INDEX public."IDX_fecha_hora_uso_vehiculo_asignavehiculo";
       public         postgres    false    185            /	           1259    16969 
   IDX_modelo    INDEX     <   CREATE INDEX "IDX_modelo" ON vehiculo USING btree (modelo);
     DROP INDEX public."IDX_modelo";
       public         postgres    false    243            �           1259    17599    IDX_no_region    INDEX     G   CREATE INDEX "IDX_no_region" ON departamento USING btree (cod_region);
 #   DROP INDEX public."IDX_no_region";
       public         postgres    false    199            �           1259    16959    IDX_no_solicitud    INDEX     S   CREATE INDEX "IDX_no_solicitud" ON asignacion_vehiculo USING btree (no_solicitud);
 &   DROP INDEX public."IDX_no_solicitud";
       public         postgres    false    185             	           1259    16963    IDX_nombre_1    INDEX     ?   CREATE INDEX "IDX_nombre_1" ON persona USING btree (nombre_1);
 "   DROP INDEX public."IDX_nombre_1";
       public         postgres    false    221            	           1259    16964    IDX_nombre_completo    INDEX     h   CREATE INDEX "IDX_nombre_completo" ON persona USING btree (nombre_1, nombre_2, apellido_1, apellido_2);
 )   DROP INDEX public."IDX_nombre_completo";
       public         postgres    false    221    221    221    221            	           1259    17606    IDX_nombre_sede    INDEX     B   CREATE INDEX "IDX_nombre_sede" ON sede USING btree (nombre_sede);
 %   DROP INDEX public."IDX_nombre_sede";
       public         postgres    false    229            	           1259    17623    IDX_nombre_tipo_tipo    INDEX     Q   CREATE INDEX "IDX_nombre_tipo_tipo" ON tipo_tipo USING btree (nombre_tipo_tipo);
 *   DROP INDEX public."IDX_nombre_tipo_tipo";
       public         postgres    false    237            �           1259    16960    IDX_persona_solicitante    INDEX     e   CREATE INDEX "IDX_persona_solicitante" ON asignacion_vehiculo USING btree (cod_persona_solicitante);
 -   DROP INDEX public."IDX_persona_solicitante";
       public         postgres    false    185            0	           1259    17614    IDX_placa_unique    INDEX     A   CREATE INDEX "IDX_placa_unique" ON vehiculo USING btree (placa);
 &   DROP INDEX public."IDX_placa_unique";
       public         postgres    false    243            �           1259    16961    IDX_puesto_persona_solicitante    INDEX     k   CREATE INDEX "IDX_puesto_persona_solicitante" ON asignacion_vehiculo USING btree (cod_puesto_solicitante);
 4   DROP INDEX public."IDX_puesto_persona_solicitante";
       public         postgres    false    185            	           1259    16662    uniq_nit    INDEX     ?   CREATE UNIQUE INDEX uniq_nit ON proveedores USING btree (nit);
    DROP INDEX public.uniq_nit;
       public         postgres    false    223            7	           2606    16663 P   asignacion_vehiculo asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey FOREIGN KEY (cod_dependencia_institucion_juzgado) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 z   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey;
       public       postgres    false    185    201    2274            8	           2606    16668 K   asignacion_vehiculo asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey FOREIGN KEY (cod_persona_asignador_vehiculo) REFERENCES persona(cod_persona);
 u   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey;
       public       postgres    false    2307    221    185            9	           2606    16673 I   asignacion_vehiculo asignacion_vehiculo_cod_persona_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey FOREIGN KEY (cod_persona_coordinador_jefe) REFERENCES persona(cod_persona);
 s   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey;
       public       postgres    false    185    2307    221            :	           2606    16678 A   asignacion_vehiculo asignacion_vehiculo_cod_persona_pasajero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey FOREIGN KEY (cod_persona_pasajero) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey;
       public       postgres    false    2307    221    185            ;	           2606    16683 D   asignacion_vehiculo asignacion_vehiculo_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 n   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey;
       public       postgres    false    185    2307    221            <	           2606    16688 J   asignacion_vehiculo asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey FOREIGN KEY (cod_puesto_asignador_vehiculo) REFERENCES puesto(cod_puesto);
 t   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey;
       public       postgres    false    2317    225    185            =	           2606    16693 H   asignacion_vehiculo asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey FOREIGN KEY (cod_puesto_coordinador_jefe) REFERENCES puesto(cod_puesto);
 r   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey;
       public       postgres    false    2317    225    185            >	           2606    16698 C   asignacion_vehiculo asignacion_vehiculo_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey;
       public       postgres    false    2317    225    185            ?	           2606    16703 B   asignacion_vehiculo asignacion_vehiculo_cod_sede_lugar_salida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey FOREIGN KEY (cod_sede_lugar_salida) REFERENCES sede(cod_sede);
 l   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey;
       public       postgres    false    2327    185    229            @	           2606    16708 C   asignacion_vehiculo asignacion_vehiculo_cod_unidad_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey FOREIGN KEY (cod_unidad_solicitante) REFERENCES unidad(cod_unidad);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey;
       public       postgres    false    185    241    2346            A	           2606    16713 R   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey FOREIGN KEY (cod_asignacion_vehiculo) REFERENCES asignacion_vehiculo(cod_asignacion_vehiculo);
 |   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey;
       public       postgres    false    2248    185    187            B	           2606    16718 V   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey FOREIGN KEY (cod_persona_piloto_asignado) REFERENCES persona(cod_persona);
 �   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey;
       public       postgres    false    187    221    2307            C	           2606    16723 G   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 q   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey;
       public       postgres    false    2354    243    187            D	           2606    16728 O   combustible_comision combustible_comision_cod_persona_encargado_transporte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey FOREIGN KEY (cod_persona_encargado_transporte) REFERENCES persona(cod_persona);
 y   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey;
       public       postgres    false    2307    221    191            E	           2606    16733 C   combustible_comision combustible_comision_cod_persona_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_receptor_fkey FOREIGN KEY (cod_persona_receptor) REFERENCES persona(cod_persona);
 m   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_receptor_fkey;
       public       postgres    false    2307    221    191            F	           2606    16738 F   combustible_comision combustible_comision_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 p   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_solicitante_fkey;
       public       postgres    false    191    221    2307            G	           2606    16743 B   combustible_comision combustible_comision_cod_puesto_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_receptor_fkey FOREIGN KEY (cod_puesto_receptor) REFERENCES puesto(cod_puesto);
 l   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_receptor_fkey;
       public       postgres    false    191    225    2317            H	           2606    16748 E   combustible_comision combustible_comision_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 o   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey;
       public       postgres    false    2317    191    225            I	           2606    16753 7   combustible_comision combustible_comision_cod_sede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 a   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_sede_fkey;
       public       postgres    false    2327    229    191            J	           2606    16758 9   combustible_comision combustible_comision_cod_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_unidad_fkey FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);
 c   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_unidad_fkey;
       public       postgres    false    2346    241    191            K	           2606    16763 ;   combustible_comision combustible_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_vehiculo_fkey;
       public       postgres    false    2354    191    243            L	           2606    16768 A   combustible_cupon combustible_cupon_cod_combustible_comision_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_combustible_comision_fkey FOREIGN KEY (cod_combustible_comision) REFERENCES combustible_comision(cod_combustible_comision);
 k   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_combustible_comision_fkey;
       public       postgres    false    193    191    2260            M	           2606    16773 @   combustible_cupon combustible_cupon_cod_cupon_denominancion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey FOREIGN KEY (cod_cupon_denominancion) REFERENCES cupon_denominacion(cod_cupon_denominacion);
 j   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey;
       public       postgres    false    2266    193    197            N	           2606    16778 )   departamento departamento_cod_region_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_cod_region_fkey FOREIGN KEY (cod_region) REFERENCES region(cod_region);
 S   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_cod_region_fkey;
       public       postgres    false    2321    199    227            O	           2606    16783 E   dependencia_institucion dependencia_institucion_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 o   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_departamento_fkey;
       public       postgres    false    201    199    2272            P	           2606    16788 B   dependencia_institucion dependencia_institucion_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 l   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_municipio_fkey;
       public       postgres    false    201    2294    215            Q	           2606    16793 U   dependencia_institucion dependencia_institucion_cod_tipo_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey FOREIGN KEY (cod_tipo_dependencia_institucion) REFERENCES tipo_dependencia_institucion(cod_tipo_dependencia_institucion);
    ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey;
       public       postgres    false    2329    231    201            R	           2606    16798 +   detalle_mant_rep detalle_mant_rep_mant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT detalle_mant_rep_mant_fkey FOREIGN KEY (cod_mantenimiento_reparacion) REFERENCES mantenimiento_reparacion(cod_mantenimiento_reparacion);
 U   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT detalle_mant_rep_mant_fkey;
       public       postgres    false    211    203    2286            S	           2606    16803 %   detalle_mant_rep fk_det_mant_rep_tipo    FK CONSTRAINT     �   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT fk_det_mant_rep_tipo FOREIGN KEY (cod_tipo_mant_rep) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);
 O   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT fk_det_mant_rep_tipo;
       public       postgres    false    235    203    2333            b	           2606    16808    puesto fk_puesto_organigrama    FK CONSTRAINT     �   ALTER TABLE ONLY puesto
    ADD CONSTRAINT fk_puesto_organigrama FOREIGN KEY (cod_organigrama) REFERENCES organigrama(cod_organigrama);
 F   ALTER TABLE ONLY public.puesto DROP CONSTRAINT fk_puesto_organigrama;
       public       postgres    false    217    2296    225            `	           2606    16813 !   organigrama fk_unidad_organigrama    FK CONSTRAINT     ~   ALTER TABLE ONLY organigrama
    ADD CONSTRAINT fk_unidad_organigrama FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);
 K   ALTER TABLE ONLY public.organigrama DROP CONSTRAINT fk_unidad_organigrama;
       public       postgres    false    2346    241    217            T	           2606    16818 "   imagen imagen_cod_tipo_imagen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_tipo_imagen_fkey FOREIGN KEY (cod_tipo_imagen) REFERENCES tipo_imagen(cod_tipo_imagen);
 L   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_tipo_imagen_fkey;
       public       postgres    false    233    205    2331            U	           2606    16823    imagen imagen_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 I   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_vehiculo_fkey;
       public       postgres    false    243    205    2354            V	           2606    16828 J   kilometraje_comision kilometraje_comision_cod_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey FOREIGN KEY (cod_dependencia_institucion) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 t   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey;
       public       postgres    false    201    207    2274            W	           2606    16833 A   kilometraje_comision kilometraje_comision_cod_persona_piloto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey FOREIGN KEY (cod_persona_piloto) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey;
       public       postgres    false    221    2307    207            X	           2606    16838 ;   kilometraje_comision kilometraje_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_vehiculo_fkey;
       public       postgres    false    207    243    2354            Y	           2606    16843    linea linea_cod_marca_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY linea
    ADD CONSTRAINT linea_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 D   ALTER TABLE ONLY public.linea DROP CONSTRAINT linea_cod_marca_fkey;
       public       postgres    false    209    213    2288            Z	           2606    16848 7   mantenimiento_reparacion manto_reparacion_concurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_concurso_fkey FOREIGN KEY (cod_no_concurso) REFERENCES concurso_mantenimientos(cod_concurso_mantenimiento);
 a   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_concurso_fkey;
       public       postgres    false    195    2264    211            [	           2606    16853 5   mantenimiento_reparacion manto_reparacion_proveedores    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_proveedores FOREIGN KEY (cod_proveedor) REFERENCES proveedores(cod_proveedor);
 _   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_proveedores;
       public       postgres    false    223    211    2309            \	           2606    16858 3   mantenimiento_reparacion manto_reparacion_sede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 ]   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_sede_fkey;
       public       postgres    false    229    211    2327            ]	           2606    16863 6   mantenimiento_reparacion manto_reparacion_tipomanto_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_tipomanto_fk FOREIGN KEY (cod_tipo_mantenimiento) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);
 `   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_tipomanto_fk;
       public       postgres    false    235    2333    211            ^	           2606    16868 7   mantenimiento_reparacion manto_reparacion_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 a   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_vehiculo_fkey;
       public       postgres    false    211    243    2354            _	           2606    16873 )   municipio municipio_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 S   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_cod_departamento_fkey;
       public       postgres    false    2272    199    215            a	           2606    16878    persona persona_puesto_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_puesto_fkey FOREIGN KEY (cod_puesto) REFERENCES puesto(cod_puesto);
 E   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_puesto_fkey;
       public       postgres    false    2317    225    221            c	           2606    16883    puesto puesto_cod_persona_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_persona_fkey FOREIGN KEY (cod_persona) REFERENCES persona(cod_persona);
 H   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_persona_fkey;
       public       postgres    false    2307    221    225            d	           2606    16888 '   puesto puesto_cod_puesto_reemplazo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_puesto_reemplazo_fkey FOREIGN KEY (cod_puesto_reemplazo) REFERENCES puesto(cod_puesto);
 Q   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_puesto_reemplazo_fkey;
       public       postgres    false    225    2317    225            e	           2606    16893    puesto puesto_cod_sede_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 E   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_sede_fkey;
       public       postgres    false    225    2327    229            f	           2606    16898    sede sede_cod_coordindor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_coordindor_fkey FOREIGN KEY (cod_coordindor) REFERENCES persona(cod_persona);
 G   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_coordindor_fkey;
       public       postgres    false    2307    221    229            g	           2606    16903    sede sede_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 F   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_municipio_fkey;
       public       postgres    false    2294    229    215            h	           2606    16908     vehiculo vehiculo_cod_color_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_color_fkey FOREIGN KEY (cod_color) REFERENCES color(cod_color);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_color_fkey;
       public       postgres    false    189    2258    243            i	           2606    16913 '   vehiculo vehiculo_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 Q   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_departamento_fkey;
       public       postgres    false    199    2272    243            j	           2606    16918     vehiculo vehiculo_cod_linea_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES linea(cod_linea);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_linea_fkey;
       public       postgres    false    209    243    2284            k	           2606    16923     vehiculo vehiculo_cod_marca_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_marca_fkey;
       public       postgres    false    2288    243    213            l	           2606    16928 $   vehiculo vehiculo_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_municipio_fkey;
       public       postgres    false    215    2294    243            m	           2606    16933 -   vehiculo vehiculo_cod_persona_asignacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_persona_asignacion_fkey FOREIGN KEY (cod_persona_asignacion) REFERENCES persona(cod_persona);
 W   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_persona_asignacion_fkey;
       public       postgres    false    243    2307    221            n	           2606    16938 "   vehiculo vehiculo_cod_pueston_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_pueston_fkey FOREIGN KEY (cod_pueston) REFERENCES puesto(cod_puesto);
 L   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_pueston_fkey;
       public       postgres    false    225    243    2317            o	           2606    16943 $   vehiculo vehiculo_cod_tipo_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_tipo_fkey FOREIGN KEY (cod_tipo_tipo) REFERENCES tipo_tipo(cod_tipo_tipo);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_tipo_fkey;
       public       postgres    false    237    2337    243            p	           2606    16948 #   vehiculo vehiculo_cod_tipo_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_uso_fkey FOREIGN KEY (cod_tipo_uso) REFERENCES tipo_uso(cod_tipo_uso);
 M   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_uso_fkey;
       public       postgres    false    243    2341    239            �	   o   x�3�4204�54�52P00�#�?21�4���@�0T0��24�@34��2BcSΪ��DC΢�Ҽ��<��0�N  �X�i�SM�L�X�F�����F\1z\\\ �i�      �	   D   x�3�4��!#Cs]CC]#CK+CS+d1C#� ���X $�e4�H��YRd�#W� %��      �	   k  x�uR�n�0<���T��S��DR��S.+�J�rL���xm Q�;���]N�4x	gKNⳒ읺�F	��<k0���b]��R�]b��!�Wd��iz���E,���%&��*3�y1���TXC�s��i��V[��,(G!���J��X�AI{Zۛ�ŉTm�2~ �k�9�u,��8/��W�?j��荒�"Ӿe_�"ҝ�ҡ"��`T�"Z��0|t �L"�SK�n��������u��;��LD�d��Va�b���"<;nC���ؘ�� �}�`T��J&"���	��	�C
�*���h�y(�����<'G���c/e��9��|6G��c��kgہLZض�7<<��)˲?V�       �	   F   x�Uʱ�0C��7پ#�	2��@���'}��hRsn��|���dC�^X�,���N��#�~6      �	   4   x�3�4�4ASS3a�ij�eA3CN3 m`�e
�� d����� ��      �	      x������ � �      �	   -   x�3�t>�� ?O!%U!P���@���Hq�H���M�b���� �mv      �	   M  x�U�Kk�0�ϻ�"��D~����hȣ�Pr٪"vq�Ė.��Ɂ�0`������-Μ�ś+-��R�	)z��'�$@E�S*ho;;��J�@ެ�}��,}�U�o�qW��?�pRS�E��~�*��c4ƪ�K�q�5�3>rlT\�y���o@5��F�ը}ۻ)PN9�(��vv�+f�x�"e`I1V���*��Ӳi/�=��8�C�2:��C�m\���n��q0c,
sV>��-�w3��<�X���ouc"� V��7^��ՐG��e	-:�߮��Rz�ʧtV�KE��Y	1J����_�(�;�����V�_���a͇;f�:�      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   }  x�M�Qo�0��˯�@-myp�A��\�KQ��hI�,�߯���_��䴂p��?R���䘓���l���͡'�I�<J�ch���G�(�e	� `���]�\ VXIl��
�9���$�ku��>{�NR�Ľ�)���J�@@ɤ:C���Vi��A7�I@�U.�z¨xo���5�S���gf�)*u�h�8	IQW�	��x�Ȼ�����"�I`Ȯ�T�ؔ�V~��l�%cC��Z��4}J��5��r�=E�)NZ^�ː�7��zri8�9��sJ�Im��*��}�^�؝r��#��*X�*���F!y� ^D�|�N¦��V���ro�&`��tb�؊�!����ݨ�i�z�Y�2�c���O{�:�� 8��       
      x������ � �      
   T   x�3���,.N����,�2�ɯ�/I��L9�K�J�3!<3N�Ī��9�G~�c�鑙�a[r��:C������%N� ]m�      
     x�mZ[o�8}�����n�^7�&���$-v�}ad5V �^]M~�wfx�S�H��3gfΌ,b���eV��YM�Quj��bX,%���ZOM��M�r!�)���8�i,]��5�U?��'}l�x���+-��2����^�^���}�UX��jlj���wZ�/�ea�~Sä;}lV��;�q��&�{�bY�Uws������rYٍ�iՇ�T�j),ک���p�Kh:Y
�ߴS޴oV��8�%�KA�m�y���om�j�Ġ\�Ԟt��n�i�N�`*]
��vƟM#Os���
M��^m`�q�U]�����ɖ"�Gݪ	�ť��:��	��R0�Ë��޷�lVDeV�n��Ds���s{\�Zw?�ե��=�S8zH�t�=`�y2o"��Ծ����:����]�1�k���Yfg�/�@f��;A|��XYv̓j�s������s�jT_t0�$D>�}U���4%46G5��X,��ڮS�/s�
�K��٪@��^�C�R辙��<g)�)0a aΘ<0j��T��V��m�:���V̛�hia�A��	��ۥ%�=55��<��ӊf���>��r��m殡��<)gǵpϴ�#d��g��;�D�T0�:��i�:�m͸�ݜt��b��=(�~�x�����6�:7G���z�[3 ��P/�=2ޚ���VOp�!n]�7\�,�!g��\|��	3�#ͷvl'U��w~�I�Ą���r#�eX���@���*[�g�g���hQm�$�eYX��+P�N��&r��+�����;.+�,���}VH5�0+���~U�������$�)2b�����-`k�4�
�t?�1���ZƮyj_q��;��x[8��]j=^����gβ�K��`7�s����g�2�H�三��Y��K��ID��q*�0N/�-2���W��Į�LQ�k��"�iǭB�֐5��9b��4�!�3bW���<i�d�s��/1����z8zn��ۦ�_�8"[�c�?�{�S���ի�����]�ۀ�Z�Z@���|l_}�+�k��.��R࿭z��cJɃ�ֽY����6�=⿶�1�\�q�i�k�S� Wf�)1����������E��?>L�/�IIPl�#��(ؕ�u�#*�����NP���$���1 ��Q�r0���_{5�+A}�Q�i^e�J���E�����&q��ˊ.��#]�6��#�<��eE���W��aL�&��.+�9��q��YGT �`��Ԁ�J;���K����,�i׸�u���(���|	���&���ކN�Q��)���y��ٲ�8*�]<�#��")�`8����HJ^�:�s5ER�p��$�����CQ2o���;� �H� v���������!�"5Sz��rX*;$8`�S��f�H�
�`����P�Ù�))D�J� pR�ʜņ�@J!	��f�)$]����N#��+���T����B�vw�6���C��`�Q������ض'�4�_` 	�����<r�F��%�H$A� ����cH@��H�<�7SPy������0w��"��G�gT�mHE:��s�n�f_Jh�"�g��I�\ȎIl�|n���xo�.�f�cS��$. �QU4���;�pai��h���K���=��Kp�]]$#	\.���e!-��ˋ�x~A� jج��z5��>Dh�2��j����X@�u�#H�^�����)C�LGH��# Q\F"�z'��PKC����rW;֥]�
Ħ>
���_Sµi�D���C�Ao����B� EYLd����g��(Zd��qf�1O�\&ldk�J��<�� �T�[#�l ����!��TQ,�(��A�	J �+�h=�cQa�\�ɧ�Fa�z��Ez&�rE��Ss���l�l�F�H<��.`"AW �ꕎ���N�z�G0�3r�����fy���B�^����;���g�'�n��y�ŬaGN  :�1%r�&=θ��2���sQ�:/Q,C n�����)@U�Q�FXB�b�`��Gw�1 
IK�S#��#
k�sy��1��	�5j�C�=����Q�#Jk$���P����ִ��jsO�'Eo��;e~����L�vɰ�f�*��R��9J����q�.�3�|ŢN�((c��g��������#������\;�a�6P�XA��c��к43B�VrO�Y y1����)O6M%�1�!�ގ��x�_:<������}�o:��"P��9����@�Xً�a�U�	7�^j��
�D��xb���;�f�+��~o��9
�$�p�l��nh L��>�j�'��9�l��$����q�D	Ak��RV�-�;�*3	Ak��TO�aK��0h��%4�]b˷M�lw�p�b��WCFn,B�� Vb�8�rcB ��|%�PԳA��	��*����cDFI�JMG=�ɦB�8�Q>5Y*E���~�d�4n��d��áf缏;�d��X.�4�D)O�S#UX��V�`(nN�;l��HR8�w/,h\�2V}t6(\�^!���0a�

�ԝ
`H"(W�MtY��)���aʞ�kۥe�!]�� |j����p�8E�n���j���yԹ��>'�8!?�pShVL��P镬�V��E��:�<���9	�j���a%�	+�.������if߀(l�b�![��&ܢ�ǲb��֚R�U����1�be�2c���/���G��*F�����F�@U瓟�85[��rE��Ο�ԞQ'?�(!K1u?sw��OB���b�>>�9����[S�b�h�mJ;طq����0h>S�������(�;�N�^ w��.����vd1�NQ����죏���v�L� �%�'�=�M�Gd��p-}W�Z'��[���~���/��T"�*��v�kMOF�E����D&��q��4��\6��ҽ7|���h�L�`mU����2_;��1�ʜaAum�����sc�����T�\�KhP����9��E	'sڊ�P.Q0o�EE�u:�*��ʌ\��g	l�ڞ:�<���_�z
Q��g��Z�u9�>�<K��pN@�Ӽ����~��"&i�_UD��A��zxR��8Ei���K��r��ȱ	�C�2q+�2F@����J��
ZF�ؓ�Sg���m
�g+=��������fen{
چ��V��g��+��7$+U�n��0<+�����@#˾�qE���+�BG�^�,��+������c$+���%��g$+���]�ᮑ�d@�~f|ec:H�b4IV{ۚ������M2n����Z!P+n��E��g&���5y9�U����E~N)��
�>��#��o���֓�}ڔDpu���5��)���:�S[;�NI����\;%���F�r��򥺶�^'��u�/ni'_NI�VQd�ƭ��hJҶ�"�Am��	Cp�z����	ðU�lKcv�T������cS!�0�G=�T�?�-
�����5��~���M��C��ըw}=��0y����/��l<�	�+���7 ��$���q� ��o�" �!��)��A,B�m��h0�D����W'M���4J�~[rOq*y_�Lq���$ �����b�I��2��ܯ\Z��Sr:~S?��1v�|��p��d����������O��~��.>�&ҽ�[��������r�~�>h��iʴxP?���6!M�g���E͗�@X�������4��쑼��?��㕦�
}����n���Xh�7`]9�S��q����Y�z���>ډ����������2\T      
   �  x�ETKn![gS~˶��������!��H�~�q̨��~����� MZ9��h�}�\�]T�L�!-�����A�����؛�- �q� F�Q��\�EC���)��N��Z����&AY,Z���T֭GC�)%1��VqJ��]lD�p���K\4vg�[l����ĬYĎ�(Z4IXf�-�2f�!c%�����癊a��N�pd�J��LO�d��]�C�l��ϐ��~������%ː�1ۚ���
��zws���@;�A]��t@�0,<h�fi�i�VM°��H#aT�St���(�Z�a�1�2�㮤�y�A��)ƈ�A�����0�.c>�2&4� S�QGpC1�dP�q��/Ӎ�%�D0�x�R�.���1Q����x�v;�ׇ@��$P�+��D�h��o
!��S(i���h$���v�BJ�R`���8l-�6K���#�-	�G|�(A{���#��z{���ʨ      
   (   x�3�t/M,I�M�I��JR��9M�8�C8��b���� �3      

      x�u}�vG��:�+��1� 8�84�R�t�	 C@��L$K��hY�Z��]o�c�^���ӧ�����fצkV�՛鰝V/��;���˴[�����0W��כeՏ��C�V�ޮ�/���}?�����;����~�l�m�_�=�����}_V�ޮU�V�v�/|�~:�<������#}~?m����v4q���J�f������Â��|>�����v�*q�����)O�ݰTgV/ۛ���_�~��i7�l����Nㇲ�Wvm�z������췻i�j:���?�nN�����Ǜ��}W����T�z6�ͷ����ބ���=�.�/�W~ѴË��83��-��Wo��#~�O_��/��g�llKיjY��ڍju~|8l7��f|�}~�_�~�n�Nz�f�c��i��[=�����<|w�.�;�='<7���=��j��=Ϊ�����r�y�{���b>���J��N�!S�[}�^������t��vx���U��L?��V�m��GoW?�vت���n��j{���g�1;��u���p�u/6'y��i��nOx�9<p�zջ�J�n�����ò�a:,;��0�o�ȟ����A�F��7���f�r�̐�eu~�=�+Nv��߇vV��7l���⹧�k�ز���>�Q� ݼ���UTw������������������z}3��'vׯ���T���8Ż�q:L73^������M�����c����X]=�x�_m��y����y��ˣ<[+5(����`��y��]� �����ޮ>��
���Wp�hϋnLYjz<����y��燇�����=��坎��-� �XyeuR���a�^]����p��C)R��N��U�Ef���e;���g�����t?}�X�ᄡ׆N�gV�mGM�zq��NQC�Z����Nl�� a4�]W�ڵqI�_`���74��|s��_m泿oqf��������C�}��o� ���]�_P;�1(zH���� �c?��loOX���|�[4xn����<t�zڡ���-T2n�g|��m�����j����@e�6�Ǭ��!]<��&�q�Gh����*ތ�}ӭx	��}N�<j�P6h�u
��ʆQ���<m]R���6Y����/po���l�H�g��i�����_�p������[!W��9��i��z���>S�!ӰT4������S����c��N{��d[^����x#8X3el�Wf����l�o��Oqw���X$e;�N�=�W��m7?fUI����y<rY�+�Q�n~i|/䐊�b������4��^[(��~g�68�WЮ�H�f��V��E�KP}���Q�G
&�A7V���D��7�=$�xFJ�v�Ƥ�a� ��ᔔ2��Ղ{s�9��_9(V���[���8�|��v�����S�ܞ����i�G�Fu��:�4.���ˣl�L���&|�hYo-�z���C��� ��t}��Ω֚~t_������?��=���wus7M�r����O��u+l��|�0^���Oĕ�C�ff���6�X7@�����~����p�>,�M��N�l��FMB%�$[n���{Hf�����c_��ݚ"_tu��vo3�AɩHbY��~{K�}�K�j���Nۯ'��0��*�xH��}V
[dd{<o}�o=��p3��-��=Ug�+��X�q�G|4���b7�6���	ב;���=?�w<����F�� m��;	�a4>��y����~Z
�iQ�q�n���-P�ajxb�r,HG����/p�������Vۧ����W�#���L��o!�<4d��O�	�A�I����q�?.�9������<ʿQc���uH�������t6 �n�L������ִ�K�eZÍ�Fz��'`��a/��wy7�,V=��(��H<�aQq堪 G�¦�t���Ǝ�t jl�UH}����h����b�s�V�����(����xqk���󣯘�?�25�70Q=�j�<TÆ�T�3��+:<�|���4�����bpWp��e9�ʝ�6S�Ox{��������*�������Y���T���N�'���E�EP��k��vO��,yA-Tj	n.̍~Y!0�g�(۴�=~2Z�E����c-3��:嚮��D`!,���8A���X��P�yeT%�bqӳ!<%68`08Ay�4w*
.���ӎ�0���������%xv�kG۽����g���]8`*���ע���?���!&|0��-# �9�wQ�SB���'J\������o!���� �P|��F۹.
Vj��z88���%�YK�R��Yg��h��(V�o#�_�; ���~|oXvk�_�����c1�Q�����3pU4pm���0兜j0a������������4A��=�s�m�B}<�/���GV5�9���?y	W��X���/>���� �Əf"��7k���ū��.A��r�Ȧ��-z�_�`BC�r��L��b�U�j�nT�G	����7��|��ϣ���g�S�y�5��A�W�O��9��Y���Cu�%Z�M_��h¹�6]���2i�d�.�{���F^|�v����E����_lv�o�8�["CA��/7��{a/(b�h�XY�.q�[��)J���>~ q|�W]o���N\��aP%p�m�%���y���GF뾃��S��-bȨ�����#%���$����2ǝ�Aq�..��Z�M�;.>��J�i�6�ɍ2&��oe�;����z���Q����Ւ�Y�f��u?���C�����D��	��7:&�v����@[���{D�G W�E\a$B��;]}uX��k�Ă96�L����Ѓ�����7��Y
ǎ��`�:nN����b90�#������{?�8P���4QA��	�v��ϯ_=��[F�����E�sF5�NL�n#fsڟ��#���^��k}�֣O�W�а�U�z��-�(�US�@Ϳ�i@I��	=������1�����f�x�苠�bD����뜲M�n\��X���GV��?��le@S�B;�0=n�9[�X����Q8~&�e�z��Y"��0�r��G��`�lݵ�"��9�ץ� $�6�(�˝č��Z�zF$��.�� �����û�xgӣxK�6���!�z\�D��
����\�Q��q`��Z��!���ǝ9L��x:���ZX1��Ks�1�_����^������8�FX���V%�q�Zt80���(�s�ϸ,����$xC�����F���r�=����++z����CS���f9{�L��^[��k�n���PA ���������~�v����Wy�u�ƌ{�v��>�����;�3�?_O�3vE0-�[�z�i����$P�����r�����nbB���nA�@����\�����y�W�wخr�q��RqԀ�1�t�u��vl��^n��k��N�`��JI,��Sd�x�P��i2��%M/acX��X�nD�M�����O �{�qV�C�6=����πj�����V�?h�7��E�4�̬߾҅!�{5���'�L���f5���n=<���]1�8_֚�u�@��Ym֞P@|���ao��p����b�ËS�38�r����O �������"�ލ�5�.I,�@�)�u9sŇS�����u��B�������~��|���v�)%�����50\�a?:<�.��˴����)�:��HxY=�a�a���0'#b��\bpT��6� yj`�M��i�c U��3����~��=!�����<���v����ӁA*ܺ�ͪ3��5���e��#�(|��QI�#��v�5���7��/������{b�j���o�f�P��ݳ� �:5:���Y�50I,�J�A�E<���V�z��J&e��=z��ɘ
#�Q�.�����i&��I�s����    �G�9�KG�(�l��P�"2�$v��v���_�M��v��k ���#A|�Չ��=y/���=Rg� �w#�+�Z�VR1'k ��5/0M�'�5��S�I$�~~I�P�)�F�L�D������"���qŨFo�O�Lx���~8__7��_��%�r��:��7i>�_Y��-0���sl�+����R����M�>6�|�\��N�t6���a��K{,��b�lĆ�V���LԼg�U��E~C���?��dmm��`7�_H��6k�#]�� _�+VL��k�o###&�ɛ*���`�}�OQ*��ۓ*U�)L5�R��uJ;�,��(���|u�~��U��SHzƛf�[3�w�8��⭤���;^���?��K�t��r�N�j����9��j���xCB�!�*��ӳ�p�}o+�^��0x �Q^�/x���wņ���n�j�f�6\
\)w9Í��V1�/x���6npvOC"���醹�r��S-���o���<:�l��
oMȅƲ>YA�\���CN�pt��B. ���0��{b�rh��� 0qr�<���x��BtG�0U�z�c��S¦��臿D �F�+oVz�|�!i� $1�Y�2�.���9ET��؈���;R�y]� ��:[)E�+=��M\�_o(��|f�Q�|�����f�Dk����--�B~ǜ��W9`1�}��{��[�W}}�%��l*��&��	 �C�D4�()��pb�&��	� �� �����b*��5%�u�UYڕ�� +�?=�MM�e�B����tV��>�R�b����c��I�7�u���^�=r�^w��0I�(c/�1ªC0�1*<~#�G1�4$Y'��a�U;cl�
oXw���r<cf�~y��h�Т��9�R����@r�3��I?��}��V`����r�s�r?�B&,x�� �D�(��S���wYjs{5��"���H���P�(V��.�Jp�����j0cU�oJ�U��ל���{շ2ҭG���;,1�8�ѐ
�=\�&D����;E��Ͳn�	�Еl��굵ueg�[����Q�J������
Y�M[I�?��졿p|Ɇ`w�(,�����F|�k�x����5Ճ�N�w��~-s/@�Άn6��%��۟��,��2Ϳ�;S�Q14����Q��9I2�%\��"T�x�:Y�:�ᛅ�y��pkP�~������~�N����\-E@C��e.�@`�H9�$�!�S�$e�p�m���Z	I-�����3��X����K�M�oF�g�,Y�4F �����n>4�
<c;�|/�lS�Q��P�t!JܩM Ë��$��ș�[|�#�j+�X1$'�C5M�se
~A��2}ND�R'�2 >������дr�ϢP�Z�O,�0�j�ʲ���M���Әf���.%��ee��2�z9ME+Uw�(�{ܧ�D?�G5HJ�+3@�	�qVt����q��_%ʚj��4������y�Ln�Y2�g9jMa��R���N��K{�˘��r�=9H��טD�5�>2`�K��W�LR�òɰ�����_x���=:��(���OV�$�~��/U�rM���)V�[���9�ę�ՖA�9\V($lxmm,�w��wp�%d��x�r��<dŃ*��j_{N�e��XSt�������c�P#����7���A���xN�~�-��uM(���Z�~K
�G��i	���.��G��걬�@\��
˷�_�<�6�/F]���V��5���R��?K>����pM ��BbG�v��)~iP�oT�F$6_���Z�9�����j4M#U�`ϖ���	�}|k���P���
+�IR}y�|�3�7���[��ʕ
�Cӧ��%?��ps�P��`4F3h�m#��Ш�
-q�=lS��;��X�S�  ��gM�����1h�i��Qv�ˈuj�ReW��܏�&��X�J�#V9�n�M�G�&��GyŜ}uo�\>��P�"t����[C��3�,@��k�*߹QWo���=ޜ�,��	:�xE�J���❌�q����_m�S�J���N�h\?���(��(U9M_��ҒǗ[[��5����%�p:H��j_��'A2�Q��� w�d�:�P��guG<�l�	�>��8�
�	���n~ĥZ�����qa�F.��f��e}8h�ZB���$ξT<6u�M�����=��a۠�W�B�?^̡�=�E�[�2�9p��Fb�<.�ey?�l2;R�L�^��e��� ar�cU�Ki���{ �Ϲ�2�XRU°�Ȣ�q�.�������pȦϒ���6Kǩ�İڬ-3��>��93�~O+˿E� ���WǮ�W�W>6F\�뮓=�=r��n�4ȏ��ǯ��I�pn��o�*���DFFTNe�˟�[U���!�9q����I=k �TD|�D��Z�8��Ck&NG��D���FP�R@�$J_bZ_�6���z4�(���Y�X�~E A�gtc�G����#��5�+�a�>� ٓ�@��.x�N�G���4Q4αW�#F)��XR@Ʊ�Q7���k�ø��Z>�T�_�7��-n|Q���ڛGk�j�'���4�@�M`u4�~uag@)�/ ��(?��
L����
S��(�����"��ϴ2��~��Sq�v�W�g��&�n����7����nЍ�H�bqv����t�;4Je�� Vi�d�`Nw<���ıͰN)�
��7qR,�)�*	XLlG��~9d�Jwl9i߸[�Lќ}��a�i�jR^�ͪl��P��ջ��,�eV��c$�4_�z�a�]<˲*���b��b��n:F=An ��,����Z9��xX|׼���XiR�b�X�.��=���;������.}�q�������R+�;��DѰ_ס��P�Um(nE�m��7��m� ��9�Ps!hm`���ߚu�c�2���H��	�1PtF�OR�"?����4?~ h��W�>�+���~^�,���1�P�b0g`�=�C30.1���-T���G����^�5�)�&����c{Xn����_3�F�V�l�nn;dX�������[���u�=��*X���X���X]�_�~<ź5�R������&���n�[�"�b�<bZ �G[��!;����p7��9�h�R��`���A��̳d��|"^�R��YP��h??D�z`!�r���e:�ֆA�Xi��YA0�L7�Nu&�U)�ań=|.�XҲ��'l�|��~�������)����R"1�VI�s���ŭ�x�-��Kּ��>�w��a��`�k�S��+�]�Y���:�c�S{M������T$gW�k`�G��]�V��s��ВR��Hj�#ܺ��ث�V��~�Q�b�䧰{n�Cz�� (ڍ�t�%�0�bkK5�c=��۟鹏F�*W�o���sV�U���þKeoe�S��"��l�U��YI��N�����J�*��$���)�WY���>C�mA�_����"��y��b�w66H�2c�����eh{�3�wj��={�R���'�!W�oN��@��ܮ^�0���Ro�y"7 ��!�M#��1d�+��_�DR9>�l��B|�y��o�9Gmiu���#[�Π>o�"�U����L�7hN+�~.�Ƙ���Q\u���� ev�ܛ,5mx���;+VC\��y��]�_h�ɯ��1������s�X�Nkks~L�z!��R��c��9gFIt�y��EL	<�~6K�L o�!�&-�)�>��`l��,�x$6���@X$�E*�#X>lëø:����I�3���Cp��$���M�{�����j��a�s֛�Rj��EJ�f�X��]a![�����\� $�0�5��s/1�m��	�'A�`W�4 �<֊ű2~��s� KV�"�:�$i+ ��KDB�D�X�5nl�	A��"bO�9	9,�8p$�S���!P����� ����Ӡɛ��A�=}��SEJ    *h�.��Y5����c��eE^6�
0��-6UX�5����L����cU��px��3P�#'u [��I���⣗�غ3z���ʁ��l|<�سm�<��%�㓤� d��/�I�,�P6�~C��G3��Rc�"�-ux1~����q���!�iΉX��ĺ��'��x;�$w1I�%W�Pۻ�b,�{|�@��A��l/\�T\u�1Y��~c}k��a�$Eh�,=�쫜/���Y@�	��@*<�G�����t[W�=�0��j��3D������-��&8b� Kk�=ܱ�������n[�"��F[:���S�:���������{^P��QV-v����U_"�M�b�Lb_�<�����}�'P��b��v��������}#��l�sjB��)�z{lY}��K��^��ݦ�;��ճ�*\;߱J��ުF����tsJ8���,5�FU=��jqLe���_yx�?�g!��Z�R�+��.Z���@w�/���x;L���GaT��0�`L����K��7Ղ��_P�ڭ�(~f$%���g����,���|��>�}��y6�O��1�Y�;U�*}���'��fcV/N�0�xO�L#:�����2����L�Ֆ�?O.*,���L��&��A��Y�6�<��ԋ�e���];��;t$�Ѻl�~�w]P_���	�Q�70r��}�M<(UA� �i�w3��0F̿H��'���+�������K剗�M8b6�i�00t��<�ll�D�@����R�d�Xʿy<+WG��E��m�^�W����>ߋe<ͻ�lS��.7��͟1M:�mY��{�-�wss��i5�֗aq]Sg������Q����L������sm�p:6��|w�kL�"?�V�筂*x�i��N�НpJU? �2$�Y"+Wt$s�F��]�e�;vvݰ���jڳؼ:_O��@�x�I�T���漾�\���c� ���,�e�n��YK-s���Kb�+9��h���Ư�BB�r{䳃^)o�q]k��ľuGq���&�L�y�t+�+���.ťO1ؾǺ���l����4v�����c6����!�j�F�&��b0���l��������aJ�71Bd��4&w:��(�]�R<lw�����E���>���G�|���g�R�۪�Ʊ�F��AP�X�ԖX�^܀#j�=zv���"�i���v`�qv%>	W��ٰk�ǳ�/p�oy�nغ�{P$0
��%���[Ǚed���sS�w�=	�|�c���O�X"�a������:>BI����c�:�M��5ld�%��I2E���8a��d�٢7.��D4� ���N{T�n�\^�͇��j��M(q)�����ߴ�ixc�|�[k��Y!�������;!_�E�k�f�r>R���l�5z6�H�w��X8%�0��5����i#'�a��t+����$�.pG���t�Us�����(x �%2���3[ڵ
�xV�2�x$�G ~dF!��E:؝��p�i��a���R�t|���whw*�#�S09mo0(M3}�x�k�bewU�۳u�7������.��)Q�=cV�t-��uk,ٮ�{�5�@.�R뵅�g�z�+M�R�k]����I	\@I�ձ�4Z*�Xs+��D�S�ߚ���4UvZR�,4�� tOe-1�����m�8�W閉Q�C��}x�'���};Ч@�ӕ��҆9}-��8���y� S����)��:���*�3`���ϖ�nN"��	o�[������ŷ)�x�=�ŭ/�^�?]�z�(�F�9�Z ��Tu�a�Sʵ^��I�-{~ڗ<sbJW�#>����z��
�#(���o��ҏ
$iǡI_AB�o��/��g��C��#q�V���HW'�A������"�R�28xu����&�yOR��bTuX�Vithv����Y�|��9q�=)6$�ʩ�β�6Y���|F�[.е0*Ƙ'vn����z/��Ǉ�9�2D &��ZC��c�f
Ǩ��Ϻ��vK�~�5{#��S-x��g�V����c,�?[�fW�M(��c��T��Y �X=����K��zf�=��.*_Xg����aY,�Yr�o�0)Z(:M��#��!�B�1m�,+�p�Zz��!�| ��|�+�h`���d��W�n[V^���lv����RD��(����(�CR��fY*�����RbnKz��8����M��~�
��lz���;��d�N��3������%�c#�:��O�T&d�ě���P�xl�H�~\�д.[�F����X�My�U���SJ�*#�� ⒕:KŚC�l�+���4��>j�g��s�e����9֝�ԒK��*�D�.8�F�'��|h+�]N)(��1[-�t�(z/Tt���>Č��oeH`���B�z��_�'<�4o�u���-щQ�awH�$������tɰ�ap�V���]P�� }[�2 -���+J�����Z>�m�A�G��T�orv~��>��;Ȁ�Y��㝲�s�"��b�����3����e��K�Mn3�;\5�˺�^{��VQF�O���w���!wW8����؅�7��a���XS�u�n��ڑ�:�M^�+�誑��vC� ?��x�{ �b�����ӽ2cC%�I@k���KTM��0u �:S����5+~
�3
��b'��x���#yX�P�����sٙ6s|?v�����a��t�rJ�O�q)e�K�4�\ٜir��F�B�w�~9�h����������+���~`x�F�l�@����)X�������2Mr+����6PK,��T@f\a�c.�1F� �����q��^��'e�{�4)z���ªc�͊�)�x��/����p7�J}�b	���`ff7CD��坝��X�<�
l�+W
��"�!l�;HJ�<g+�7���g���9ǪJ��Kw�n�z��yX��:b�%�亃GX�9��aŻjX�Jr�Q��hZl  �t-Bt�<Ē�j�1�`�m�{���^|�;�pl�]��RYM�4PL��@Jc�_l��~lUs9	�rjq,��mY೐Qeڶ!T��3�j>Y�6��
C��Y�^��R���L�<�dK��֠Gܝ���S�>���OJZ�D����H��z�|���^B8�_�����P��Ĳ�[E��~�r�&�Pf" �n�.����}����l+e&R���Xŀ]��ҟ/*�'��@�雑du���j-|-�";`^N�,~ �>�*)�	�F���l��դ��d�e2�!d���.c�ǡ�`=d����0Cqf�V���`=X�$İB4���6��q�2Y��[j��gP"��y%��Q<C�E�1�e����	("x������ׁO�vO�}�N���p�y��b�Ɨ�������Ж\�du��DU��x��B,MY�q ��ifa�|ڜ-� ��V�[�QS:?9�����IǞF��TԚ�x���F��րXVhڴ�,������C4�p��L$��,[�K��V4X|F�)����\
K{֞5�2S�L)�H8s&y���-��>�am���Z�Y�{�rw��g���q悧����5Rr����_�H/��q�	���8x�x@M�ci%�qcpRO���Q�4q��	� gd |�����Q��#Z�s�8���$kUC�/��'�Y	 �'!Sc�p
2I�g�<�hŒ�8O��j��Kt'���n�Vg��'G���a;�n�\x�t}�^��kq�q��n�����k�	+c��[�?�q�]���g�*��;��3lU�U�/')�g����Y�dl�sOdԹ�I�7�KM��^R�l��@�N��$�@U^��}�轔7%ۋ�AE�]��=�@PU��+@�����L�[��J�xt�b�`�N�!�^����s�X�#s������Gi��t�C��{�3lm2Zɥ�$���h�������R�6C0�{�։ل�K�)U���ݤ2��g�(av ���,5֖���I�b�n�l�:�� ���br:N7w�	    i��C��}r�D���~��OTU�Y��Eq4�\��L�� �Y���$�p�]1�F�2]�ޮ~ڒ�{')�$�����[�\x�E�.S�Ё5��r�Qx��@���ԑ�I@�a�\I�쳐��1�� ����X'�(zu9����?NU0 bx�S=u��"vC��#QZb[��0�pw5�:;9-��O�Cd�}��0����T�n���vt�d� R��8�|�ՠJ��sR���:��%��Hʽ�.G2�O��ִ���}x&�"�����$��T �jN���x�nM7T������>���!Es�e��~���C�us�?M^7URk*r!������NH�oV�.�ԋ��q`��*5r_�H!�ڥ�����{!.u�k�~�ŪR�Y4D�0ө�X����å1���8PJ
q�p;�:~�V����!'Z�m���(,eXo ��By�u>���Yu���'I�UZE�ϔ���&h<$�~��^F��X��|���P|n����ƴARf��
��\�f�s�;��8C~�&6k��sX�����~�)���:N>Ē��j5�۪c�fQMA�B�><�'�3,����/!:��N2g��dcP3������N 2����!)���x]��5��y��u���t=K���p�Q�ʎ�&�Xڗ3�}v�"豃]UM��1��)c!���P�˝Us�y8�c��w���a���&�wd)�;�&�Vt�jr&~�2�r�h����{�L�w�����CT�uIuT�HÒ;�W�[�i	uiUb��a܁�q}#���g�ۏ��4�%����_�IO(�i$������������;ˮ8C.�W����0t�#I�w���t3��!��I5�g*�	)}��"���f�54�ӗP�9�ꊹD�]P��r����{�0��W|1|{d����\�
4;?]i�`֒Fy�S�B{�
v.�{�G��AN��ѐ�AZR��o�7(����۟Mŉ�e�R��Z��7^�����]X/�E4�����b9E"G�Y󩉳Y
{p��K���r�X�aL�N���;�C�$�Vz�yuCo��)3��mI�EZ�R�4�jeǾJ�М�@F�fѪ1T�j��_��y�~�Ƒخ�  �!1qUS��r���l�H��2j.	��1M���mIVBj��s2l���T0͏�����d�b�87ܗY��H1U�jxK]�_0�i$��s;G�y�*֖+�
4�2i����b�]��[
*M���ɧn��e���r X���H�,�{H$G���8ߜ�v�N�$COF͒�#׈"����X&����3��A�x�BhE��k #�Ma�ƒ�ݔ�dt�9̢�iN��&!>Oa�]oێ;U�@X��1�Ƣr��K�Bl�W��oS��256�^1j9�!�M������9�YNS�7*�]��-5�)Kd�Pg��"�x��M��?I&J�~y��,Q��]k�"�Z,NMA�y�mm��|�`S�5u��éF�q��N]/�Ȃ��ġ��%Cv��ͧ����U�9}k�|/�b:�h�� ���
``���[�<��H�F���д奻��n�А�#������(.iV��.qIKTO̢�IVF>�84=�IDsRO\��3�Ma���p`��d�[I'�V�}�ˉ١k+�q��ҍK򄱏�.�a��hݮ�k�)�ˢ�02��e���fdSf�,��ß��%�����YƏDem��Zr$���{�O�$���M�b ̄�l������NN����$���c�k�1Z��|ny�wK�h�|әѱ<M��m����4u�J���x���]�a��8H�<�;�p��h&8ͣm�	�!56��c7D,͜�.�^� ���wc��c7�����5�
q⫛��~�)�X�\�Fq;C�a:z��r�S��Eqp�3�A��e��9SN�=ݜ���'�tD�cjzw�"W.�h�����tU����u���S����Gꐦ�󭪰t��S��<����ۿc"Ɠ�fE�٘�,I�xd�o5�ǯN����>i�̗h5]/VB����ٷ?���M)�ǘ$֊�v#��5W�Q� C���I�s��N�Y7�D�_��&�����v�J�m�Y�N�'��,��9D�������/�~��$VI��sM����+��w���I�ܠV��{�o�&�䊍0����t��X�3��P�)w��t�y�/�R�c	�a��xu�����m(��|���.O���f#�[F���i��fl5�,��s,ZA��׹[���doY��)�d�,�|�/\��#[�H�����W���u�m2�%�����S�6k�$�
|
eq7���X�TPz�d7cvI�eT!�~�Wp�d�k\�=�ץ�d|�r6�m��07&�+j�l'�@[z��*G�Y�f�i��r�k�lb�)�,yW�m��VUE����_�d��&g��w	b��2�Gɕ,�@��"�d����h�BH'�7�o��y�t�7lE�B7@�f�=�&4�Vex�S�q�Cˣę��9��1h��4T�r�}�$����WR[~�W��Y0	k��d��|�����ϔ�c^���H�32	���q�Rh����#jp�����|'��a�����o�wW�b��ܘᐔ�	���O��dL5���tӢ�9�KÔ�g�{y��N�l�� ���BŤG������(���4�=��Sm���8���w7��O��)\5�9m�z�aDkT��X�lV��ʹ�s�f��C��%��� ����|'�)�i�I5�+�?r�r��P�\w���܆p���ߟ�aI�Е�Gb<9N�95�I6�s�l���b�&�/ӆrQUg�u�� ���٦����
~�.�C���h�r�۔{\{��m��̅�L�Gܬ����\�1�C�/��C�;���M�«m,{N���^׾uP�MP�C]Ͷ���_�*��ѡ9�U����%�c_!�sp9�xh���p�C��9J����H�c`�������Q>R����j���QWg�����"#Lk�h��Θ�9I���Zk}��p�u�)/�e8?������1���wI���x?�S�������*zI�ԕ֞I�k�'[׌7���?�"�O�Tc8i��e���ޟ�Pr�7�RGTߴ�j&}8A0ֳ�W��$Y���W�}�Et�\r�mctPTݯsjH���~ o�Y�We�xO*��usJ�c����(��r���.����h[+7�j���=���]�Sﾰ�Į�����8��K�����8=��`�q@�A67�A�3�֟����?D�Te#�j�i�j�k!&jGY���[�p}YG_��gT��D���ҙ9�9ڱ�cPM�INT-@��~rUB��N:<|��pS\�cwz�_ ԓf��X�<E6Y��c���&I\ϚG)5��Y��Ƈ8�����H�{(�1*� �%7��̊�g�٘U�^����&�v,S�% {gi��o�<������M3�KN,��DT�@р{��������|�ǸE����l�c{�-k���	KӅ��vI#��Z8C�ja�Di�I8+u/��~fc���V��>	q�U���ٷ���'�.��!]͋�s��<>5�qڎ�����Y�aB� s��j�$�G2��5>׊��A*LS�E*B\��H���C�621\n]�@ו��/A_L��'-~I�=x�g0��BOC�P8	X˩b!Y�̈�� 1�/.wu`ڏe�)��?�X�`&�ͨ9�<��h�U{�(��p~_��=qo��Rh�i�Tj��w��/����"�0˼t��;m�kKg��M���F3�V����Sڵ	a��H��H2���2�Hdc�HT��Tkr�$���(^L��Y�Ey���FV��\P|�_?6 �[IK��H��M�<y�>��G��#xfYKj�&X�
!Y��䮁�#�i;�����1s�)��* �̠�fd�R�X�*�؂ZϟL�0�k��T�b(Ě�WM��V�w�-4m��e�\<�^�H7	2|F]$X��q�]�vt    �Т�Ց��'�ssܽ��$�ϊ�Jr����aħ�J�4M�[k
Z������ġ��D������s�Y����2�ᲪځiΡ�.�;;z(��y	-���̓����#5m�V��&�@��������/����	!�os�cev-��O1���I��p��K��z���<��x�� ��k�mw� �8�F.f�f36�FΞB�QŸ��D
E�M�I�p��9�'S�"�c���Η���i5X�7�۲��A괒}����V�5��aҨ���	E����_�F6cs"�ab�5�JmD��/s���(�ƞ�/\��˰���*�PU2f_����8���C��t��,���4y��Ir�c1����OUZ��AH�&�lz�&�x<��Џ��.O5�!�pUJF�t<xX�Tq\'-�6�%Uz���=�����ͪo�L�C&�(���~A��u&2���XտL�{�d��*�Ny����Q���)�CMJT�8shv�G,�Q��y	��}���5U��qI��'kIbdB�Hau���EHYW���d@�Q�?'���#}�\+;�!���ٜ��3�g~��Q�q�*����7w�I,�o)h�	ه��-�I�p[Bv��0�I��Č���_39����%�c���i�t���5�1�2w�eO�Xu���4IL Բ��)G����`I��p���;�,Lv�D,�R����9�X.)k�='/���_���a%@�q��������}�L;Vq���=��ئ�oN�o�9?,�n��/�KR�g����6��.k<Eֆ�9U�$ZɤH5=�uL�?��e�Q�Ж��\X�T�T/J�MkJ��)`c�f�������`l�2�h����������~�8|�<�G�\�&W	��D�6$�.fI�V���
AP;�P$�ҋ�k�nƷ8�oxw����o��.Z�L�4��t��#�sQ5���bh3ċ��g�
CÌ�%�Æ���5H�r�����ۿ���Yz���뽜#r8���7+ն*]�L�6˩?���圹�%^�̷?ws���X4?�eά����� �4qS��u��jE��b�3�c(<��Ƙ�8�u
��m�e���8��%�d>f�2Pa�H��Y-�G$mh oT!,��Tk��R�i�����?��,�3lїi��!d�����~��t�]����)��'���fj1V1O���+����R>4�R���}�n�����d���#im];�H�MWԺ³�S5H5��·���)����K�v�����8��8	���jl2�劽���d.^���y�D��
۔��e0$M�e��^�	���Y�H�%4��nd[F���6C�TI#��p3����SL�B(Y!���&�c�
�׾(�f	w��R�x����R<���,�0����4N�깒�YT��,�U�vK5¾���K�9_N����ɱ2(�1��J�3jy3~ ����Ms4#gҷ�I}A�Xf�T����;@�����f5������23���v����f3mc�.Ɂ�l����	(��WR��0:�A��_/M��D 93𠽤�pVd7�����i��V�ȷj+�)����;�Cb���R���/�^+��g�0���D2�#��Sj���~�%|*����"$<���N���w���5CNi� �!4��XE�D+�2���0shsq� ����N�Ju�$Co��ɵ��2��i�j���I,"}���=�GT/kic{�Ϸd،�BR�� y��
<��(����C�mj�f��!r���A���Qr�q�e�	��,�5Lz�p��dp�I4@H����l�/�;�wuC�zG&�����Y��<�f
�Խ.���jҤ��W��-��jZ�X�.9T�o�#-7���&�e�T�\Z��H9)�k��$Ad?�@w;�nB�94�+���2�h�tZ.V�pߨ͇RF���i�FBV�Y�ڦ�~8ĕ,q�j�##- �ƿI�B�/���/��2��Zϊ��y+A{���n.!�V�� ɧJ����-<\��K�f~�4��EǇJ#v6m+�5�	�}�WΖΚV	���mŕ�L�M��b�L��R�LU��<�óV/gjO���)N�S�C."ş]���:՞J�Y���_���s��!z��ׇ%N�,+s�0t�Z��qϓ�֋�i�U��,ϊ*F�7ۜ'/=aZ	\��^&�5Qo��h׳U��bGt���
�ʱ��I/�k��>���-����IC��M�֒��}�>���<SGDӱ4#	Vj�C�)���떐V�Ğ�����*_����5}L3�3O�-�l���\�7

s�M���ߠ?fRά�I�º��^t�C.�k��
+!����mlMH�%�zw�����QT.!OY��[�����׌ݾ�o��X���4
᮱Ƶ�Nˠ]�\�?_N���V���pQ��L����*&n�XyPzЁ�Ʊ	���Rwi��v$P/���NQlfZ ��~s�'-�Y`x�o�ߘgo8�!c�����l,K,J1�����y^�h8!�>/I��1N��	���w�,�4D��<g}��  ����.A���q�~��~ǬE(�!WI��ɗH��L��=?�����7a��C
ys\�^�� �RrY=6	y���Z�{�f�XGD5!�[��!��ɎO����{�ې� @��V�g��-Ӻd���!	(5go#�Y����l�X(�9����c5_�74D�Rz��HrгB���Y�Pc*э��?���S2��
_�������$:����8#A�"Z@�k��E����>OF(�V#�N5C�bb�e�A#�xZzd�>�e�o��O�tX3��W,��!��!�N_�BI��KJ"B��P;���Ns���}ĆX{`���Y^�2ѭ�xQ*=����,�1���U�ӓQ恏B�>�����vh"�UFZ�9�ѱ&�҂��tV]����p��c���2�8�+��7���#����"h/�Kh^CjdP<�R���N�D���)V�\�� V'.�QC$�{��,��L��Չ�8V1,΄d��!	-������mg&��ᑕ5�8F9{}|��=��
�B��ܱwkf)�g
wT��>������Vw�kJW�/�%�٧�U?��k;����B5&�o�R��`�8�	�Z�V�Ƀn�l|cF��:-�36�g;�5�ni�gt�d,E�<�Sc,��Tddg�o�ybs�̼�X��z�J=���\18R�$N��6OHxU��H��>cT�\��&�&��w�Mf
tm8r���&LbeȽ��#,��!�MPd�B{%�?�q�;�G[��c�y�Xym��b:K��A�Tǋ�Kp	m䄙��²#�����t#�Ba
��ql���N�Rr��$������e�jчJ�M�H,��e��א(��p�/nT��yfɀթ�<I�ǿ^u�\�zi��nh�B��q�``�v��z�#op�w�M�N�r�̫&S��bOI�l��1д�j�39�4iy#�"Ul
:e-H3Xͱ7��|�Y������vW�Ii��٦l�Gm��ߧ[r%��'���`�������?���y�:p���0{1��`o�P�F���H����&���9��#}<��	�'U�]���m�!������Lj��ld�拳J�9	=<7Ut���ɷ��a=y���������Y 2҇Y@*s�,�5#a֚l-?H=q�����4�f���SdP�=d�=�B`,}O�=/�b���n(�G-}�N���<�㎥ӗ��alv��fR�c�1��&�e�o#o����/�]��a�2$��tӥ��}pA"Z�'�0Z�;�қ��l����MS�*���Fv�a� 5Ǩ�	+΋L���$����g��,���]�sv� �[QP�(x�]���x�~���YM7�l�L~6�ea��j��&�\Ң�G�dߖ�f.{�,�7����-�e���*NlT�\�hZ�T�}}�z�/2�]r���6=9dhTdr?�g9M���(��V$��Q�f49�{RǮ�OU%OU%   ��ߜm�Rj��9bS1����Xȫ2:v��lR�Rk��vr�hi�|���p���5��s\`��K�Zz�Ҍo|�����:�9&�3���5��{iFJ�o9�.���+�4��J9� N		�^
���p�����\� �tD�^S����X���lJ�/c�_��-�f�����j����}p#J5J'��%�㦌��1G~?IWc�sڦ%#��y�47�����/wB<׊����}��tϤk�y�w-�`�/!H^�)�0�P�����ʫ�(��;Ź*��5�x����pX�����Yb�A�̌���9���v3۴��x5*@xuA�F��2����7Y�㠄T�A���?�6̷h\�7��l�q{�<�d�wO��I�c8��]���#�w�������0���P+Ҏ#��f�\ X�Ҍ9Ł��4sR�^&Ǽ���U
S��%].s��1;���ޅf�s�ddtl�NPh+z�&����|1�-[*zV��*Ս|vը�s3�AX�o�*�c������r�Q�T��0�6��$Pu!���t��\��f֯P�|�pG���r�����dnyD^)U��`�O'"��rTUQU)-�wO�cգ@���Jx�82���|=��R0st$�c-,���[|J�3g�$/, ��KeU;��y�(D`?<���w�S�CŮ�'���̕ө�'�_�f��R��\��I��ǭ^�@�P�j�/�\��u�5��I�R�S賈p4sOɘ�6Y���<����̞P8� ��%k�A�m�-�i';���Yȶ�!�/i4T�DJ���冧z����Q�M3W��p��/���/��:��XyZ\�B���RϢw�� F=H�u��>Ka%E�L`3�N�h��~��]���2Z� 7�HH���4F���\H��f2�E��vN��'HJ��w3�,]��W�33ҽ� m��QZ�Pw!�|5_C2nLc�o_�UP67��q�2�<��?�o�f!�,����7��f9�f����h��O�K�";������w�c莖oSP�����w��������3���e,.�rMb�T��HS}�*fY��	��SU+B�:�}2��R�� }��X��ch8���n�uU�X���:_t����lZ/
c�`���Ĺ�;l���b`&)����C߾¸f�-��(B�oSa�q�t��n=Db�����<x�AW-�k�y�8kX�
���w��.��2��k�Srj�uG�Zї��1�Ҧ|?t��B�.�fG�ɱ�uJe�bSa�áT=k8Ӝ�\2��'��xɜ�b�W�:v��kp�-Spc����m��:N��;d�M(��H �f�D�f�ZkV,E
�s��{[�<�5����)�ǝ��v+�S��H�dWѕJ6����!�M�8��(,��}'�<����L���N�l��)}��7K�9�-���hM%���ޛ6�bI����p�a}8��w�7K���Ѹ�����KWIxЏ���P�ݚ���
G&dW�4 �V,YL2��ݭ�8��?�����(��7�*\{O�66�B*���^<�+C�j9��g�2�Tu2�o
]����o�`$׾1t�b�o�ğR���L��^,N�t, ����L���Ʊu]T���Z�À����Rf���ٞI���|kW���P��}��*�c�::�]�B�������&g�2��<*ZJ�BB{�&9L�z��®�?���`����o9�����~/Q�()W����q.bO§�Jڞ\�J�5��]o9�(z�iH�|��Q��R� @�EK�u��F�/�2���5����]����C�%� dJ�7���sk�C���yQ\�;���6�}/��L�#C*w�DG5>0w��¿����\���ڇ	M���0Ah��rs8,iﳔ������*�N���%�)8�cm]���:8TC*X�*å�$�a�n�m���8AZ���TFb3�N~�Z��cGL"QϹ�f�U'=ۍ�=���;�e��Ob�,L~��kƟ��biӸ���t��ցh��a��.&3 �&:P��t7��By���-���)
P������kn��X�39]�;� j��\��Gг�ʶھ)(�_!���j��5 ��0A�*c�@�_u${��+E�w�Y��!�JU���i���x�X��I7��+ɪ�"������S���!CrF�b���s3�F)��-g�H�G�XqH=))����sT9���Ĕ�~���{�<㠄*���w��bt�b�p���k�Od�
��� ��s�ʌ O㤫��L`���#P�.O��w���&�ΙTpI���Wj��cp��\�j幎Ն]�i�~w��̈́N�k���<��ó�c,���%L���Li���Q�Y�(��n�P�75-��m���F�\�f(���^G���	t���,��A �\����u{NC�x|�`�݆�{��$����2;M�.IQU�X���&M�k�p��V	?�OCk2#L=5���M����5�#O�O?��>��?=~�Wtz����m,/��>vې�V8h/X�9��؄e�:��p�V�~����g0]�<	��K��)d�RNK�\��6��^���Yt���֘�qX;�p����H5��Ű�|���,+��(=��٠.-��J3��0�����\�8�磔�E&�X����q��]-�o��
��.�-��.�Xrlrk��\�q�9�#e�_��RY0g8���y�sHa�̆��Z�[�rҟd�]W�4��~�Ȯ�D���cg�`<��ն��#Y�8r�&1�><	tJl��;�@Ba�g��������y�      
   G   x�3�4426153�����sT0�45�015��suu�
�p�ԙ�D�%D����%�R#��=... 35^      
      x��}˒7��:�+r9�l�xE �I��Mi���h��
�SV̬�U%k��|��Z�b��f�<�x�#�6S[��� p���p';��t����������P�o���珇�����]n�x�X]n�{^>����s���?X�q$$�B����	Y�_)�	Y.�K5���XL���oN�S�t�ͯ���y/2���r��?�]�^���9JY2�X<.
3��B1<.3���N�(xi�����4J\�H�p �c\�f�������hx\��d�%c���c�4���� �K&�1K�r M��X$w1.��� c/}V���TpD�<+8@�dp�$�K\i���qIL�r�t�tZ����r���h�����Q� 8��"��>����d�!�bǒ%C �.}X �h:8���O���O���i���qx\B���� �K(����	��` �2���K�����24$p�K��[ V:l7�����q�AC��	�TR,&`��zk��E�&X��3���a1�S�4&`;f<Q��|���ǟ^�_��_���w���x��y`b�;$`��  BhL����I�k�	��c0��|f\�
$d	�s`5g	�g�1�bD�Kp	p+buI#<&`%B�;@���p	#������~#��	������/Χ���[�n��k��ǹ�q�|<�=Ν��{^8���z��?�=_ ��������|�?��]�{w[F|ϻ?.�M��������y�ϻ?/�>�����q��e��F�_��&?q]�=��u���R��%��P���Iu^�O��������K|ځ�?/�>����7����r�|����3���>|�_��e��K|ߋ��/��������y�3i,܍��q�V��e�ku�?_�o������^���N��U�j<4OO6��j�r5��|�_j��-6���^+�#�RE=+�<�#qo�VC�p��B4�A��j�%2�IxVb��,7�_���+fO޽��g/����?>|��B~�s�3��
�#��U@h�48d��2�,� S�v	8��U��)��?�/��_?�f�4;�~=_>+�#@y��L3" ��c(�zUoC�y�=.�[�AF�/���L=_����:^a܄��(h��ׇ����:����kBu���v<�2F�A)�(�7��|x��"SB��qO&o��߼�=�D<0Fq�+,�g�!Q<��;���d��X�.��Ç�oJ�.���������cu�6��Q�\��c�La�y$G�;��_�˟�'�֫�޶9��"᪁���Z$v:�<��:�"�� y#2�~�"6�H�s1q�D����L�d>��2�e�۫Wo�<��1��=۠$qh�Vy�9��4��b�Gbq���F�>��� ���u�8z��(L��ν2�0�ӗfY�\�!	?M[`s�gϳ|'h��$pvB3w�I�aG3�P's NZ/��^�$��-��5@�@I�(Y����>����1�
��<ab`��H�0f{�$Q5�GW/a�eE���Is�t-}m.���g�<�b͸I���\8��%+= ���2l�\5M �mÃnh�A�J@A^x�x�W( �
����@א(����5$
pK
��]C� �Ad���kS��O�I���/)���,�"�@1� �S"�)_C� �C�k�	�k��(z���O�޽|������?����3
��0��k3hL3���hE�0�FD�G��i��>"�>~��S�$����)�l}
�>]���OaB	r0E h��`b�U_B��}<�"�1@��"���(C(.��6Y���!/�͊,��BQC����)B�C���{�Q�\�@
'r�E·�J�� ��u��E�� ^��ծ ޤ8sG����J	B\uG�8
t��:��&��������r ԇ��pUޑ �%	g��P�"]ԁ�P/G��!���j��A��_J���st$X%�BRb�H��C��5�ߏ"�T�(�X}1���9|���(t$b�|����]`H��!���.�?�a5K!!�-6r��qP�n
���8��!��C�50x�bM�$Ć�?��bG^ Z3u4f[R�NSnBC0:"v��ς1 ��f��ۭbiw���~W����w1��t� �D���q�uG��U��	q��R�W��cuQ����8��T��çG��t�]�I���p�T��1F0�z{�mf���������H�!��K�Mؖs9�
h�^OP�"|�x�]�y��0�Ձ���%�r�7�[�Q�C�G�Y��8ZK���̙�|�dsA�1����pq�[�
BK#��)&�d�k�q�:v@�[s��:����:M<��>��G�yS�>)�&,IS��x�S8�&�����K;b�0�9�L����bд$�D:6F���!�M��y�ߟU����n����%���C���&��+8F�C�'8&9	*j�В����X;.��ك���U;�Kذ��9F\)R��(y��(��1B�GI!,�P��BwvZ(*_� 6G%�b���	r��V<<�<_|���|苳�Y� ���^5��C�w��!4��	8�p2<�{V:�����	�+��	8�p����4����L�e�A��s�:r�K�B��O�j����St�͢�8�/7ǓI��;\�*��o�n�^�èMC ��$�Q��)���I>�)����,�ߋ�1uyػ8&bƓ��(�
�0(&|��`aC`B�Wr �	��^Y�(�G�^?�Ժt7��6��i������
c��#X�wvN��+�*O�Kx
�%<��OG�Aņ8��,6�w���!�A�%��<�;���N�5}�3\ѝ4�~{�=?��׿�֙�����0�<�1��9����<����i��gڨe�sFZ�m��ܙ�7����}���A����j;eS�9�Zu��-f���M��7��'����p���hдeQ
��ډQ<£�Z�
h�y���ж���Xf���J������/ߙ�wf�_��=ݫSu��?ڿ6 ��*<�����h�����c�����tT������]u��xo�M�shR�Ǿ�!�:�3��ԏW�e�u�_�L��U��aN���J��d~:�V���P���M/ʝI���(��`�;�`	GÚJg�R�mЉVY2�������t�9�C��������_������h���x���j= �|�;}Ժ��Я����0�uʬ�|eOp�޿�8�|���C�a�P㆓���f�VM�D�|��V�2�H^gK	�
����ϵA�O���������:��ڭ��+�j���������~�_<S��A�èIC"��c��#��|w���m~��`����.{��x��T�B�f샇Fu4X"��� �I�
gk�z7�dqD�����:�n�>��U?^ci鷏�������C�����T��10��3��˧�ef������| �[.���o�0�;c������v{���H�wQu	�[���v��|��a�­x�˝5�c�jd�s��٪�D7�ћyw6����b�w|߬�j��8��Zo�1]-t�ӆ|Qp�5�\;.�*�=��`z����e`�e`��6���3<�U���?O��`�T���#H����.ge&�=|������Թ4�i7��_�d>�ֲ{`_��:����Ha�0m�8�����Z�~��6��绣Y�v �k�1]I����r8ݛE�?i�gZ4����x�
]�T�y=(�����`�4���y^"�/q��1�N��uu�?�\F�Gڏ����{��>�ޠ��~;�_�|���;B���e���1���:�K�y^:�� (��{
%�i�"ow�#���u���`��D��+S�	�J����po{w�|�#���ۢa�;eVۓ�>��S���~���ݯ�����Ӿae;�ܓ�K    ���1~�R�kհ�N�)���Ku�h]��`��SMXQc���7�L��r^�����p��Z�Y�{O7��.�gQ�v�9�P(�TRQ4���g�N��S��
؋�[d;�L�dQ�E)'�ڏړT]��(���k�p(),k�����?Ҁ18Xhh�|�7?y`7}{>��;?���������h5 �$B4�b��:��9����+Upl�Fۘ}�g��w����~����)4���4��^��i�?tp�H!h�HV���s�\�/����r��=�ߨ�<��0�_�d�r�w`�׉�Σ�f��z[���� ܶ�/��d� ��"٩��=��-oW��?�j�z/���1r�S;FZ��_�~=��̿��^��9*�4��w�~Ph� �<�N�_�!����X	[�fQ��&���mu�E�^G6���W�dE�K!|_�=quV���	\�I%�R�8��W��/^��|��a��mk�42	���=C?�!�H.L��0��~GT���k���g�X���`��\�����zǢ宕(����#�	W�áCɓ]ЅV����w�C�	�	�Ԧ�C�"��6�������m�h���N��a|~�[��7tgqk}W�]k��C���׃�s;�J�L��������P�N=}h�+���`pX=�nW��D�
V�E�gLs5s��	e	|2�8?��ʭ�9`�hЋ]!vrb������2��1��������"��`�#h'�Z+ɸ&IS����^�d�F<6b�gM��p�?<&�E=fә������v�ώ�����}��z?��j�7i���~�A׶�.q��YW�Ջ�wk�����2�I� 5�׋�q�:�|�>E��l�����������Ƽ�ު�7xW�>��fj����p@5��+�Ag%�K��!���w�fqag1�K<�C���y�W�P\��G[��+��g�B(�c�ѪԐm�s��E�#�J��������Mu�s��i�
�.��[=eh�7�� R+#ҟ<��/��R��W���QǢ}�����I=��8����Kj>�M��Z��y�'�ֹ	`S3j"��:����VW�<_?]0"b�j�����.C}��y?	�4���������l?�J�נ�����S�>|���p7fs�K�B�Ak��!��D��. �N[ TG��̌������&��� �:��}��{��-��R�ZC�������P.���F��y(��,�\��l��2��L���v��Z�kZ����� ��޾_��v���%{�� ��CXi2���(Ī��������j/�5�e�*:Y����VE_U*%T*#3[�*r!��P���@%-�SBe*����Rt�W,�E��С�����, -Jh}�4th����֊��@�C�q�Z:e���1�h���zu�=\�.�_��6t>��c���^`1�oj���|�߅�p����<+v����ľ�E�������;��j��K�w��tV�c�˰�@d�e/��P��/��꜄�ᬡ(p8J(6�B�EP�"(t���ʎZ���y�a����o������m�\7"Y�k�w`bɝ2�Fw8���
��۴�)7�a���c�w�M�� ~�n���'�?9a�7i��6�D14��@�M��64JE}�ij!8V%�]
4 �J�XF�_>
�N�)���20J2�:��MC�� ������䜮��V��(	��X&��$����x�C5��"T�h�����OO"�V>^�m.��4G�o�*�R�!+�?;�B�EP�"(9�;z!�bEl�"�{��#n��*�g�ׇ����2�g�ν�Ų�Dv��h"�=B�x�x�������5n����;@©�& �$<���	B���	�t�D|T��ݗ�Rdn���i�B�(4�cm�B�(]J����=��Z�g(�M��=Er�s�"Qܓ4�$n♣����O=�T�gc$���=N2�{6F�NPܓ� ��=I9�/�IJqzGz&)n~I�$��o䞥�ե[�RJ鞻�j����8�+�s�"�➻���e8	(�s��f]鞻�<�����h=��#���k`%�+�p��
�A�F������ Xj`�"�
��[��:���y�>�nb��X����p����5�p��6h�tM���,t&s}ko�\]�.�B�y����:��|jԱ�ڟ��j3���?���Y�وP�Ymo�L�-F�J�4)E&#�8�6������pS,e�+,;	G��]�����؛�F)�o�6�7'7a�A�"�ߊ{[Q��Bz[��V��*�=���n+�8ZIo+^�X񀒶4I�=YP틠�e�
��4Tq��6��@�x-E�B��"T$�G��wP����(8��FA�� 6	�4K�c\_g�M[�|�A*h�0ru�x��x�߸qn��'ȃr^sB�Ť��8:�L���M
��A<�0��|��tH)C�$��͠��x&�?
��V��ć��u�J�L7�Q��9�-���.Ӵ��"0��G�}e�;�2Ӛ��6&��tt:�[�P<T
ص"��ٹ��ڳ� 
1�����=S��Î#�������&�I�������>笭�%3��t(����<��dO)M���S�@�t7�G����C�3\�Ќ�CUd�x��~���"�9��w�c�B�v1*��U$���u�<9��T�>Ћ�8�{�l�2�%z!����㭅o��UL{��\�(���B���7j��E�(ǘ_��{�c���P;6e�k���a������u1G��4����<�krE��u��M�U�u
[���_`��Kۓ�Q�g�.Lh��ؼ��FnlG��I��[�t!y�G�$Bx�ob�r�l�����g5�ǦJV��	>� �]���L�]:��a�7E��\����ch����,��{��%�<��J�����i��(�����>j���sP�/ 3������)�&�0�#=��3w�=D���%��g��G�IZN���83:�S�:�>��D�lcԲ!�&��}�3Ԍ��(��H�Bz�����MW#�joJS�Μ5�zdN�辟�W�?z�>۠k[���o/珗�'�g����^�CӪ7��e�����5h�u���qw	ٗ���5G���д��,)L	u:�;��w�e$��?vo���G��j���G���/�W��:��(�o�l��+�ĘБ
j_dc-�����/���v��ձ���hپvu�j��DW	���-��v�����I�n���r�y�ü>���a�M�T�#5�P���y�[����R�!�"���z�{�ƍ*Y	��(�;=��,P��{��?�x�p��T�ms�4j�`�[J�ۿ����M�Sms�oꢕ�m���v������>v3_��Fw�n��5�S\jÉqG�Һ�u	�@�G�Hf�}t��E<�i��DfK\���D���^��?~�i�����)��oկ�H�8s����7�� ΢�a�i4s�f�p�=���m7e�{��A
�i�g���4���u3�p[L��Zh狴��)K��	nʳl�i�t|;�}z��]��K��>�	��*�iр�:p�RH=>����}^o�x/6�?���dk�{�Sˏh�۠������E"z���-�R/��)�-����j�5��q�Gj4�F�bQ�j6���Xj�Y��%'��LO�l�@�`��M]y�h����/�g}���x}L')�'��@��Sڲ+�]/}��}?�����^�K��j��k�*̠�`(G��9u9۬�����k'�d�P�`6�8N�%ל�ΊQ��8O����;�07���/L�� �^M[�;����K}��ӑZ�|��!3�f�~6`�L��JpCf�
2���nF�W�y�s�08�:�c���m�Q(	��% iP�F4��܁-�D�L�1Į�o�bU�|��I	%q�s4�l�B�:Y@
�ߤ��JK��
��v��d�����Ė����Z���F@��Lŗ��@�g�����<
��sZ�U    ���.�!�	/�L�!xR)'�;�l����β>rZ̸qЧ̥#���3����V�.�{���ݽFm�
Y w�yӧ�y�yl�/��=�Ơ���c��ICj��uZ�^!���s
��=�&�-��YX�����H�-��p��3g��_���M�R/�u9�7uq��V�C[�����ۺuM���a�Q��_O�ߤe��JJ�g`8��q��hK���M�`m�WO �i��@���N�)�"�wi���+&���{�y��h+&A��+�Ե�˘��a���:`�_��sń��Hin`��/B������e��B��l���qy;e�]�,���47O�� !_�x���:�Ϡ��^����}�w��HϷl�וq��Q����bpG�������BV�[�P�cZf�8f��=���ْ����U��%�~IY;�F��ƍպ����O֟�#��bmzeJY�:R��3�j�`�2�6���,��������Y���~�&�͛Z:�����:��74��.�[x5��_J
M��X�JJ�v!
�0�K�KR����s�/�[�P}���ބ�><�m��A��*)�;6��M�w�bLM���!�lPs
s���pD�j�E�Z�e����_�}�V�[����V��ֆ�N�z��z��T3����f�!6�_���Q�rڶ�A��H���4�a�{!ѻ,��02n�.��f�'5-�ԧ)E����?u�L����X�� �E��K��o���*n�{��^��x����������|�5{A�M1�Y��E`�x"���8��dAv�HhF�������RgP�����J���k,q��$��I��-2K�M.y�yL�Ov�|7��x�&���>T��	��"\kk�j�/"��]
l(��b;C���B�*JQ��l��[��ז�<D�H��\�����"X4�ћ���t,p�=|��'(ŏ���o��C\[
D�+��jGH&���X����^�*�f�>H+ڋ~ݵ���SSW��� og[w�>ڮ�5'l֍�<�}WXx�˹�����,b�F��o����	f�ő̦,�����c�&�Ǽ4H\fE��	Dj�fk��#��������ǡ{L����á�t��˻�:K&~,��nP��4�vCw�
>��D��;�X�Q&���s.`�.�"锒�Ԕ�>�d�>�m����l+Jp�v�k1�>Y\�c"�����4��;��XV8�ʔL��)0��%2���Pik,�
�c��X�]BY"�I�B[�-&v)�NCS���X�L���sD�����:�O�B��w�H�3�7!�	Y��]U��l�s��+���F�o���Y/�����O��R��r��hr�m4���h�Hd̃ҤX�'s3@v����(�H|��v@��_��bH\����\�ŗ?D'�B�C��@$Pۅ��,�Ws�:�l�2xj=T{0�Ń[ss���],��������H��a���F*X�
H���`$��Mj���,a-��V�vʘ�{�l���rY�ژ�̄�����_Vu6TM�Н3������H������ �����C�O���B��V�U�`n2�����3�t�i\$�R�\�:Ɓ�1��IB�c���O�8�+�����U
�JX��1��Y����̄�4W���h�`��9c��Ҋ��R,�s��p[�M�Q��*���E(�qV����q4(�b����&�~8h���@R��YV���5���k�7�n� �-ғ�n�H��F��4���@}*da����$'U�H\�܉o����/ɇ
=�" $�R8qg��^��q�zi֗ir�I�~b7�|j�b��/�����}�F�^Ltt9��	{���ԣ1î�:�����z��N��]9I�3Qvڹ�J��UH!:��V>)v]_!��JR�G���si��SЭ�ieA�`��zY������_7�P�&_����\��K�U֋�F�l��Ր�Ր�j��Z�:��J�d5d�2[y5I�i�WB^M��d�\M˵d�fk� �֒A��%�4[Ki���l-��Z2H��d�fk� �V�A����d��&�d5$�� YM�j2HV�A����d��&�t5��� ]M)BÎ�10Bq�	�#��?0B�P�!}8`]mg|'�,�z�B��B��T)���U�c}�� ����]��!�-�f<҆DF�!o8d�8$2b�C"#�;$2b�C"#�;$2b�C"cd��9BQVG� !�(`�@0B�p���#��>0B�p����%yb-�kI^����kI^����kI^�����u	_2S6���2B�(jA�DFH!~8�!Hd� "��DF� !�Hd��D^M��d�XM��dP�&�r5��ɠ��`���@�� !�8`���F !(`L�!}8`��ဵ����,E0G�MP�D���Wlu�6ٿ���~�Sb݄�oŽ�X趣9&t49�� �]4}E,a��iW�P�h�u����~/W��^�{2����~��!F�\�3�	�Y��L�FH7Ɠ�L8�*�b-�|-�b-`����7d�衐	F�p���!c���Y\q��C"#���@$2B�ȫ� YM�j2HW�A��Aԙ�D"#d���A$2B��d��d�"�2�CfD"#d���A$2B��D"#d���A$�j2�V�A����d��&�|5�� _M�j2�W�A��r�-�q2��EQ�c��1�(��!c��8d�~����1�A2f?�C^M�j2��&��j2��&��j2��&��j2��&��j2��&�9F�F��B)& �[�g�-�C�آ8d�-�C�آ8d��+X��A$2B���!K��2�DF� !�Hd�"�2�D^M�j2(W�A�����`��EQ��c��1�(c��1�(c��1�(c��1�(���cp�k� GE���גA���A"�%�%�D^K9&N���:�1g(dL�c�b��9&N��9����9&N&��݁��EQ�S��DQ�C��C1��0F�P��Cc��(`�血ג<Lpx-�Ä���ג<L`x-�C�Š�TX��!cܠ8d̑<s$�CƘ�8d��BF����1G8��d�C^MQa18d�b��8&,&T�ρ��A�	�ᘰ�~��2&*�b�qLTL�B�c��<��$2F1~l���(� &*��A$2B	Jm記2���Z4�7.Yܿ��!����(]TٖiT���m�iy�,6�.$���bC)�����IņCƤC�!K��2�4���\}��Ջ�7{nj���޽��;G��ޕd��J��5&+*�/Yla��i�=�MiL�J9adp�k9e0�18൜2���ZNTh�^�)���A�%y���Z����A�%y���Z��8& ���%%�	�A"�ua��bp�k]�瘀T�GĠ$CP�!L@����Ġ��	L@øc& %�Cp}�W�d�J 7���z��2Ej;�ʗ�I�x��[��.P�NJ�{ꑏ�YV�qy�4N�%0�ɡ<��7N�w�uu����j۵�z8���A���Ƈaㆋg;����d�����{J�+�v�}��;2��2j�oܔ�7�Ͻ�T��w��ہK��L���K��ڵ,WN��7����0U��*����-��:	�a��������JƶwU��T�j�" ^at���SF��I�Z+����Qu�᜴m��NǙ��m��~u�=\WN�r��D�z^O�W���.��������b%�v���j�F�Z
�!��ýz�/�:h�p���Y%��N��ӻ�$��V��`���O�d��0�[�0G�pD��0�J�#0f��k%P��H�(	}"Y�hz�r�o͂�}�@%V���rKRd;���Y�Q���.J�l�|�3L}�yOF��:TХ����^ׂ1��pex�x�1�9��	��`*��wzv�{�rL��5P�uӞ��\    $�f���o�����ջ�o��9�{O�n�$���w��u�a!74���]U4�QÚ��
�>v(��O:��n�IhΘ�3���OTg�0Gg��6}-�u��k�^�Hv&��M��*����Y��-��sbI���]-Wm�S�����A�M>魓������T7z����m��eKN�f�~K�^L�ͻC+f�T,1�J�H� ��WҢ\�~��{��飋�+�
%Ӌ��%jE��o�S3Q`�M�ga����I����i��f�NׇK-S��/��R�F������YU��ܖMۃ�mˉ�:�1��Su���:�C�T~�!c*?�W*��gk~ʳ�
?���/؇�B�>�\_�/S8�/'0opDG֑\��KSt���Q"���L,��75�r�;���5b��ic���k�%y
s0g���9�a\)�y�QTע�F�}�����x2Q�������s�Ŧ����|���돆茾䫛pD�o��~�z�G�� ��_;�\���5�-��d���l}�&���E;�'9W@Fa�߼�ps�T�gs�Vj<?���Fm��:�X8� ��"	�u������F��6�Ex
���n�Y�L�De�k/E�GJ�F������ �W��-��&��\�b����LP��� /��E�k>�௓�b�qg`w�����,�ӑ����ʁ$Tf=5W�hk9t�O�q�S�sPo#F{��~i`����ӯj���ƴ;%��l˃i��������q�hok��������� �MA��ߟ��5�͸���Q�j�ҙ��{_]_���� n��������#����z�{�a��c=ʓ�����v��DQGS����B	ە<6��c�m��+�l�M�C�����]�(��v]����������S@�禥4�������5=t ����1r������K	�b::b%�s�aRP>��'L�cT�I�){�DF�=F"#��Hdmϛx==[�O]��o�f��<<�6��v�iÖq|㊆{�>�B#|­9ڃ���^�ٿ|����;`�K�tb�p�4Ny��A��:�X#!�S�sFcW�wկ!Yɬ���������g���6K
�s�Y1`����ڱ� ��zjb>hڒQdZv1*X��g�il}ʨx"b�'����ɾ����cKӐ�3k����3���!P�՞4�xL��9�͂�t7Y���� _ndC�{�$P}���;��|Mt_$q��"ĕ�Q��W'���:n�Dڅl�UFy�����
�
������K/v-9��DA}X1�&i�E�k��p'U%�J�zuW��9UQ�o.���|޿��7����lzC3՛rW���9�s��~+u���1c��݋7?��ꇫ7��I1�|*"�#���(��'r`b>R9��rG[�c�U���������� ǏzXJk|F�I��C�h�������4_��b�9�[�H�Z��j���r�x9|jba���2��1qj��U��m�}��S5_�˂��]��zU��kW��^M-�����y�j�b�w������юl��G�ƛ�D"�4�9x��Mjf.E����t%O��,(��̆���.���IJv��3ݔ��y,���CZ�@�g{�f�΃� W�Y��x<H�xp-���?�W_�����._����cTYQ�\C۶:4�z=综��bx"t{��t:�n�=����7?w9'��=�����c�)�^�\}�{4A�g%�� s�[�z=�k	s�L�
�grGW�֫:��uN����r����'�T��m�ߏ�Vb泺rv�q���W��cuQ`����4�ߩVׇO�����{e����z�D���K�j����"��ˊ�d=�,���_g��Z��zp�M�S��M���6����{���"�jEd�}����o� �V��MG�zq{[�>�?��?/�J��$���d���<^ן�~
E_Sp��%t`Y��K��ִ��ͤBޔ�@n�e3ps���[�-�P7��	��/t"�6�Q�t[�s��'�xW����V�u5&�B>��G
>:ŉ�<��=ͬa�7FV�)0�2P�Ym�����W���9&���V�'+�S�9�T@��j��_#'��]a�GT�Z��>t����I�m� �=�|E/,���E�Ц� ���a������*��5��r�p|x�{�ZI������'r}P���.-�M:*3H�[��/��P��R�� u�8҃;V �c�`��|�;�È�5�\�W�����D�w��b�ܮ��g�Fs�FkKh$8�!��R�"`&8��^���r�[a?��ڹ�Y�� �ѭ��ܖ�̰_5��R3���%�:A��N���6h؉��y���%v��^�B�^�{��z�p�~��2��(�2_�Ђ��+$���f��]Z����r�g	+Y���X��|R��AfحO2v�LD�"b[񭈄�pQ#>������Ħ2�F[�����W]���Í)	���1Z:H7�;%�ֳ�殲�T��tJz�X1�և�y��m¢�#o�Y��տ�P���w��������ʻ�hOY��7��_��Mxn�|��%b����ޙ}A�7ܖ��w!��y���k�9c�9#�(԰�N�a��RG?M�::/�q�r�hS+��p�9�I�O�8��c�*%C��&s "!�9�����u��1����K&� ɷ A;��:XFX��%�Ї��R�F/8:��*� ���D�A5�̅CGzm��6���	)MP�|�M�Ρ�0b�8�\�\Q�{%"�O�=�(bV��+#]�ʛ$��o(J衢G�b+A��|>���%[�M��t}eV���Hҧڪ�9](��, �u,j��	o����њ^��_��H��xG��F	C=�G%�<����Ed"�"8���rfR�e��Z�$�����'skJ�c�����B�m�G���#�+�gCo⫲`V4���$�g�9��+�TŽ ����r�L��>���M�:K�誷B�1�uz�[�P6��b������`����5�rE}��S��gS�2�g�����W�\v�&�1��ZXMuv*�C3�Sŷ�)z��=V����ޫ�C�z�cR�8$���h�/v����i�{�i�1b�'D��B�:�[�ů?}���G���o��׽W-�o랹��2�3���*_;�r�L�g." �(�k��:��w��3~�7_��/��q��ۮ�v�C�-�02]{r�N���P��F�����D���� �t�Z=��5�Š3���F'�یe�6���q֎:~�d���x���3&�۠� QSY���g��Жn�F��$5���4���4������D
�!)0�ωE�S��K+V�e��E�=�p�Tf�*��H�2�p"F�)���k��ܢe���EgAB��㕔4� HA�N1_C�Z�l{d��$�6�>�����U|�w=(!b4zn؉�$������t�8t��@2����L��?b.��>��v��\����Y��YS�$��L���,��Ĩ�f��f�ZDo�x�*��,AʔJ4A��KV�̶�&�ΘCg|�U�xR��,x�u����б{D�L�p�8t��X���U���s=b���H#��8E��C��Et���!�̤�֩:��@�i�,�����Ͼ���Ĝ��K_kژ���H�!���r�"� ��.mfO���g��@T�㧣֞���h2/HK���̒��1���}�������{I۠¾Ù�ڞ\��C����H�)��+�@�=�b���0���F��"`�:��IJ����H��d�H�@�<R)0.�4
��T
���R �=��I�X_��{��v;��7�,���?t$�3�����K���1p%����7�@\����(Y0q���4I�h(��R�RF//�������Ŷ�9��o��3�efŪ)S��v�z("ۡI��I��R ݓ�%����	�@}�2F�<5�h�f��0i�:�T)p�������h�\0
p��e��K�y���w���:    [IQ�!�x��Q�\�'o�V�`{�łS sǉo{�|a��qs����.��������������5���c,�R� x^��cA�Q:�cA'R`,�D
��H��V�������oե��}���X�4�v�]��T��}C��kd!�����e�����WU�,�;b<vC�g�����3�����5�I�Bl'Z�	Ć���{u� �v�=��E���n��[6{^D����-߄E�N�X��3.�J��;����۹�R�p['d`+섈���i�QUJ�a�f���H���կ}x޹A�B�[{ĶG%,���UJ}Rp�Q�]f&�T���94�e�6Z��@�ԇY,�0JG�1�H[@ߧCd�:�4Ps�W�� ղ4&9X˳ݧ��fstJ�DǗ��Q˧�.1������*�l�4�{K<qr��1��`1эn�)�l.���LP�Ub��S,�#Ѣ,��Q��T͓�����BS�,���]�؜���g�Q�Y��5W7B��H8ve4C����a((p���?lTRz��|��^;Xi���y}��+i3�z<7tD��\Ʈg,�ّk��p�8�R_�&�..Vo0<�=^����ߟճǇGSC�h�4�8��"GtB�`���A��^s%���e�Wq��<��1Lg���E���>-�AO�&��"��3٣�q��tBf�#8 ��o�*:jv7�5��b�� ��������i�l6D6��MDla��� ~(k�A2?��q���ܼZt���T��o��2�{_}|���y�{^B��6���`Ӗ�_7o��1v����H�	GK�@��k�MA"4Q�;\�u�}�@D��۴_�(Gn��}*�c�J����H��Rh/��E[2�>L�)��߮���Q��K�I�8���a�"࠼�jPb+�?/�bH��sN��e�c��+�)|�}�|�T��Ģ���X���o�a$���N�r����h垨M.b�������ŗ�W!Ū��r��"#��r��Z��$�ND���;�9{�O�SzIQ�Jq��E���^��&�����b�P̐q�O��w0&@�k�̥��-͞�B���bّ(�	)p�^��������\.
��w-	G������f�����N��|�;�wt�1���=�f�3�l�]�[�+����0��Mi��se��l>aR;��1*}��D8�0%±��X -�2j͂:��[Ω���Ɖ�g�:�/?�TZ�*=|�<S,3������L!��5��l�>Y��q����<wO�\���@y�.���Ky�N��.�^Y�KpP��x	��ͨ�*j"�1j�bHb���[S�5���_?k[����z������*$��P^���Z�֎�X]M�\��}�z��j��G���'�Z�jc����O�	�"��Zl���߉h-����P��I�NBj@��K����D��0���"����r|����X`�$�*b�0�l�����2㫉�nt�?:K�,�li�T���Sl��嘙)JQB�����a�괗�$����	Z�$Ǜ���L�)u��@���D�l��D紲����t��������F�ca	9;���c�aj�)S�`����t���6ћ�����_64���u�p����8W�"#Dk;B4j��>�K��c�L��r9�N�R�\�y��s:I�)C>N����ft��2��-SnwX���6P3@�`�b�q�p�$��˝jP� k_��1�m�">�FH���&�W��~�X��
�������W��֘m��k��
]�Ό��U��q��>�9B$�w�@�t��.o��8KȨ��+n���~XlKo	�1���RM�EI�r��=<Ǜ�I�{ʬ�f���B�^�֓
���Z3����'��4%B)����G�� z�g!xt0�.y��L�r`��;�L�`�2h鸫��͸�"�iXTQq�ȷɡ9�W�ar �C�j�$OE���Z@��ut�f\t��T�	Y�� Ư�U���e(�
�E����gO�#8J�ÀbR��(�(E��<�`�(~1���U6+X��
����a�AEd�=�%()���;j5��5��F�(x��d�T,�o���e�Æ*_c�TW��������m�kz=�j:0*v�/���?p"����7�r�
>�,с�Ir�Q���ħ�cP�<�P>ua�ȔҒ�6�N}b��������˿��(�)PB�Z���Q:���z5C�^*�j�Q:WQ 2��ȳ���q}]硥��迫&�!�Ǫ���X��I}R��������p�xh�tw9��Z�t��~e�+���qlK�v/ R�]�p��BW:���$f�T�Z�����F}�}�WF������O��|a n��?�u�b�ٯ��|��M4G�i~:��߯~�������˗?��}:￹z���������7/�������_=�&�^-�T5���%j{�ӛ���h\��!�����U_�ڨ�an6ս��V��/g^І��^Л�x��)��$M�2���K��kب+��ݻ�{���ׯ������y���;:����s�duϯ�/���(��?���o�Wz�叏���w�A=������wӕ�cC4��>~����^�?�ˣb3���,G�0�k�����&v�-އ�~���%�c)N�5C�SC�<�+��R�q����T��y������逆���$2���0]t��^U����-�v����� ��Y�	0�G�)!y����U�nԤfE��T���S.���׶(єe«NmJi�:�9B�l��89fhV�s;{�2<���S����u�G��k�L���Lj߆���;�����:Drl���T��w��}W��&t
��jy%�Ba�e|ڢ:�`e��f��Ը,߬��o��)�����S\~o4<��W�
�+q��Ǖ�B��
ס�q�����hxtЎIlB2��	���sbn�m�|���
&�ט��K?P�u,�?�1A�G���I��s�_���	��}ũ*[/+nMYqsN}� �)�D8�6�g�� �'�DȪ�3�p�"��2�h+̀��9�h+̀�{6�h+̀I�6�h+̀I�6�h+̀I�6�h+� ��b+� ��b+� ��b+͐o��4C��f�̝���>Sd	�4ϞT�-�x�X���ל�Ȟ/�U�b���G�Ć(<3e��C���<8��΃��<8u�̃�Z:��,�yp�"�gD���l�t�����i:�>��U���۳�j:�R�SoSx��?s��"#�c*�f$t��p0�䪦�ɍf�8�C��:����~���qǑ�N��z��Tn��?�]n/��L,��0k]�0"Y6�g�8�Csp�gCN`�?]$Ί��T��9L8KjΖ�Ä���0��9L8�jΦ�Ä�e�a�LG�[��m�#X���`�V:�e[��m�#X���`�V:�e[��m�#X��� ����� ����� ����� �����@���͕��f����&�!CXg���L2���I�S3�pZc&Nq�$�鎙d8�1�lK���;�UQw6ٖ�m�A�1�3ɶ� �Xԙd[jdL�L�-526u2>u&ٖ�:�lK��W�I��Aƭ�$�R�p�UtN#0:�Q�q��<�c"�_�d�6����&d�=��3����Ki0A��V����t5�{B{�n�L51�[���x�x��x�F<�6<&�u�݈����!��]9B#�dB脙L�0�	�f2!v)���)g��	̃ؠ���D���AlKf� v$کiIh�L�Ķ�dB�Ef2!6"3��n��|�����KC����t��X���/�\���Tt j�oP0�)tsRY�3C�S���4z�'��$_Uo�F������j��(�����Nu�le|�n��e��+�i�?2���G��Y�!��YD�8�yD�e�n�G�0[�m�0!���� �yD[iL��"���G��f����yDi���G��f�ظѺ�d
2&l2nt2n    4�	7:�	7:�	7:�	7:�	7:�	7:�i3�������@��`BF��a�LG cE�0m�#�Q�s�6���P9�	�#�1at�<&���ń�	�Ǆ��0:bFG�c��yL1�	�Ϳv��S�T>ב�ۓʧ �*�2�C��B�1a�H:V��3a�H:7Ӑe�i�_].1u8趄�J)"�FɁ�����r����G[O�����W��U]��|2'd�ۃA��mwʯ�;"ۙ�������ۮD������.]��r�t�W��By��DQ��ޓ��#t���,��dsM�@[R�� ��4�6̸@���K'A:h�H���$d��D�G&���wT�)$��dL`Z2	&&-�DK|S�nX�K�.��Y��Yy��U(�Տ�W�߫�	�i�}�Z�GY3#��3�}��/p�+�\׭$mⱶx��aԨ}-��k�ܞ��v:���.�Lګ�8쯛�Gs}���}é�{��&Ʌ��yC�ւ-������h��͏_��>աoW�_��另�t=҄B�Q:�C��4/ؓ��x�4���x{n��
���n�"��s`iHV�ؖ(r݉���OAko�xK9M�ܡ�HT�V/ʍ�d� �3x�F<3plۊ�#��<b#�|#�r�굱_��\e�������+.�kv�:].���&W��KUۧf�o��^-����۴e�%NCc��{��޴K�j��Ȋ�W1U�<J[�Z�����W/���mJ�O�8�h)�]�w���:qt�UC�\H|���j��|�
7G��/���y�;L&S8
̠�#p���@�t����V���cui��tҥd��~��4�6��^�+i����gW/߾͜�����`j� s5���C�>Y`B9g� 6���I��&0���x��K��2e7n9���%���	C���i���`�1�e1�ԍ-HBY���,�����_��F�ߪ�P�zcԱ8d���tE�D����z]4������s�
��㟪'�ی���fPt�@UEM�`���b��+���}!RW3���"�ea4 b�e ��(��ȊDi��=)t�vd?ʥ�F����鋎��I�:�w;2��O40��b|��(�f����Y��A;��f�g�*S�҄ �1�g�����؞R���-=&���rC2�M�",F{}P�P]�.�C����ۇ�K}�g;#�HX���*��_Һ?��8���(��I�vrև������A_}���ˤ��R�/"��3�'z�l̆'��n�y1<4���V  �gj`TFHb��y����iCe�\��g��GagE�P�Cs��EH��z�]`�RWv�ku�	\�+#�����M�:�r���1qN�R2��6�pW����L��L���-�9<:�F�}�ض#����ny��[u��X���9��Bⷝ����R�����ڼV�nu:~:�p�~op�2&H-o�D�zϷ3����_���N+O}��c-A/PK*�����̵�E6:�y{R��G�R{�����c��q�5�u 4itl�_U����7�z��
X�|���MS�}=e=�>���ȹ��\���� �( +r��vL�#���mfS<��%#:��vd�;)����,�?.�p����z�z���~u�=\W�`�Ȣ��z϶�<��?�@qp;p;�Mr��	�.����+V}�Si�6D������s��,A�m��6J���r�7��w~���f�T��u��g�	��:zB���Иf��w�c��s.���{e�!�����W�+F��?~�oRY�.0Jm�uAj)��8	� �m����?���W!�(E�!!~W��û2D��.<Q�a}���.�����"׉D��?I?.S^�$Q
�Aʔo��K(�����Yo�֒��{B�G�z#�v������;5�Xc�0��^�6�b������A��cqcx�wJ��YD�VD�+]���f���bRm|�m�!*&�����fۆM�\�oΉ��n��������N9���ˡR]{���m
��C_����n4A�KD�zv�y���9<����Do�<��)�uٜ�ݱ�$W�W*�FD<?�_��j,��n'R�"���sϾ��si�~��sr�G��P^{��xJr`�>�mm���@�շ_<XOu�1Og��a�y��w@�4�Q;�O�[�+��BX�9)�"����
����bۋse��u��˟j�~�kc=t�;RB�4��A�̜&v�&�,��R�ޫ>T�S�c1s�Bz�8�|xm����#W�� ����@͕J-o�k����:�@�)@��%��0�$��ࠎ�\��I;a`���8o4�cB	�����6�'�w'>��=T����u5��m�������^�a�DzdoN���2�I���w�ϳ��:������4{(�a�Ȉ0�\'K���W��~���ٱ�Z9r���s��[�:<�沇���J��>�5$j�|��Η:6����M�D���`�ї�KT��F�z��1��X�����癬)~{�}����V��+�P���Y�T2p�m/@�qpz�E�m�%�OwR\x���n�f��燣���Z�)@���&%/��S>'4r��s�xD5�PL}��&ë������&����q!J&4�Ò�7k�ji�&wA�MR&]�u�U�?��q7���>[}�L�U�~���������Y��:)�Gy�Z���T������͡@��H>�"v��wM�$.��~1#[��K͌A��J[Q��Y�c:l���;4��'2�1���>S��\����IK��O�%�z J�����t��v���,G'���G��X��,R��n�鸨@�_a����O�+�S�*��Lʋ��	^���Ȭ�M����J���,5�5z޾�z��~|������w���������W������/;���5n�e�}>m���~^�1��^�W��Ǜ�M�u~�H|8-� e��-��Pzv9: ���9�е��S��Qj�'j0}o&=��d솩����lEJ��\f;�O�x`�ɻ^�?�]�9�,i��e�eh;JTG���2kNd�쨨���+���T���=r��>>�׹���U[�E�u\�D�����EH۷�b��	4G`�5���#+�Z%�?5��Οఀ�z0mG��KG�b����JP->������Gػw�}�����ކ���Jk��́hF�?��h��V��<�kg�/���W?����v`�&-|9=�>�Go�K�쐝��&,�s��J5K���/���A�����0��=T�
���<��>�`.Ia����C�G,"�z��( �"��X.�Xd��dqDjk�O]d� ֳ<�ة� " � {�Vhj-�H/�����Q]�EPd�.�"	uщXF$ �b],��$�](�.��b��Okў����v� ���2����Ѕh�n�t���G�S}饧ه]w�h�uM�rW_����h�B�9(����M�������q�h���ꍌ�Ri��F�4/bw�����܀�^�&��2s�h}�����]�����N������$��hlp2YSPt�Nv?t�L��=Y�G����z
X���c�L���\�����t�/T��$bMjfA��$��sۓ�̟$��fo�M���7�(�_���&�ZQ�2m>Ro��d�= p����N����x�����];�ec���Ju��z�l�}ϻ:�n��^��+%%}����v�u����Vn��}%�彳�����ރ<|8:�~t��m�èM�_���c%W�'+�S�i��[o����p��oo{a���lуg=x0��/	���y�}풫�}����r�����pj�;ѻ�jΖ-[,ߚ�y�0y�S�;�|=����51��rbUQ������gi2Z�����}���Фw>���57,��w�W���9kSb�6�6�$���1F�蕩+A����IYJ�IDj׶�C|��g4��M^3�o���.�y&�[��{��th֓��'�eO�˟�W<o�D�E[���&�6j��9���MiϷ�2�n5%}�\e    �!x8�k���P+ >I�' |��U���5���Ӣgm=���%���8l�G\z
�FG��'��� ��A��}#���ǔ�?.�?y~���{�/��k�}�� �q�V��8:J��r�	o��6���w�q��P��(����#�	0M��:����~�g�*?n���~|�^��.u�Ҋ�dUt�*:[���.VE�#��� o���R�����\�Ԙ~l�5�CQb7:f-S�=��ìe�hNI]n�6N����\�hNI3�y��$����?�\���&$� �7�\�&�,y�a�2�ٳ>�ʯQ8�����/KUuT������у8Im"�2~��;#p��R�qn?�"��b�|�b�G�>G�@lU�~�� ��'�P�Ѵ ��,v 
ޫ�~�d
�>E�>E�>�O)���(�˓�����=�9�"��8�"�,,�>����a2� �F:G-�lM�Z�W��,�38��9D�z��d�o.�b>�,�>�
�,�38�r�s� 8r��H^j��s�A��\�,�ɦt^��)�Ky:X��)�y�ѓ�%|���$����W������J8p�yZ�����O�*���|
V�d �d��<	+}V�$��IX���1V�nZ����`��%X�iV��Mp(c��%X�i	V�nZ����`M�� gX1��i��i��i��i>k��M�h�)^5-@��L����x�� )^--@��J�m	�������\�n�Ʌܻǻtr�\�\�̲���Ú
�< �;���u`�:�|X�l�l��\�l�a�`=>� ,�ց%����/
"�b��IaX��X6��z�a�bX�lTʒ`iT��`�R���Q�B�����@�"����$T#`yh�����UP�ҕbұ�t%�F�+6*^i��5,	�ǌ�4X�l|���°�5,e���kX��eq)KQ_<.eI�q)K��KYl\ʒ`�R�]�|WiðQ)�ݠ�ƥ,��q)K����RA��cI���Xl|?���$Ԩ����$Ԩ�%�F,	5*_�$fAظ|���q�J���WlT��`����4ب���Fe,6*di��HY���Q)����F����J�/8��4ب���F�,6*ei�Q)K��J��}6*eI�2.e)'2.eI�q)K���e)�p�2߭�0l|G�ߑ%�ƥ,e[*�R��#��-�lj��Y[Fe,	5n.��2.bI�\�f�q�Lȵ��5cs�ly�w߿�f�dH`J��i�t�Ê�%�����b�C����u�.$�MJ/D��]ey-Uqb���2,s�r���nR�,Aβ,{J򺪙�ʞR�;X<�^"]SEs�-w�P�*�^�4�a�+`�������@U�HR�`�W_�)�+'_X3��dO�J0�0��+��T�Ln�^�q�yU�$���V&=�5p�_��9ztSHG�[<�D���0��S���]S!�B�B3��2dw5Z��V�tqD�8"w�������P��1�w1_�XPz*V���P����X�:�	��� ������73���ھqw�ءy�E����E�8��p��gbA�XAm�������q��\�\��㰐���(X�,���?[Qm>�bYo��Ϳ����Nge��}���bi�|i�bi@�4�B��F�G�*C���bH��me�[����ڒ��\|ԡB��$�F�K�Pc��7��wF�E�=� ,�BF���f��^� rto&:��84"�s�	�>'3N�g�e3>|qĘ���W�ƞ�\�{�1~l���׸��`׸��`׸��28�,��&��UP�*��k���B�^cHB�c�	�-
6*`i�Q��(Ԩ|��ʸx�clT���)ب|���qSH��=�I�C7�D�� ͟��Ԡe���)="���g�
�`��ܞSW�ۜ�8�3�z{��}�]TG�ѵ�h�����b�_MGa�==jqrT���`-v4S�G`@SpѷvE���e������g��S3����o�H��v"������9�����L㊃o���M�(����+�2�R�œ��'a-��Ug�yVsv,]�a���B��c�u`L���O�C\�>Aq��9���W��y,Y�n$:�gaD���ZCq�̈́�z�����C��J�YU��Tۻ/����r���;��wv�8t�X)��d���� �{�*W�/1�.F5_���w-a�_ɳ^�o<[�7wP�����xq>�<^?�{��p�t��hf��c�OF���l��C	�^ۃ������#k����֎S���`���E�:E]�oU
+�q��������k8�����l��zl]�+�]�}<_�SNx�8�\�\Qd�#RT) �E }�J/`,��`�@6�B�GU�h���������lqD�Ԟ�~Ĩ��cr�%"��A�<
�x��4�K������
�Iܵ: *�uߟ߫A�N�vh�.�U뽎�M�mz;�.���C-��J� :�
�2��&�����\���"B���d�]D#Ge���.ʖCN@�L�()Ԋ�,���mXz����Z}u�����J���^�>_-��p��⃑���9��)�T�<��^>xZ�U��A�,��z����he{Hu�z��>Sk~/l��n��#��j�i⼞_?V���� ����g�n�r�(����it]�)��@��x:����ž[x73���Їj� 4���t��N��Rw|J��Z�wy����ߠ�^ ��5/�.�Ǎ�dR�I�g��>�.�R�E����ո.J��G�QC��D��k�po��J3428���R�Q^4�����}mZ|�ٕ���j��z���ڶ���ڶo��^�&�X2�Ѳ^0_�ϗ�>�<Wu{��t:�n��~�����/���/*�O��7W/Ո�e�&������S���q��gn'C6��}�B�KI3o_+��[�G�ӻy�7�� j�����?���/����~0���BԄTd)ӽ��ϧ�[3X/L�/(�z���4+FF{�8~�S�0�vMh����7�{�z�<<DU_��aڸ%ԇ=�ٞ�i�M�CONݮ:d���;
��ȢFgb�^��gf�
R�޹l����çf�����z����=�C/ࡷ8鯤7��������jD�2��>�)��v����]Z�����1\ۑށr�y�v@���騀�C�g��t|��T����Q���L�<�GǊ1Y;�F�����|Q_��+��|��n)	�]=�e��n��/�qd��p�7����z��Ջ�7{��s
��(��q������XW\տ��kcu���[S��r��"^�  m���QM6v��=C��8��wn�W*��GDI�q��e2M��]��x��/P5�W��k�VIf�&��F�	�`�ߜՄ4���3���wb���n��o�ri��Q.���:].ztK�Q���~�J������]?�>�}����d)��'?��۷d�UD�%��/u�/���U��Ǹ��'�jϧ�N�z�܋��a�P���>��[P}Æ�V�������*J�����Շ{1e��U����L�IE�B�Ѝn7$ݜ�qy����y~{ʈM/Z���/j�@�&�/e��V�H"����1���S�R5^�q�M��,�p��pY�Q-�d��2�K�%��5o�����e���,n'����`��^�P���R��[6pCz���7e���P���J�a�����l�Wh��Y��?�M���||�o)�V�ܪ�ʰkL�΁*�&{n��b�*���5)�| 	| 	-��^����ԃ�Nz�=���� �4�-�t9���N2�#V�m��e�`��7��Ls5
�-��<�w
�ɇs@Q�N��E��iPh
���c�Y���$���,�x�w�@gMPB�zbbCCy�^�J�2��£�擓L$��JOg����{�ڑ��(��k6���wr���|�=�&�y��i�0� QY�+�ӳ��Wݦ}��ڥ]ӖKG���h�e��\>����'�
���-�Ė    d9����8н� +�$�[���I���Ē%˙N-�Ecm� =�2��M�� ��0d6YW��I���� ƅE���=)ʣ��%Љ�x)��MV"��|2��O�P���c>By�'C(��d�c>���O��)7� ,�P��lC²5�6� ,�P��lC�s�nH��aنD��nGF�� dKB�� dKB�� D�C�L$lTk0���XӐ߸w�C��L��K�f	\�%�G����6��jg��$��XZ/}�8�ŷ!+��J]}�>��qD	<ٛNa����� !R�x���d|K2�%ƕ1��ؒLnIVnHf�27#C��'K� �\	
$�+A$s%��d��̕�<��tG2W��H��	�#�+Aq$sm�7��z�o�7��z�o�7��z�o�7��zCl�7ĆzC��FV �dh�1��9搡U�2��C�Vs���cZ}� ˷ܱ�[�X�-}��>�|K�G���#���o��ȷ�y�[�<�-5&�t>ٖ��R�[j�}�Ć�� �J&q߬�_q_�7rʢ��=�`��V�/�k2�GG-��8zf�P�N��#ѻ���[F[fa�X2��k8���9�^��š��\E�g�)\����L�'cq��*'�I�!爺x�%�xgMH��<�nY����܉Ubbr�Y�S'��<�)1���ݙ�y���u��%�Pu<	]^�.��u��GS�y%h`f�zpL3hLA�OC����mpT~V
L
V�P��E8q�y��\���(��)�+���H�P+���|b���$"Օ��љs�бUs�бUs�бUs��љs��љs��љs��љs��љ3��љsȶ� ��;�����Yox/�Z�2E��_�E�Zu/�u服l9ѵH�d�3N+o_�f��}�P�o���:3R����p����ĵ;��f�q�*w���9���N�g�x^�?�c7���{�;�������n�ҁ��v�O�����4T�x9sD��k��S|4��|	!��N��M�;�ܡ�R���";3�q�����Z�yĝ�ڦ���Hj������,�#P+I��-<x��L�L����yk�Ǖ^8�Mt��_�<�^�&Lr=q��E�J�[�Y�1�k��Ή0�eq]` 	��n�W��4�����Lj��@���QU���뵳]Q;c�yθ�t�e+s�ˏ-Q\-�j��*H��W�C3v ��nq�N�g�}��U��9*�>?T��}"X����t��6�J�덚���H���:���V�\k� @˘�����(8�U]�-׃.W��z�Q�y:t�e��փ�F�D����I��X���:�Q憒E�8��
�.7�EZu,*1�E����B�R@&�-cp��֫���zZ���kz�kl+T[ns 4�p���k��r���L�/M���*�kڰ%�;��㵎��u0E�|����b\�O?�J�7_�u�(��4i��й��O���F�}�n�4h���P���\�����%�m$�u�S�\M?���$��l���7GUG�R��hN��h���Yzы�~����!A��L�G�ђu�} �L$�s��sɮΌJ����ĺpZ�M��ظ�~�Yǫ3ժ����z�� �)e�}��o�͹L��싶��u��Fig{��_p���R���hGAP�����g�ңm�&������<����xs�t1��'����~���p�Ǯ���y�Kf;6%��F�	9��A\�L����ڠy��/����ΏL˺��C{�L��Ӄ����S��S��zȳh�ֻ����wɍP�Ox|-�fg������`�	�����4ؙ{���i��ھ����}�/�N�4B����<k[��z��MbLk��a�I�{砿[�b��m
_�y����A<�V{z[�6��~�˛����Ѻ�lóݶ3��~ ZE��{0�A�L�V���9j�}�� �G�_���׳���Y��`��Oy-'&\o��'-���vfB�PT�'=�Vi6:�7�������8�ߙ��lF�5���}�^o����'�#';�M,&�,&���&l_����;�7�6;| ���i].�NܳH����f���qi5����t%�����>
�VY�|��6�IQ}Y O�U�I`��^bh�/y3��x:��}ҵ�U��������k殄������Oo�<�ۻ3Wu&�$5�.�}���=���њǘz P��,7/@jܘ�R�����1��Hr9uCZ�EC��@7M�W6��!��� �z��vk 9���I5��M��γ<T��a<����ZsgIVx�>﹵DkC�a�g�&�_���g����Z��CÓ��Z�5�ވ� ��	�DV��^�m�O��&��ؙ�}���ܦƬt>5}����A���:�h���`��߿��������������'K�VCdh�o@�_�(<پ���7Lz��I�[P많dD���[��c���G������(� e��K�ȥP\Z�,�jp\d�v�"K�����ib�Y����-Z�秇����1�k�i����]Ҙ>t�&�L8�A��#r|���D�!��ȅ�"˸xqDi ��;���߆�t�2.��ZY*��XDel �5��$�VS�2X���i�܊� ��̩���Xȋ��V�!Ϥ'�M�6M��#^��;�$�ep���j���a9ݑ����w�w�;r���~\5ξZƅ���q�Ni˸p��".����q�̟e\8w�2.��e�ഌkGY;ʲ�Q�Ŏ�,w�e��(��������t!/��~TF��ؗ�����{w�@��6zȳ����5�u�����?/G�ts��$��@O{^+H�o�2�+s?\O�O��������&��l�ѳݐ�S_�x8�ȏ����o��O<��I+�}g��M�T���o}I�Ȝ$bP�~|Zci���F/x."����7����%J�Y.��jBM�ʞ���&E�t�Ч��#�'<�����2r5����
F����Ȁ�=�G0�����a�9jH 8?2jP�3�b�Y�i�-��
i�-�BlK����*����.Nᬵ%T�zl�3�A^�-�Bވ-�Ҋ��O�������������=Z{�� u����)"��:�m��{�S+<����N�D�/������Z��p�h�R�m�5��p�hN-�¹��q��]0"*�����!2�g2�g�.%*���}/��X�E��)�>��;���x���
R�,0D2Z�-؎2\pN��~C�dK%2bp���Y�Y�>>A�У����%ٌ�鱌�|
&�b?W�@.�jd���3��4_�_���	��0A���W�կ^�|�:U=���G�螠��L&<�ի������x���/�?����5ɄG�o�4;�h$�4;ɐVJ��kE�d�OR�B�("�h��,�<�Y��h�V����Կ<��^��s�+��e 4V2#�m�uFC��8�>�тbɂ��B�E-~�{R_���r��χw����ד�e������?>���2]E��l�q��� sn�s�?ĸ�h�qy��c�t���`���ŢE8㤱J��+)9�
���l�2Z?5[ZR��Ի�Ph�L�h��C��S�;��[���'1�ɪ�q���oY�v݄7�K3��������!�a��i$<��c�IZ�6��P=r�V��Vqpîܝ���s 1����L��4@8įiE]a>^���xmjh������q�Y#�>���xw?�U~s8�M��4�(Yw�YO\�e�?�t�D�ڿKT��0-�M�:��[�G!�5*�t�ޅǖ�i��m�ĺ�]
E���
�3L3��=r���i�i��1ͱw�q�O�l2��� �V��\/!Қ�����u=�KHx�{K��`�g��@-ø�3y��B,B zE��!�@�?�	��O�4? ��6��_�vT�(��x×ؓ��$ l��&�zB��]�n($��*���]0RW�ӜO.��z�m���C��kO#QvD�Q!sq�DA����L�2%z:�L������mUM    g�F�Ⱦ�������/ ��5�99r�;W�b����-��t�U�M�����~�6�q�F�\�C���X�l��/Uj]�:J�Ђ6]�M��j�a�YvG�Sp���v����&y��� 6���R��_+y�Ă���bA�M@� �%�X�v@��?��o����O�c%}�H�l_CVҸDb%-I$�\+�)����
KV��bH,�t���0sC���3������bs�9�z
���G�S��c K�J�j7&�ݍ����wc2^geBRΜ�̙�D��ܜAm΀��.������Ld7&�3�i�r�l?*�U��؏J�G���jv�2qj�����B�9?�4�hk��u`�:0|S�wU�=^�t�p�d��?�´ h�G] ���ˇ�Í��!���!��Ǒ+ᨕp�upx�qr8�{59�t?*��*ٶC6�+[���:���ZiZ�n,7�1��(`�0�Fb��}߱�j+��<�R��ٖ�
��}�J��Dv��5��[�<X:	//��Kz����<�5(O&��x������ݜ�(�*������]����S�5NӋ�d>e�xI+�:X��X"@>T���Rʵ�T��� &�:K��ʇ*��QM���#�����\���g��k��T����F�DVME`��52Xv�[0^�0�
��
Xl���>�'b#J1��+GS�V���,��lV:'�ĲUp("H1#LaT�l�V���g4�nLb��!K���������C@�6`s�{W���~y]ymr�_�|���_�������i�Q���B]N-s
(��4sM_:ʄ'���L������Ko����`�y��u��z�Q�Q����ց��%1Q9 ?
	=�3���T�`�{�h{F�r�P�Z�)dB�@5N Iׇ����4V��-#����'�Mu�2�b"�SL*;��dg1���p�Tj�tVG=e.�W�2^,R%���XtE��c��:�Lѭc��:�Lь7��5���
ӕ����p{��@�]�N�N�������w��e�@$���M-��.��e�v0o�J�����x8�O����kx`��,�� G@����m�'P�sd�)��63~�:e�����2��j�͚#b��~dk�hKo�]���Gm6Fܭ�_��h���x���x�y��2��#�S��)���ٴ�|>z������;�~�O�7T��XJ��������l"i���>?D��4ƍ��u����X�O�j{��R�'��x5]k{1����m�E�HI\��R�����i����L�7D���p�Uez�-Y�#E�UP�j&T�2�������hz�b]��u�~u�Q2B�������sw?�:�FU��=,��6t�Τ�W�s2� �^!2Gmɵ��0怊5�bu���5 ��ȸp�^D��4�x�.�x=���઱'ƚ	�؍�Tbm�D���L�v6{N�8�u� ��%x
L��4܇�!mј5k�c��z���F�C��R@�f,6?��:A�d��ϸCƅI��Ua�WY��k���s��h��i��j�N ��ɂ@���D��NX�MA�'��Hqݍ�ﺺ���%V��2�d3��޼�y0�mhW��W�эy ��It��� ]-���Y�u;��L@�.<]��ď�"%���<�ܕM��րY\�~��jZ)3�0)k��;�i}�jPF��Ɓqg:GG���ކ����(���d��y}�7��A����w��&�m��傛�	��:X��2Ϳ�����`Nǿ�rf��|�������+�=JN!��F�u��㧞��z��=m�@�?����t�C��Y�@�L����ο��秓q���,�o<����_'�|;�ƴ�2aQ�Y	�|��djnb?�&�@ӭ�q��O��vNoА��'C���k=�Ԙ�\]�E�p���N����y�l��&)��ۃfK𔀊�1�f�T�*hYg�&���iC���2k������{����s�N!5�>oL�+�Gx<�?v{�6��C3���?N�=Ζ=�-����S#)�(	澶s�[�1X5���8��q�`*�S�!��X z`r7���T���4�2���w�j[�.E���:��"��,s�=�+ϭ��k�j;h�4o~�;��{ʴ4��9b>z`H-�"`k:�4.��rCl�!v���`n�M���eݯjF7�uGD��^�m���cL�.�"`�pU������V��F�]'����V��Y� -ʶ@)h�Y��1Cnk���V����"`'{$��Jօ�=���+@di�&[C�|��!ѻE����"`L��Pc*נ�1�k0��M�D��$N0�$N0�
�oY�E��u\��1�+z,��
��XV[���!�*_9�5
r�ֶ%�8�o��@�l��oX`�����;��	/��8����	xĸ9V`�c8�V ٳ�gc)��Q�K�����;��tp�C��܀��;�[�X�NS��I^���(�V��.��p�F��&�������
���S ��n �گ~�"�|X�� ��Z^�������A��;\@�ɀ�Ǝ���襝MNH��(��w=���ps��50$��PL@�~�Gmj��2�3p��fB�c3��0���nL|7�z7&���1�SXs4�t#M���hR�H�DX�l)���,D*j%[Pg]D-�&��U�FW��I3
r�{���m��mᅅw��\kۉ�;�C��1M�I��2�z���1���	i S=��ԝ�t8w/��;�+�;%�e�e����Òm`)|ePP�h�AE�Tl*� U[�6��T�:�Jw�v;K^��©U+]Q�p���̍����w��ݐ �	�3���3��
(l���yX;�2�ڃ*�X��k��������@�,;Z���YX�� �uV�ڱVA0T�|���A0ʥ���*��x�"�P"VD�I.Jj��ܲ�Y�}�|43�k � CM[̈�yA{�]�a`��FQ�L@d��6� �5�iz��A@Ō�Ը������2�v.�{J�I�^FP�VBE�F�e��WW�J�P#(� "fX=(�ZDɭ��XwS�Q��~@��m����Q�aZ��?>t�"�\���ƻ�'�x�f7���,%-����D��	4��mͱ-�	�:���rUc��P�1��]�VT��f�%/]J����cLf�j<�2^{wW'�EP����`ě*=�V�&�!��_g��
�N��(�)
f��ʁ%�Q��������N�K�oP#�5�;�2�s��B�k,�n�H��~0���y�N<j'�f�F�4�%��u��^v	�DD�8ֈ�G������@��S�������ʺY�����jZ�+UY���M��7�/h(�E5Wa�Ķ$�L��:?}�����������������c{L��kX�����">'��"'m���qh,8�O�	�ъ�͈�t>�AY����2��d���'Se��Ҽ7��'�q?�J޸����|�<tG��a��\��q�H�z"|G�:(p6��&R��Pɑ-�~�3�˴�"%���F��.Dv�x�fָ0N~�0a9��X�����Q)��M ��t���@�U���B��,Pb��%�1!=J��gW5%��5ۓ��IV�If\k��<�#n����_���������z�>���}�����Q����n���+��V��md���/�2��d;�Ӱ
m�����d
?��K%�����ɬ-�� ��u`{䵠)�k}���*��+(���wm>�Bo��l��_B<�A�##����������쀑��ǃ��w��A�$���URY�{C��7�#�f#��Qǆ��K�����5�M�t��;��:�;�e���3���ۤU��p]����6	�q%��U>�"
^{WzN;����|0ՅϷw�v���m	c�o��!�M��Z�.�=����n���I���������'����Ѡ+5ٌlA��1?�&`#�废�F�AX�������J�K�~�A��ykx���WN��yMĘ2�K    �Fu��C�������j������?�N�����ɉ�yH=����b�N|�}z5Z�����~�k�u�1���k�B��q�M����U�V�F�}}���#�:�r�fp�R��Eړ��Zi�I�������`]Z��Il�L���פ��sY(�t
?)Q��R:�w��~WнSzM3����]�����36��PYW����gk���3h:��@R��&l�֓i-l\~%d4Fv�w�K��kA����vl�g�F��,��kw��8���S��6&)7�6g;9�H�r�ׇ'@Z#1M�<Z�����	�0�S�n�SY;�[pe�<���-��6C�m��>E�s�$Z�w�7��w�V�����b�L6�X�}%pH+g8tL�������CW�A
]B�ݝJ7v�R�b
} S�F��	��l�P��g����z
���Б�a�-�HZ8��6��U1K�u'��&��lJ�nn�M���j4���h��]�Ѥ��V�I�v�DCMh��&�<d'����z<8EP΃�\���TA9N����A9N�����yN����A9NpYʃ��<H}P̃��<H}�Jy������yp����Du��l��q���@M�����۬����$L�ҴvX��h�]��h�]��I���c>��4<:&������R���}SYe��*�TV٦��6�U����Me�!dU�$�G�Y-@G�j:&���Um� �*G�j:ܱ��y����P}���:({u%�e9!�|&��lPx�o���S�� �`Ū�6��m�M�K�~��C����E�HjP�p�a����wr>B�ֳ���'��mèa�~<ծ��T?�g�|��ͳ�ۿ�q��x�8s���ܱ�}n��`��`P������VZ�PX-'JkT�R<<�r���r�rɹ"{�Pȹ�x\_{��T�����k.�۷?����O�;��݇>�P�h68����J���?L��-�|�r��>Z1��x�����)b3y;�iH>ݑ�"Z�������u�΀�ί���(���o�2�-�	IW�6cD;�}|n�z�̎�����*������A�O�3ö#[)�'��+X�;R�kZ�"ܟL�0�����Z�����i�P�f>1[ģӺadn��f�v���w�K�!T$m�n��|v�����>�[��� Wx�tz)51r���WD<5E�����ȉ����W�_�2X9��nH��Î`NY��x��x�>�5�Jf </�ҒA��O�/\ԒS��C�^� oG��h�Ҽ��|G�%����x�;���{��>�
Ɇ��f珩��	��.'E]�`�˦$�d�uG5f�ŭS}z����r�3Ez��;���gz /�����Z��&�����_��b�p�����z=����q�)T�5�A�KP��1��+Eo��>����K�L7���o��=jSY7�U8k���)TxWA��_q; ����OTK4��ـ��w�kox|�@l��M'���X�I$d�~I���5Z�b@�G�`��:�Z�"��D M����;G��6��6�KE�#��Ç�a�ژ�Ns�u��c=��	��U�ӛaӥ!|8>ٵpp��~�\�[,#Sr��ycU�1L/-���vE*sN�@VX����ה�Q�5e��d�LK�j,�˞�sL��Ğd����O�A/ª�f<�0�	C� �P�J!���MQ�X\m��۾�d&Af�(�<�2��@(t#�)h�|W�����F���$�n��6Έ��
��uީZ*Ҫv���s> s�vѾ�̧�����z:	N�|�9�o��o��%�*��tXc�cJ��G�8w�d��q�h���|>���͸�a���ZK>�y�-�H"�~5�wɁ�3Aio>�i~!�~������6xhȼ<")V��ؼn�wǴ�2��zX�i��"|~:�J�C�wNs�K�k�ބ�L5�F� ��_]_=����=����2uIY�Fte7@�q�&��Օm��#�"�������Vؚ��L�-�\����1�c�o���T�5��3��?+528GX,��x��rd��4d�k��f+ŵ���.R��J.�`�z�8���?�m��x~��-``�>��=�r�1�U��[g��Ƅ}X�N��Z�&=�|�F2+~�|[����7��#0ؘ.Al�%|ȑ�#&�qT�(1��.��+�$s�r�37���B����� 4���ѱ�h ���k��F<n�@���l��+\S���i�C�H��� ]���t>
�t.�5���hS$u�'�ؓL�I�4�����l�R\���([U�'��gj�}���aq�3ܼ:gpN�0��I)8k�N�aW��7D���A��1��^aD�`j&�i;K���*=~��}�ӆ�����bO���t��峹y���p��֠�%���s¬�p,
}�d���G&0[��-��2����~�h�;a[ҍ���e�%�4*m0�:P�JAuM}�`���$� i��_�m���V��+b�+b	x�C�E4f�!3��u�T�2Y�ʃL�V�p	3��R��]h5�g��fe�zo@��+���|�:
O����'�	�xM�S<�3VV������V��+��+㉕���xje<��4������C�K��A�. ������%=�x5@�Í]s7�œ8@�<�۪<B>l��5�@:Px �@������������A�+@<����I��䄷�Ȇ�xl"8�hPħ��HA�ң �@�D�^F4��"@88bk��̓b4@@�U�N��}W�/��Mu.@�1|�te<�� d�Ad�W�mF3�:���H.�p撴G���L�|1��l`͕u�����{�0�;
�������Z�� ���W��<νM���Y�|d]�K��V��j�����&�Zf!֘D�,G_�S	���<�:n�r�q9�>(�b�9N�[p�,Fa�Iۍ�x�Th������ٕUW�(ns�$8p�֐S?B,�_��{,�A@v{�l�	7����HW��=^�X"��)�b?���)<�F�5)<�T���]Fdw����r��'��e~�f�L�)F(~�ʤ��W��)�^%(Q;��jTb8q7��t����ޯ��(�+s�q�&RA�����^��Ǉ��t�Eo�����N��?^>\?K��|s�>vux�"^��å�jSe�O=���VY:�w"�2 0/���%���pEb������D�"���bN�ō�6���m�m�Z��7�������+P�d,���X��9�+�����uPkpf4�(�3�$�ʪ����ts����OwO�6}�ˠ�����n������ 	~��P���>�Ii.hp�մ��8��՘.��s����S�:A���w^377e	�\JH�_'q�]8P��o�EŕT�I�
�`^nMp�X�Bq�;̩����3�@��7���S��3��������:�5�&��*P��Ȅ�L�<�d�n�?�%Ҫhb�˼U�nX^�h���H�*n*B�p��.���Κvo��`����ث��\:i�~����']�x�M�'g̾��BN�_��{:�kM���6?� ���; ��L��2��k�O���m5o}xtfv��p�p?u%�j���&6I�������\3ORVǄ7�&UK�P�+�6����ǵ�\J��]�V�8P|��^l΃�lySY2�~����Y��1��U��̶�}4z�l���=B�fT`F���ώҞV�G�e]���P�^�y�jSW(�]��䶝���u��ƣB���8o<j2�5�]����.FMƀ���d|k{m�GM^/�&/��Q���Ũ����<������0�(2"g7�b���"�;��]��l��t��׈5��wr�?��u�騧RP�	�܆I�6Lm��N�>�>���'������ʣ0w��5��]�5�i�ʿ	+��eHjD���Y��*7A�\n�Q�-P��S���Ҝ��l�
�9n���ݡh;A��fd7�ܪmQ��Y�7a��	��&�򛰪o��|V^}V��}    �o���7�M���&�Mt�&��cu�}���A8t��A�צ�kA�}�a�̍P]�o�K�/�F�X݂[=X�C��
��:�VW����m��	�З�K�ه=W�][�U��."�5<PS�����,t�hM��5�1���M[l*�bS��
�PA�k��~�#��^�xT?��R�Vp�Hs�ڄ�і2�ί ndɈ�Zl�1-�U˭��D�X�ծ-L��V��ŀ�5)�_7vWk9�{�5auU�]��|V��US�&�V���-]\��u��6��pT�;����W*��mo��×�7`�2���ߓ�^3��|��p�0�%6A�s+>��������q�[(�|�r��x�G>}>GQ~�OfK&���`t�M���ɬ*h�6Y#�:Y�m�T.^���4M�9�nT���AۍQ,)	[��>�)���I��\C����C���mEx�a�4S#�$ل��G&�$[{�l��n�u��E�>]�Ev�;r���k�3�5,�f�6gR&zt�)z}��W��xw��_���6�X�jd���`�
�XT.����X���JT�z�a<�
P�j"��`y;�h�S�~l.^�^��ٕ��f3۲��R!#�~<�n>`QA�Q"cEwX�&�l������$/?o.Vp�������8�˗t}+���Q�+S����������ݏ�7m/��z��wyIO� �-����0�APܦ���m/e�غ,�`�����2~���
S�lgFt�Ō�W�|���+;re�q�̝n� g/�.����G݂�X���ʆ�"���,V�����C`e#�XY3���g+�{0��P<���lr����A����zP��'($�	��o�bA���X�\& V��e��J��@bA2�X��?($����W�|�XbE�d�
$V�C+ٝ�% �{P�����8`��}�ʛ7`��Z�}Y��G��hs�����,�}�y�ך5�lZ�%�Ga.���U"gJ�M����g>�๛+W�����#�q����j)�7(��}�#�Օ�ء���_��D�\a|�F�{�ûڰj�Jf���+!U--"�V�dϗb�d�b�d��b�d�b�d/�b�dG�b�fTe�-����\�#��TZz���B�;@a1KBQt���8(p#ZfD��Q��n��>�k��psw<G*c��;��Ӟ�_ْ�ՠ��`�8���|��b��	Tf<�����LhM1�bI�Q!6%b]�Q!v&5��U4�m䄊��wVE4�x1y���� q*p�����W��cA�>@� ��X��5p��o�%�ϐX�J)�l}Vv�+0Tv�á���]�p(�w$B� �P(�WE ^e(���x��P�����!ݱ��]���G`e�<+��)ce�<+_�����!���+��X�u��ʮ{V޺����9+o�����+s��ʯ{��*�7�����c��=+���X�r�p�����=�"���l����ce�=�����:D`�+±�Y���y}���{8V^�ñ��8V��� ����c��=���L�8(�R�)ł��b���Y���-���e�;�����#���ATۣ�������p?�n���=�|��{��{!�B�^d�^��li�i�m�%������N�K��l��y�0�`[&�o�b�
2��Ҵ�ZT�@ŀ���ATb0�@1S*+(�0���~t���[�2��ט�/���
fII'Pm��F
((P�(P3��
�V�@1#U��Q��@Qo�'�(P�
���=j�*������+ю�=��o��_�=��'U���j �Y�X��+{�b+���߬���7+p��ǡc�=p����*��P,Ue=�����������������p��G`AJ@���Up�|L����3�[6�ū�XhXE1E�[�z|���M��8V^4�Xyрc�C��Xy'4+�%�������X�-���lG`e�=ˮ�L�3([+��*���P�U��.z8Tv�K0TvɃ�X��E���A�p�|!+���X�kv8V�j�Xy#��7���>�����^7���g�=*o߀�0Ɏ��y	+�ce�-j���d��X�U�ʯz8V޾�pu޾�c��8V���2뾽��[`p0�&X�&�XL�	��I��X��@,���ǲ�?��>_.U}%,�"_+_��/���W�Ce�=p������%6'dV�áh�xb��ڞG?�-r.��ga��d�N����x�h%�%'WcF~�����5�^TCn��j���+�5A��hR�4n6�X�B8�`�*�$-se��TVeZ���0l��W�wk��i�Ą*�n?��$ˤ¡R��b{
�=�ڞ�ٜ�\�oM��wRF�j�^F����^������^�����q��`G�ߢz|��ԘNE�KӨM�mԚ��h*@˔ennL�����@��u`�:0�͍ZS����e|0r.���Ku5U�(��C��-@���VV=?=�^l5��.O�O����w���w��=(��oZo*� �[��-@�@M����dPwLR� ʎ2��e�� ����'b!�H���(�N���L�V~@���vT7J���:�[^�H{��ޜ���u��C䙎�D�GF�$36�2�ã���Ç�������k�`]b3��������wc�wc�1�ݘ�nL�I?RDe�.��"�Q��D1^OpQH�W�TxMQL�W�Tx]�e!^YS�E)U���TxmQL���+W^[S�E1^[S�fXԻ���������ӇZ��r����M���ՠD�Y���փ��A��A����zP�kS���V>���o[�0I�݊��L�r�N�D5w�q��M=����4=t�nt���w�uz߬c�s
t�C�牛�*��]�њi�~Z��� ̂�9�p�U�[,�jrXm*��CmpE6�116G�1���8�{O"� Q{��=Z�(�	�W�ޙ�zM٨��K��/��
N��T��R�z�U 6C��!�͐��&�^�$�^���A�� �{��{�챉7{l�M�I��צ��TDUWUܘ^s�4	�r��������=��z2� 'a��C�D�b �1��d]�bl�]0y��b{
y����7S�	W�G�� �d
��R z�C�py�����&pl�Ŧ�/B8��b�9F��H�UC�����2S&R�2��K$��6콘�nLY��oj��2dJvc��1�6?+�O�T�`%��#���l�Tb?*��+7=�EU�<rM�`jd��[bq1����31ٜ�n��6g��3ԛ3�&�ž�*0�J� �����C[�\�^������yf~�A�n�x���8k�b��nLd7&��0-�8ߏ�ޏJ�G%��r	��vj�7[3�����u6Ir��Q�*(l�VF�'m-�S׻1	�"���~Tۤ\��{���Al�p2l�o2l�n2l�m2l�l2l�k2l�j2l�i2l.�bs���˴�\���2-7�i����k���ލI��$wcR�15{1�j7&��0-2�ۏ
�%�Q���2*��XF�R˨P�bJU,�j�+^%��U��lıhKٴa��拡����p�7_[S��)��)�m|:W~�v����A�����<��Q�nE��[�|L~����sA�QжP�j��ۃ�m.�)26RRƷ)YL
(A�A+(/��Xb֘���nLr7&�XB�����ҹ$��	�&,pN��2�щ�ۋ��G�sH��A��m���x�#�]�֐ۖ@lM �Mi�NY0�)=?챆ȏ<� H���""@9��<J1�U0�@�)ۓ��IV_1)��S�o�ǧ��.H3�lZB�M;��G�b�C���[coN���h6�`UQ����{�^L��� I��A9���`�0L�	�0T֘c��Ȉ.a@K�a�fhI3�ٌ��������ρ�]���w1k���$r�L�<Q���@��)� ���s��"U4*P�(j�%� ��Ak�    DQ(P�Pz�J�h�z��(��C�B��"���[�p���S� j�T��.*oB�@+ER�k�2kK��ۜ��	�2�o6o���Љc�S��)P�W�� |UB Q��K(����&�jk
T���.\�U*�jp<�28�.�;�0ԛ3����
��n�{��q�.��Q1�.�s�#��T=*�jnW\������E��b{
��^��nc/a���n[/a �3����\�0�ĺ.��lpb]D��"
�XQ�予����kUZ�C�Y��G+��N�,�Y��|/b@��E���"ԡ��A`W/�%���nLhs��	��| �ʕ�WԆb�f+O�,���YY%8��߷S�Μbe�8JP*����1WĀΔ��g�)Ū��i�3e���<�� ��Rܾ_�m(n�/a`�S�Ш1�9�������|s�����bI�j���^6
��(PJ$�9�]e�=/#�}�˄m��PI�x$��6�W�(T&eNp�y�2�)b@�"�����H��^�6�PӖq��IZxP��PUҜ3�R Ex{��:�(�
�=�>R X�,X�u�(b@��pg�����(Y'$G�z*����.��[�3C���/0�j���0�\6�p�,Љ�{"<�z�ꥴ�3��������	�
���k���D�ĥ*p�^D��v�#j4a5���=dB��T��@��
�/QP2����bJ��o��L��`�oD��%�~�����_z��	������C��)w�R]��@�v�������O�mןPl����<���l��r
�u�%j�ZnM����W�Þ]/o�n������4���<Z�?*̣N��X/�'�y�����A�ؓ���f���h���I��M�ѣ&�����r~<=^�x�tx8=N�����Sй�0P�������>�{��Fʲvh������X�l~�45�L=�e%�iWuk3]Ͷ]�����#�(�<3U�����0l�L�cAӨ����Y>?���َ/w7�e=�K�+{��'S��?���<� ���\�m�����*R�r#�^�|������B�	�L�n����V�\�z�S�@�`�;V|���_z4�Óp.mB��a��b�r9�b����_=��).��y���h�!���$7wǳ����?�n��/?j��dFv{��~s>}8>����ׯ^�y��v5o~>]��ެB�G�w��68��6�-��r9���nW���C�~�oݏ�y�+b�����L����C�*aJց	���|Gb���hs?��l�v��s���������h5Tq@�@��K��yKȜEh
NF>G�;���0�2��1;���j��㧓�UZ��?���C�BF{������T����aW֯�w��s�v�ǧ��������t~:>���U�u_U�R ���4���=>�s�w{<�-�cL ������R��<�������πK����%d_��8��(D/�X�&���S��{ �\&u��=`�2�)e���;H
��y�)���E�3��k2��~��=�����,wyX�VW���uѳi!�?q=��Z�CRR�~(s3T�r���K�
����,`��,w�S6]��lO�����h6��ǳ��{2'O����f܋�}��Ϟ���ͳ�������Gj��#g4��O=��6��roۑ�Α�v��gY���M�[��jl������2�ӐΙxA^=�]�&����N3��xعg<�,!h�i�*" p�f�y��c�J?��f�'iߓ�2F�u���3�|9�h�V(���B.d�+��YF�;�.$�w!*��f¼�i�2���.�"J����M���FH�68��7���������j��@j)�{d��ۻ��vDU�gӏP:��].ϸ��R���tm@l^�FW�haK�f��
�n�tj�r�re�q�U��d���(`����xz�!PlH���6�Ft.G<�sKy�20y�f�re��D?�|�&�[���L�Dd5��c���E�l����5����9/�M{*Y���S�>!q}<qFs���8�FM2���W<��H��beT����w������~��I5��g=���M6�Nt�j����TT��IvT�b�j�H̚���Yʤ-Ӥ��D�m�ʯ�I�B0��~���|��.��E)q�S�5d�;|8�&pb�k�+KL�Fz<~~��G6rM0�5m/Rp�(���ߡ�/Pm>�mm�{=,pۥq�sRC�&T�.���4xГ齹fW"��{�E|>����������E�L*�0�O��wR�1B"��3�ݘ��3Ю�������.����?܇�������&���ۄ�4�Q����v��]7B���h�`��Lo�;�Q���	abozߙ��|���߶��з16��cv u�c�X~Hz�N[�n^>��4�X]�A���D��^;uP����AT�1��8( vv4��(b�wu�,|h�
rY�/49�ߊ��Y0�0�Q/\C����x�/�4I{���5#�C\�5#7�6@5G��j&v6��nΡVD03|W����G5e`q8C����FxMT7y�}���wo�?{8O���yϖ<�Ҥ?U>q!A>Dq!A>nq��R���J1�G���Z�֜�>�;|�_�ד�n�����<8��_�$��Y���܀E���L@�s/�������M�&I&ģ-��Ʋ��� ȏ�����f	5�����n|~0I0o����*�_����?�=����!�!�G�N��xa��	�h�ܵ�_�q��/���q����*t��YI����l��{@�=����m᪷�����-B��¹V���s���T�.�K����Wב2{9en��,��'/���'��b�OF�$�WfUԩ=����N�.�!/Ol�Ȩ��.oQ/�ک��L���-��"���|�Ŕ=V�j�f�yK�u�<Q������L/���nOX�X�6Ƿr\���D�>l5���2��ص�Y��1�f�=^1�r�y���̏���F���Q��ˈ$�8�o�r:sL!]
��N<�Zٽ{yeb2��m�����K;��[���O�>E�?�}�3��]��(1+4�m:2G��
�c
Pe�'��(�h��"p�`�u�u���ϧp��?r���_{4��b�`�	(�Rl��+[9���|.�Zq�����7�G�rS@��D��O��胙��mDVy𱧿�p�����(E�$;�P��5��6�}*����F�#�&-���F&ٰ�秇��Ǔ�sW��GCyV}n�;����OQ^��F3�=͡��+k����w��@�'fA�'�燠�3m���0���-��r��!�4p����^<<������cn���q����6�2�ol9��8X=�Y�@�4�[�rK�辬�7a�U�K������L��(v�x������^�Qs�1�`3�~H�4b��y�!6hHt�6h�/o����>�ѵ��v��� ?���-tmB%g�M s���wO�&�P��8�s���GmP6#�Œ��)��QH?}��="�����[���ĶyRc爫fx���������g�����|��/���6eDե{���ϧ/��߾�a˲�|�X�a��`n<�+U�͟���������[RC(�ll��ެ�_��)�6�(-�i����������b{{�=������xs�tyh�Bb������c1zD;�_r������xg=�vH�E��G�,B�ѝ N��i���^!�S`	B��x,��VH�\5U����/��_�����/���,]]��+X]y�h�z*�*Y2,f���,dj�SjoRc\���no��_%%��q�`�f��Ց���A����ӝY����!�'f[�wf�W[Y��t��'�!4�5�v�	�筿��2���7Qj\B�=��\BKNpl?6�'[c�h�RyY�_��3�ܵ��F�m&!���fњv���̓6�D{7��ҠUp��E������:��S.�K��Kq�B�����>���   �?K�m@*���f���r���^s@�Ը��js�84 ������H��n�ȸ�fW�U����[5��;���]"��.����Y��b�Z��Z.&�����|I������{b�?<�7C��G�F����#o����o��o��9�o��H�a{����}vRƋ��=LGXWV���.���Dgߒ"g2��2�͊�fh�늘	!v5��7nM��ȂW��{�a�rG�`˻�����p�_��{�����m̄�}l����2��� qzFe��Y� eo<h��h��A��&p��aɨX��������9���%�׭��S7.X�������I�ŮL��v\�K����B{���,�c��aV��l�-���!~�_�TSU2��L��U�wث�Q!�fEo5��B��(���&̞��cI;���L��բ�{�d�;#ٝ����vg�3Z���i�%C�y�����5"�&D[����݃FU��G��<*DO�Q!� �
�w<jm��t24(1�_-��(���H���,j����U�>�o�&�z`ueH��m�{]�؈�)��UM�B�����š�Ek�$��֧#sKٚr�kʆ��ǮLFM���| �1�悝h��۠!��P�o5�X��o{7=\6b�����y#u�%S�g<w�?�<��V�6�p|����JV�[u��E�ۥ�?�88?��s��Q�)�׽����.X�a�M�+`��P1zQ�+j��C�{<~��M~8���E�H=ȡC	^��w���μa����mF\��l�0 Ӵ����f'���n��+�v���g���)rnDe* �nL��뉇r�-���&A��`��C�؛�v���eZ���@ӏ���;�/��آ���9��.lv�9�MG��f��Dgo�����n��,���1�;\ڍa�����$Ćwl�>�օ	�G-r�MI������r5��Ղ.1

6�"�mu�\�̥t0���09,�h�6ǩ��]fHE��F)l1Bˊ���K�	���Ӱ��JZ���6���qB�$_ܵۥ"���T[��]u'�[�ៜ:7�sg:2���Ǜ�՗k�Ր&���˧�C������݋���j�fڃ݆-AL�f�Ϧg���ў�b���pgw���E����H�A���B3�5�p-6��3j[µ������=���qK��"d|�zX���Vm
@A��mX�,-���:�e��T̞Fv���n�]&=l16����O6];Tw�Ü�8�) 1w�}���#�eMnI� X�:$S�d�:�!Y�!*��+L1n8J��V�O��]�(j�}���iu�8j-V�Y��l5�Mɢ���RC�E�,��Q:�ɐ��E���Į���8-( �6u��pU5y��'�o���4!Ȏ\tG.�#ߑ�ޑK��%w�R����+k/���RJ��࿘��OI��D����M��DU�_ȅ*ÿ�K�m�A��܆vD�Z˺���A)�͑)'B�N�hT�	*���F9�Ш ���B��>h�;OsE����ø�]�x����������y��q���'�{���M�٦�|S�zStaK�w��{�޻���-|?󀇗6ڮ,\��t��E��ރ���Xn�O7��aHib�G~��f3lYU��pW�.���)+���㈳��4��i5p6��jw��$M@�l|W�zW6�+�ܕM��ִbZ��.��Tk�e7��\}=ҀL.I��lL�f�N�bvyMN����D��(wgT�V�=��$�+� M�_��Y1����o?���>�QA�~{�?)�>(��nʶ �[��[�9��Y��?����:TJ�����D�a_%N�z�&�.4�ZK�������#߄�|7���}Vn놥X���s���sw��w���w4+ ;���L��Q��b}f"��g�ִ�8�慊1�[��s�a������,���=z���B,`-��X�R�e�$Nk)���p��Y��D(��K��;���/�������ʷ�
���R�l^W�਄�6�՘�Y�h̚Ώ�.~��M6�^0߳�߄�n�٫8�8U�6�`���.�h@��������%k�7���s����fs�����F%���MPY5zFL��-@����`�MP]S[Pi�{F)��U�C�Z��~�p#�s_o;=w<?����ٍ�փ�+��b2�|�^4�G�@!�0���sQ���Ꚁ�Qp��@#�G9�B� ��CL�#�t�vI�������o2D�41 =ê�P��)�4~>�FPlۏP��1'�Պ�lJ,օa�=]5J�� ��TE��i0~�J����ͧj+C�K�f�ٚ�^�)[§�!*�̆ʈO�B2TIE(�R0����]��ҠU�Y�Dm�5fp�.��r���ᷚ��e�pRlb��	P
eu�\��D�GjZU��ɬ<�Ȫ
���p�CJ��P�<8��s��[�Me��ޛh4��K��z��#�AܺV3w�c�ж�HyUmu3�����(RfU�ڠ��j�F�YEP����'AmPÆY��O#���Rt�F�>EܞQ��j�b"8+STX�DD�r'5V��o���)������Ӈݥ(��d:�V������0�S�?!.X�D��S�!V�i�ZX	�(A��0�(n�j]`u�l���n	_���~.��Pފ`X��P�����.C�R�a��d�?��`�<GM�ʐ���Q�p���K��N����(T�5vr�	xx�cXI�(φ�@zu�
C��d�ǈj�1a�Z5�g:��܀��p>�!V����/�
���n�gj�&l�g����<����qм�6�w]lA>~���'ԬF�ϦY�J˲�Pf�b���g�Ug.G�ŝL/8v74A��C���w=����c�ۍ��%p��p��@9Fv��$�)��{�2�9M�l������_�r����2$��$�x�#%�[I�:k�I�|I�~,X˄@w�=1H�#�ڑ��������r%R��8:�H�{(�m��c�a/���ǎ?��m�m&2�*��I�"���|StS:]uS3�S�����4;r5���i�����H�5ڛ�#�U<V�U�n�{�"�u�^�M�2���`(��w�Wؒ�J��ݮ��6����� A�+G���5SO��>�}����|*e��k��MD��m�2�v�{`�� Dk�4:�p���x8�O��F���o 	��u���&o\�wE�	�Aq�k̤�]ٌF�g�+��&������a�c��6Eo6DoL�Ɔ�dSt�):��o�^o�.6E�RV�jKYm�Me�l*�dSY%��*�TVɦ�j�FL�A� �ښ�f��A^�����>���,��Yh&�\P�!�Fy�#Ap��7�PTG�����:�u�Yo��t_:��!N�jL��>ݸ�zfJ��L���J�p*�y�Q6���۩|jg>\N��\"o��N^̆jsd[��@Z��Vy���/��������	@:ٶh�����Cֶj���5���9�6Ĵ�����|���A*�F:@��0�����o��� w��      
      x�]�M�@F��)�6Q��v2CR�A���?�P[����=P���$�h*�d���@S0{5~tb�;QB�2���j�|������B�����Z�6Ms/��E����9��K)} l�7�      %
      x�34�tL����L�\1z\\\ :"      
   �  x��XMo�H=S��1gJ`7���Iư=;��\�c�K�����m{X�m��c��-)l�m�Y�U���kҀ���(7in�i�����&!�M�%�u�W�>vAV6�"�B��#v�8$Dr�~I��qN#�i����\��x�_L���e�X�,kX^~I�7�(Y{g����vB��#�ZEJ`�eT��3�~�[[�Uf�@V} z�Y�u^��/'��.�l�v��y�b�q���c.䑃O�30�nү�"�.���j��sR��[\�lNY��w�I2�Pd���θ��/��~�LO�i�Yr['_,	��.�P�D͵
�{�����<��2/��뤲!���]hTQD���#Î\ʙb��a�d��B��R����\�0`�eZ�ˌ�{�e�����[���r?��,6��#R��g�%�����{jBSs���:��k�������??��(���tk�*�m�T�̙9�z��JGX��Ԩ��l�!�p��^��:��iҰ@b�C�h����I+����S(��v_٪��� swe�T&�b�j�<j�����o�m�.Ѩޏd��S?jFy@�K��~]�9�7�2ը�l��!�a�6�D��yن�,+������2��0��[�&$�%%�m�p����Զ��̨(e�|]?�ϵ<lNnl�.��׶�+��+<'~�߹c��k���r�r���U��ڈ���m�fT!2�xw�~������`���D�2�͒�����}��ö���!i�"2G�!w�[W6�'hW=���_�K�m_�1cB�)݊ց	�q�{UW��,[��s�:�(�4��Yq@�'6x[�ʷ�P�>hQ��ԈQ?��(}��4���f3�N Jip�<��m��2;[)Pd��	��?��Ŀ�Snh��Q�QNd�3��wŮz�a�%����Y,�	�̙���y�A�s����,YV	*r�/�˾VFG��4:ѧ�3p6w�뤬�������>�,�;�vxoGv��ͥ5��F.7�g��ٮ]�1�K74ca�K�W����?��o�������3f@0\�p�蓍h���Xpeb����g�|ԧ��%{���̗	2t7$���b�Na@gsH���}B�v�zd�M�1�@w6�3�`Tɚ��S�!#ܱ�p�}�#DY^���`�N&\�+������=<�Y(oӁsUև1�}͡�\�6ңꂞ�V��hx��p��5��l[��Z�o�N"�?������_�k�X��:Ԙ� ԝ��a$���f��1�6���w��IG �O�
CY~�=�q�����7��v���nNA�fPH�a���iV��T��03q�
�Gȍ=�6����:��;��!�=J�8�:�L	��DC>4cʜ!=��x9�k�sZ������l���YUL��3'u���;�LZ�E}�s�>�\�[�(�l�E��/���+@n��<m�:N� Q�1�0	DL� )@�����;��X56�y� ��=f�8PcU�t��0� �#ι_ �ѱb���$�M���p�M�d��O����#��uzW���S���`Yp�9��U��Ƈ�.�x�+@+�qzGV�/����U�M�f�}�n>���#��[hK}��	�1j�N�� �~��'�yxN���?���F�J�\VE�NvA��昢FLI�4H`�� �:}����ck>
�Pwe���"���!W�$��M��'���!PD:ҧ~�e��py�w.��0���;�x�(2T�љc��1K`[��#­a�H�g��μ�_台��7)����%7�����K�	�F��i��nM+r|��V3��pb{���e㨮ב&f戓[�MG����[�&נ���ԑ�ZS��c�<��cڋ�p�󭅪��:��e
�,�z���Vσ)�v�+h���s���~G'e݅�ePGBN�E���GR�(��d\mp�I	(�"��gel����x�����qs����Ǉ�<>�	��~��-\\.�� j�PAOv}8�
-��t�� ���̫�Q^��pH>�n�6�v�Os��$_g��KK���T*i��k�s�v� �:��i�)T���g����So}�	���,T�M�hl�3�#��c�b��4���2j��Iv<��+��e��tD*��S�+��g�v'_Y�o�-^���(c	���'�� ��K?=�dХ��b6�����      
      x������ � �      
      x������ � �      
   C   x�3�tN�M��WHIU(H,.���I,�4�2�J-H,JL���ɥ%f%�����܂|N#�=... �j      
   Z   x�3��L�V-����,�2��JM���8�s3��RK!朎�%���e�9N������bߒ�7�$?939��� j
����� �# v      
      x�3�H,*�L.�I,���,����� U�9      
   �  x��YKs�6>��Ǥ*�|�HK����LY�T���M��>\��79��SN����m��A�����H�@�_�C�˼�Y���*�5/y�
+��>���Zi�kQ�l9Q�����g��̷l+�~�x�5��II�՞�W�;���'{v��o�GP8���S�H"m�y#���W%����G^�=��mN?p`�$c��h���e^7k򯌼�KVf9<i�I_QmAd8��ge�	���#��w������� ի/<k�;��RZ��U-j�S�g��mJ!�����`�@�S׺�V5l��F�/SL���M/E\���ݘ��?T����@�sZ@,O�PR�К9�(]O�m�C��sL���4Bz���>+@���S"�����O�FM���<;8i'���G����;%#hS�2ج��������Tϼ?��+G���vzG1މJ�Ua��Q}��D6l��+R��t�d}���X��+<��5��Z^7*��`fd�C^H�N�煚�}?���Q�uS~��T� ��#�ӭ k3��	�?B�C��O�=#��B���^2;�
p��V��\C«�Il�Y���(k��E���>=c�������u���3��c���g�a���[�Y�����fU%�B�_��ӧ�P
Jh���J^�7R6-�$c+=c���(%��մ����&�8��ϴ,jIN�����0p�QB��L�֘��Im-�w5��mĹV5u� T�]彦]�RV���b�RJ��8c�lлW�̰�����]��ȳ!}=����M�z������7),\��M��vpiv�0�:�La�J�#�I�+�$LLɗ��#����#x��tYt	^����?��R�[WP;+���F��;e��Iu=z"V@8
a���HS9�Ԏb����fSǵ#�`G��A�g��1#oB~�K�ԝ�2�v�k��`��2�~�����R����c{(EVM1O�X������AT��1�}�@��-���Jֵcߐ���y�Sxy`�� ��|��,���t�L�6?���V���<u���7#�(b��$�TT��M��t�N��ҷC����E��Nhw�e�/&�aϒ$����H��mOO5j����2)$�n�<sͺ�HVs�$�����;��$>�����,Z+S��,@�2��t��u`�t����, U���;���0+;��>���7��(L�Np�L�`S���p��Y��d�
����gޮ;5B3r��;ѡ��viH�������9����[�s�M��a^�ϒ%x�k��X:�C\..p�%f-C���#���J�_!��x��w$�u��&�+������5�Y������)�kNQ�D໶Bt
�&�O�a�M�lr�Ѵ��X�ۖ^��֓�~�rˎ�"s^�P�t�f)ȝ��{�#��_�bc�`Cٲi�F��ݤ�W�7*������_bae1u=��f0ވ.�e`������]h���. |}'����&���	��!�@�HI��7�.rV�aR7��&���=)�i4�\/	`#���z�&}ˁM��g��W�*������8����A�aM����f{y���;-���|WI:�v�ޚ��nj�I��Y7��U��U��=�Ϋ�y��38�r͎��ۼ��2�~�)����|&߽�~{󽊂+������X�*O�\OC1�{/�����=��{�KY�S��9v�1Ҵ��X&D2��k�	���*�8�dS��0L5��/$��r�%��7kl;i���,����'��������\x�(����_�eip�_C,c���^Ⓙ�nY�g2��gfa�^�jr��~eE���\���6p}v������ +���m&KS9&�3�g���`zLe6��`V�ph�XY�"�̌�D#dΨ�
|C�bb5�|-k ���z�CXDç�H#C�y'�ʑձВ��4���SC��̩]{�����G�\��*�q�Bw��/A��>��s�������˾���I��$p�&,.�g4-�	�r���,��s��s�1g644��/�d�xRO:;�~q�/�����6�\Dɇ^)�.ͩx3A#o�6?=�{s��I����'���� 
���g��s�Ѝ�x��M���G۶�j�``      #
   J   x��1�0 ��<�
q��������|C�ؒ�`�IȑeS#)���e�m]Wo�PWl�ӃH�P�> �[\�       
   �  x��[Ko�>ӿB�EhtU��H��d=(�(��I�\6�9�������h6��.l��͏5Uߣ����`�f�[P�l(�%��o�"\|���/�,�]��_�� �؂��ǧOO��.6ۋ�~�m���������%~��Ww6&,���>|޿<|��V�n��x�-ئ�/h� 2���X�����ܭ��H�����
�/ �
Vֿ.\������~��(���f-�l_,#��D����(H�B4����d���na�\R�vI��h�5�n��&���Ҩ�>�lX�~s��k����&E�hv��W��qB,t
V��i~G�W�|�	^B�����S���a勤��sz��.��H� o�u�p�&!�a�b�'Y-����mZ�嗻���H���/?V\ߵ��6���rm'� X߬�`�|���Ő��Uu)� �X�,¹���z>�)�%�8�\@FAE���d!��Q�����F��`e�Jas�k+��{U�B�Xn����m�&y+�lr�ۼ#��KW�K����U�j��|�0$���~��3��D`�&F�<q#��]��+뫗Xat���ք��p�x���kCG:�p\��,x�%�)����W��D�4`]��ԕu�0E>�.�������{Y���Kk����>����t��M���v��R�]�tK�>�RW��m,H�G������T��+��Ч�]�����Ii��k:l V�D�0:	6������� ��U�
$����;�ѷ`n�
�&��̭x����'J ,���n%�d�)?{�k�Ow>NS���!s�8	3�fR�'r�sA�Rr���b��u��yv����(΄���E�'�����`�W�NOa%b��W��%�E�P��Ȁ����Ő�η/�*��yL[ul[%���4��Ϣ'���ʘ7E���I��Gh(���7{z��-���\�ߋm���P��z����XM�ˆ�5I|\5Mm3z[;G]��^�{�\�5smB&d��Cŵ�[pm��5��e,��e��KZ��9(��� �26d�<�q\l!�v1y{��\i.�t�·쇂�E��=���X�%9?��K_}}�ϨS���6����&c�R۷�����߾�Ѫ���f��Iɨ�����yM:	�F=>m�,&Zs�_��C��q���w��9#���\�}S=RPVSZ�K}�(-G�:8N�yJˍa��a0��a u�]_ ���̐��>\��/ׅC)s�Q"�^�Yfyvm�����Dz-z/��m��"G�`�Q?��|�֍����}���ct��}�>m�Y����=��yޯ�+��nb�MC�TL����o�Fb�48���Ĕ6�O=j���/j��/����x��z�u�v��7�a4�5��5's�������Br ���H6���4�n~s2�$w8�D۸1�w�%c�)#���H��_nD��t{^��7L|�q�:��f�r��:С)�ϻW�s���5ov�WO�[�����8X������Fj �
�"�@���/(c��8�́�U�w��,�[��{}����^���JK	"~��g��ql
���8�e<^�[����AkM�x�އ��XNr��1D����#K-�l7ż�d���h`5t� 客ٴ�T�`��-�������n5������#3ܗ�?��[�Jj6��ӾZ��[�k#ƹ����jp������aBt�,J�(5܀_,y���xړ�K=?H��ڳ��&p)f�{�ŏ�%��Il�7P��5�a��\�*Fo;ը�z?�G_j�n�44�'*T�3�RJ�ٚ�oUI�
x���=��|�Z윝3���p�S*j]�%O�^���eʋ�����k�f�b^���`��`�^�t�;�������2���kV�zhdʑ��)��
�uJ�z�=BC�˃5\�QT��a=M@y�4j��-L�C~�Vĕ��`+��UqJޞ"�v��̏FY�n�^E����&�t��4�D��J�K�����Z�9pm^Cw 1ߣ�3����l���[���s���N�(iC�9:�i� hz�`��S�ڕ�~�{��?��Ƌ�C��.=����G�!S�hI��n��}�m�ykr�z)����_Z�!��c}*���y�L+��D�>hߒ��bu�\�H��%^�u-���p[�JE�=U!ڷU��M�B�,��	;x�u��t�p|0���xx5
����]fΕ�#��9�t�&f�Q{��XU1`���(>8L�����Ɔ�Ư7�\XX�o���5S�9��;��Q+�Rv��ֶ\�9ؐ��:�ӉX�p�����\&��}{BE\�-�d�T�R��Ao(�a��ޫ5��)�M����m���j�Q�m�_f]6�J"w�� 2�#�ln���9�K"3d�ػ1&:=�Y�H��u�4�3xpSCl�k���w�5ɼ�"N��6N�8��Z���Ŧ���t#>��H2�JoZ��U��jNd8i3E��rcH���$]�#8�RTX�AkT8�lRVa�Gw^UXF����vl+6�[A�;{��.O�ݝ�<�%�r�?��u��M\�uuue�aW���S��ߐ�`͵���)�XP��z]PY�u�m�} ׊2�X��'�6��{A�, ��\�)şA^)�dʲ�)�������K�\/��C׸�e��x��OZZ]���9W����^�V;#��.��V�z7haMs�WV�H 0d�;c77L���J6c�Mx��۳N��)3z��改��Usn�g8�~�墟�_��zo,��Z|��iϯjŴ)3-�!�؃0k�e7�Z͸Ҽ��]Vব��$�*[D�GKpdJg��Pɗ��W�p���5K�� !�an �$f��]��f
^[�Z�w�2_�����L�����N,F:5��Wc�Z���������"E���RH�]]��U�1�rhg^0���p�[ G�wS�\HHxl����ҝ>��/�!Ą�R^ѵ��BΧ�֌����xY��]���4�k"<��m�V��K��+�]&�4K7�8uE3����[�:�=�Ns�f�u�M2�7'u�::��_M8Hg0����� 6�� ��tt�\�۔�\���9q,���#3�5��.t��eA�>]����f��^���)���/��7��h�O��IG=��|�0cz)�TYai�]����Ç�8���     