PGDMP     +    8                u            IDPP    9.5.7    9.6.3    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    36431    IDPP    DATABASE     x   CREATE DATABASE "IDPP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "IDPP";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7            �	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    7                        3079    12361    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    36432    asignacion_vehiculo    TABLE       CREATE TABLE asignacion_vehiculo (
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
       public         postgres    false    7            �            1259    36438 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.asignacion_vehiculo_cod_asignacion_vehiculo_seq;
       public       postgres    false    181    7            �	           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNED BY asignacion_vehiculo.cod_asignacion_vehiculo;
            public       postgres    false    182            �            1259    36440    asignacion_vehiculo_piloto    TABLE     �  CREATE TABLE asignacion_vehiculo_piloto (
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
       public         postgres    false    7            �            1259    36443 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq;
       public       postgres    false    7    183            �	           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNED BY asignacion_vehiculo_piloto.cod_asignacion_vehiculo_piloto;
            public       postgres    false    184            �            1259    36445    color    TABLE     �   CREATE TABLE color (
    cod_color integer NOT NULL,
    nombre_color character varying(100),
    orden integer,
    activo boolean
);
    DROP TABLE public.color;
       public         postgres    false    7            �            1259    36448    color_cod_color_seq    SEQUENCE     u   CREATE SEQUENCE color_cod_color_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.color_cod_color_seq;
       public       postgres    false    7    185            �	           0    0    color_cod_color_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE color_cod_color_seq OWNED BY color.cod_color;
            public       postgres    false    186            �            1259    36450    combustible_comision    TABLE     7  CREATE TABLE combustible_comision (
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
       public         postgres    false    7            �            1259    36456 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE     �   CREATE SEQUENCE combustible_comision_cod_combustible_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.combustible_comision_cod_combustible_comision_seq;
       public       postgres    false    7    187            �	           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE combustible_comision_cod_combustible_comision_seq OWNED BY combustible_comision.cod_combustible_comision;
            public       postgres    false    188            �            1259    36458    combustible_cupon    TABLE       CREATE TABLE combustible_cupon (
    cod_combustible_cupon integer NOT NULL,
    cod_combustible_comision integer,
    cod_cupon_denominancion integer,
    cantidad_cupones integer,
    numero_cupon_inicial bigint,
    numero_cupon_final bigint,
    suma_total numeric
);
 %   DROP TABLE public.combustible_cupon;
       public         postgres    false    7            �            1259    36464 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE     �   CREATE SEQUENCE combustible_cupon_cod_combustible_cupon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.combustible_cupon_cod_combustible_cupon_seq;
       public       postgres    false    189    7            �	           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE combustible_cupon_cod_combustible_cupon_seq OWNED BY combustible_cupon.cod_combustible_cupon;
            public       postgres    false    190            �            1259    36466    concurso_mantenimientos    TABLE     <  CREATE TABLE concurso_mantenimientos (
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
       public         postgres    false    7            �            1259    36469 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE     �   CREATE SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.concurso_mantenimientos_cod_concurso_mantenimiento_seq;
       public       postgres    false    7    191            �	           0    0 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE concurso_mantenimientos_cod_concurso_mantenimiento_seq OWNED BY concurso_mantenimientos.cod_concurso_mantenimiento;
            public       postgres    false    192            �            1259    36471    cupon_denominacion    TABLE     �   CREATE TABLE cupon_denominacion (
    cod_cupon_denominacion integer NOT NULL,
    descripcion character varying(100),
    denominacion numeric
);
 &   DROP TABLE public.cupon_denominacion;
       public         postgres    false    7            �            1259    36477 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE     �   CREATE SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.cupon_denominacion_cod_cupon_denominacion_seq;
       public       postgres    false    193    7            �	           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq OWNED BY cupon_denominacion.cod_cupon_denominacion;
            public       postgres    false    194            �            1259    36479    departamento    TABLE     �   CREATE TABLE departamento (
    cod_departamento integer NOT NULL,
    cod_region integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
     DROP TABLE public.departamento;
       public         postgres    false    7            �            1259    36482 !   departamento_cod_departamento_seq    SEQUENCE     �   CREATE SEQUENCE departamento_cod_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.departamento_cod_departamento_seq;
       public       postgres    false    7    195            �	           0    0 !   departamento_cod_departamento_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE departamento_cod_departamento_seq OWNED BY departamento.cod_departamento;
            public       postgres    false    196            �            1259    36484    dependencia_institucion    TABLE     �  CREATE TABLE dependencia_institucion (
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
       public         postgres    false    7            �            1259    36487 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE     �   CREATE SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.dependencia_institucion_cod_dependencia_institucion_seq;
       public       postgres    false    7    197            �	           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq OWNED BY dependencia_institucion.cod_dependencia_institucion;
            public       postgres    false    198            �            1259    36489    detalle_mant_rep    TABLE     ,  CREATE TABLE detalle_mant_rep (
    cod_mantenimiento_reparacion bigint NOT NULL,
    cod_detalle_mant_repara integer NOT NULL,
    cod_tipo_mant_rep bigint NOT NULL,
    costo_reparacion_detalle double precision,
    descripcion character varying(400),
    tiempo_garantia character varying(100)
);
 $   DROP TABLE public.detalle_mant_rep;
       public         postgres    false    7            �            1259    36495 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE     �   CREATE SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.detalle_mant_rep_cod_detalle_mant_repara_seq;
       public       postgres    false    7    199            �	           0    0 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE detalle_mant_rep_cod_detalle_mant_repara_seq OWNED BY detalle_mant_rep.cod_detalle_mant_repara;
            public       postgres    false    200            �            1259    36497    imagen    TABLE     �   CREATE TABLE imagen (
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
       public         postgres    false    7            �            1259    36503    imagen_cod_imagen_seq    SEQUENCE     w   CREATE SEQUENCE imagen_cod_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.imagen_cod_imagen_seq;
       public       postgres    false    7    201            �	           0    0    imagen_cod_imagen_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE imagen_cod_imagen_seq OWNED BY imagen.cod_imagen;
            public       postgres    false    202            �            1259    36505    kilometraje_comision    TABLE     "  CREATE TABLE kilometraje_comision (
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
       public         postgres    false    7            �            1259    36511 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE     �   CREATE SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.kilometraje_comision_cod_kilometraje_comision_seq;
       public       postgres    false    7    203            �	           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq OWNED BY kilometraje_comision.cod_kilometraje_comision;
            public       postgres    false    204            �            1259    36513    linea    TABLE     �   CREATE TABLE linea (
    cod_linea integer NOT NULL,
    cod_marca integer,
    nombre_linea character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.linea;
       public         postgres    false    7            �            1259    36516    linea_cod_linea_seq    SEQUENCE     u   CREATE SEQUENCE linea_cod_linea_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.linea_cod_linea_seq;
       public       postgres    false    7    205            �	           0    0    linea_cod_linea_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE linea_cod_linea_seq OWNED BY linea.cod_linea;
            public       postgres    false    206            �            1259    36518    mantenimiento_reparacion    TABLE     �  CREATE TABLE mantenimiento_reparacion (
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
       public         postgres    false    7            �            1259    36521 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE     �   CREATE SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.mantenimiento_reparacion_cod_mantenimiento_reparacion_seq;
       public       postgres    false    7    207            �	           0    0 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE mantenimiento_reparacion_cod_mantenimiento_reparacion_seq OWNED BY mantenimiento_reparacion.cod_mantenimiento_reparacion;
            public       postgres    false    208            �            1259    36523    marca    TABLE     �   CREATE TABLE marca (
    cod_marca integer NOT NULL,
    nombre_marca character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.marca;
       public         postgres    false    7            �            1259    36526    marca_cod_marca_seq    SEQUENCE     u   CREATE SEQUENCE marca_cod_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marca_cod_marca_seq;
       public       postgres    false    7    209            �	           0    0    marca_cod_marca_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE marca_cod_marca_seq OWNED BY marca.cod_marca;
            public       postgres    false    210            �            1259    36528 	   municipio    TABLE     �   CREATE TABLE municipio (
    cod_municipio integer NOT NULL,
    cod_departamento integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
    DROP TABLE public.municipio;
       public         postgres    false    7            �            1259    36531    municipio_cod_municipio_seq    SEQUENCE     }   CREATE SEQUENCE municipio_cod_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.municipio_cod_municipio_seq;
       public       postgres    false    7    211            �	           0    0    municipio_cod_municipio_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE municipio_cod_municipio_seq OWNED BY municipio.cod_municipio;
            public       postgres    false    212            �            1259    36533    organigrama    TABLE     �   CREATE TABLE organigrama (
    cod_organigrama integer NOT NULL,
    cod_unidad integer,
    cod_organigrama_padre integer,
    cod_status character(2)
);
    DROP TABLE public.organigrama;
       public         postgres    false    7            �            1259    36536    organigrama_cod_organigrama_seq    SEQUENCE     �   CREATE SEQUENCE organigrama_cod_organigrama_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.organigrama_cod_organigrama_seq;
       public       postgres    false    213    7            �	           0    0    organigrama_cod_organigrama_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE organigrama_cod_organigrama_seq OWNED BY organigrama.cod_organigrama;
            public       postgres    false    214            �            1259    36538    pais    TABLE     �   CREATE TABLE pais (
    cod_pais integer NOT NULL,
    nombre_pais character varying(60),
    gentilicio character varying(60),
    codigo_telefonico character varying(3),
    codigo_iso character varying(3),
    cod_estatus character varying(2)
);
    DROP TABLE public.pais;
       public         postgres    false    7            �            1259    36541    pais_cod_pais_seq    SEQUENCE     s   CREATE SEQUENCE pais_cod_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pais_cod_pais_seq;
       public       postgres    false    215    7            �	           0    0    pais_cod_pais_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE pais_cod_pais_seq OWNED BY pais.cod_pais;
            public       postgres    false    216            �            1259    36543    persona    TABLE     �  CREATE TABLE persona (
    cod_persona integer NOT NULL,
    cod_tipo_persona integer,
    cod_pais integer,
    cod_municipio integer,
    nombre_1 character varying(50),
    nombre_2 character varying(50) DEFAULT ''::character varying,
    apellido_1 character varying(50) DEFAULT ''::character varying,
    apellido_2 character varying(50) DEFAULT ''::character varying,
    apellido_casada character varying(50) DEFAULT ''::character varying,
    cod_registro character varying(4),
    numero_cedula character varying(20),
    nit character varying(15),
    fecha_nacimiento date,
    sexo character varying(1),
    estado_civil character varying(50),
    cod_estatus character varying(2),
    cuenta_banco character varying(30),
    pasaporte character varying(100),
    cod_pais_pasaporte integer,
    domicilio character varying(150),
    cod_profesion integer,
    partida_nacimiento character varying(250),
    cod_reloj_persona integer,
    url_foto text,
    foto bytea,
    providad character varying(100),
    lugar_nacimiento character varying(100),
    fecha timestamp without time zone,
    clasificacion_geografica character varying(2),
    cod_puesto bigint
);
    DROP TABLE public.persona;
       public         postgres    false    7            �            1259    36553    persona_cod_persona_seq    SEQUENCE     y   CREATE SEQUENCE persona_cod_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.persona_cod_persona_seq;
       public       postgres    false    7    217            �	           0    0    persona_cod_persona_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE persona_cod_persona_seq OWNED BY persona.cod_persona;
            public       postgres    false    218            �            1259    36555    proveedores    TABLE     �   CREATE TABLE proveedores (
    cod_proveedor integer NOT NULL,
    nit character varying(30),
    direccion character varying(50),
    telefono character varying(150),
    nombre_contacto character varying(350),
    activo boolean
);
    DROP TABLE public.proveedores;
       public         postgres    false    7            �            1259    36561    proveedores_cod_proveedor_seq    SEQUENCE        CREATE SEQUENCE proveedores_cod_proveedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.proveedores_cod_proveedor_seq;
       public       postgres    false    219    7            �	           0    0    proveedores_cod_proveedor_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE proveedores_cod_proveedor_seq OWNED BY proveedores.cod_proveedor;
            public       postgres    false    220            �            1259    36563    puesto    TABLE     �  CREATE TABLE puesto (
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
       public         postgres    false    7            �            1259    36569    puesto_cod_puesto_seq    SEQUENCE     w   CREATE SEQUENCE puesto_cod_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.puesto_cod_puesto_seq;
       public       postgres    false    221    7            �	           0    0    puesto_cod_puesto_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE puesto_cod_puesto_seq OWNED BY puesto.cod_puesto;
            public       postgres    false    222            �            1259    36571    region    TABLE     �   CREATE TABLE region (
    cod_region integer NOT NULL,
    descripcion character varying(60),
    cod_estatus character varying(2)
);
    DROP TABLE public.region;
       public         postgres    false    7            �            1259    36574    region_cod_region_seq    SEQUENCE     w   CREATE SEQUENCE region_cod_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.region_cod_region_seq;
       public       postgres    false    223    7            �	           0    0    region_cod_region_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE region_cod_region_seq OWNED BY region.cod_region;
            public       postgres    false    224            �            1259    36576    sede    TABLE     �  CREATE TABLE sede (
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
       public         postgres    false    7            �            1259    36582    sede_cod_sede_seq    SEQUENCE     s   CREATE SEQUENCE sede_cod_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sede_cod_sede_seq;
       public       postgres    false    225    7            �	           0    0    sede_cod_sede_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE sede_cod_sede_seq OWNED BY sede.cod_sede;
            public       postgres    false    226            �            1259    36584    tipo_dependencia_institucion    TABLE     �   CREATE TABLE tipo_dependencia_institucion (
    cod_tipo_dependencia_institucion integer NOT NULL,
    descripcion character varying(50),
    cod_estatus character varying(2),
    abreviatura character varying(30)
);
 0   DROP TABLE public.tipo_dependencia_institucion;
       public         postgres    false    7            �            1259    36587 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE     �   CREATE SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq;
       public       postgres    false    227    7            �	           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNED BY tipo_dependencia_institucion.cod_tipo_dependencia_institucion;
            public       postgres    false    228            �            1259    36589    tipo_imagen    TABLE     �   CREATE TABLE tipo_imagen (
    cod_tipo_imagen integer NOT NULL,
    nombre_tipo_imagen character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_imagen;
       public         postgres    false    7            �            1259    36592    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE     �   CREATE SEQUENCE tipo_imagen_cod_tipo_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tipo_imagen_cod_tipo_imagen_seq;
       public       postgres    false    7    229            �	           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE tipo_imagen_cod_tipo_imagen_seq OWNED BY tipo_imagen.cod_tipo_imagen;
            public       postgres    false    230            �            1259    36594    tipo_mantenimiento_reparacion    TABLE     �   CREATE TABLE tipo_mantenimiento_reparacion (
    cod_tipo_mant_rep integer NOT NULL,
    descripcion character varying(350),
    mant_repa smallint
);
 1   DROP TABLE public.tipo_mantenimiento_reparacion;
       public         postgres    false    7            �            1259    36597 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE     �   CREATE SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq;
       public       postgres    false    231    7            �	           0    0 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq OWNED BY tipo_mantenimiento_reparacion.cod_tipo_mant_rep;
            public       postgres    false    232            �            1259    36599 	   tipo_tipo    TABLE     �   CREATE TABLE tipo_tipo (
    cod_tipo_tipo integer NOT NULL,
    nombre_tipo_tipo character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_tipo;
       public         postgres    false    7            �            1259    36602    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE     }   CREATE SEQUENCE tipo_tipo_cod_tipo_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_tipo_cod_tipo_tipo_seq;
       public       postgres    false    233    7            �	           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE tipo_tipo_cod_tipo_tipo_seq OWNED BY tipo_tipo.cod_tipo_tipo;
            public       postgres    false    234            �            1259    36604    tipo_uso    TABLE     �   CREATE TABLE tipo_uso (
    cod_tipo_uso integer NOT NULL,
    nombre_tipo_uso character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_uso;
       public         postgres    false    7            �            1259    36607    tipo_uso_cod_tipo_uso_seq    SEQUENCE     {   CREATE SEQUENCE tipo_uso_cod_tipo_uso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tipo_uso_cod_tipo_uso_seq;
       public       postgres    false    235    7            �	           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE tipo_uso_cod_tipo_uso_seq OWNED BY tipo_uso.cod_tipo_uso;
            public       postgres    false    236            �            1259    36609    unidad    TABLE     �   CREATE TABLE unidad (
    cod_unidad integer NOT NULL,
    descripcion character varying(100),
    cod_estatus character varying(2),
    tiene_dependencia boolean,
    nomenclatura character varying(3)
);
    DROP TABLE public.unidad;
       public         postgres    false    7            �            1259    36612    unidad_cod_unidad_seq    SEQUENCE     w   CREATE SEQUENCE unidad_cod_unidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.unidad_cod_unidad_seq;
       public       postgres    false    237    7            �	           0    0    unidad_cod_unidad_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE unidad_cod_unidad_seq OWNED BY unidad.cod_unidad;
            public       postgres    false    238            �            1259    36614    vehiculo    TABLE     X  CREATE TABLE vehiculo (
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
       public         postgres    false    7            �            1259    36620    vehiculo_cod_vehiculo_seq    SEQUENCE     {   CREATE SEQUENCE vehiculo_cod_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.vehiculo_cod_vehiculo_seq;
       public       postgres    false    239    7            �	           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE vehiculo_cod_vehiculo_seq OWNED BY vehiculo.cod_vehiculo;
            public       postgres    false    240            {           2604    37019 +   asignacion_vehiculo cod_asignacion_vehiculo    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo SET DEFAULT nextval('asignacion_vehiculo_cod_asignacion_vehiculo_seq'::regclass);
 Z   ALTER TABLE public.asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo DROP DEFAULT;
       public       postgres    false    182    181            |           2604    37020 9   asignacion_vehiculo_piloto cod_asignacion_vehiculo_piloto    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto SET DEFAULT nextval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq'::regclass);
 h   ALTER TABLE public.asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto DROP DEFAULT;
       public       postgres    false    184    183            }           2604    37021    color cod_color    DEFAULT     d   ALTER TABLE ONLY color ALTER COLUMN cod_color SET DEFAULT nextval('color_cod_color_seq'::regclass);
 >   ALTER TABLE public.color ALTER COLUMN cod_color DROP DEFAULT;
       public       postgres    false    186    185            ~           2604    37022 -   combustible_comision cod_combustible_comision    DEFAULT     �   ALTER TABLE ONLY combustible_comision ALTER COLUMN cod_combustible_comision SET DEFAULT nextval('combustible_comision_cod_combustible_comision_seq'::regclass);
 \   ALTER TABLE public.combustible_comision ALTER COLUMN cod_combustible_comision DROP DEFAULT;
       public       postgres    false    188    187                       2604    37023 '   combustible_cupon cod_combustible_cupon    DEFAULT     �   ALTER TABLE ONLY combustible_cupon ALTER COLUMN cod_combustible_cupon SET DEFAULT nextval('combustible_cupon_cod_combustible_cupon_seq'::regclass);
 V   ALTER TABLE public.combustible_cupon ALTER COLUMN cod_combustible_cupon DROP DEFAULT;
       public       postgres    false    190    189            �           2604    37024 2   concurso_mantenimientos cod_concurso_mantenimiento    DEFAULT     �   ALTER TABLE ONLY concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento SET DEFAULT nextval('concurso_mantenimientos_cod_concurso_mantenimiento_seq'::regclass);
 a   ALTER TABLE public.concurso_mantenimientos ALTER COLUMN cod_concurso_mantenimiento DROP DEFAULT;
       public       postgres    false    192    191            �           2604    37025 )   cupon_denominacion cod_cupon_denominacion    DEFAULT     �   ALTER TABLE ONLY cupon_denominacion ALTER COLUMN cod_cupon_denominacion SET DEFAULT nextval('cupon_denominacion_cod_cupon_denominacion_seq'::regclass);
 X   ALTER TABLE public.cupon_denominacion ALTER COLUMN cod_cupon_denominacion DROP DEFAULT;
       public       postgres    false    194    193            �           2604    37026    departamento cod_departamento    DEFAULT     �   ALTER TABLE ONLY departamento ALTER COLUMN cod_departamento SET DEFAULT nextval('departamento_cod_departamento_seq'::regclass);
 L   ALTER TABLE public.departamento ALTER COLUMN cod_departamento DROP DEFAULT;
       public       postgres    false    196    195            �           2604    37027 3   dependencia_institucion cod_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY dependencia_institucion ALTER COLUMN cod_dependencia_institucion SET DEFAULT nextval('dependencia_institucion_cod_dependencia_institucion_seq'::regclass);
 b   ALTER TABLE public.dependencia_institucion ALTER COLUMN cod_dependencia_institucion DROP DEFAULT;
       public       postgres    false    198    197            �           2604    37028 (   detalle_mant_rep cod_detalle_mant_repara    DEFAULT     �   ALTER TABLE ONLY detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara SET DEFAULT nextval('detalle_mant_rep_cod_detalle_mant_repara_seq'::regclass);
 W   ALTER TABLE public.detalle_mant_rep ALTER COLUMN cod_detalle_mant_repara DROP DEFAULT;
       public       postgres    false    200    199            �           2604    37029    imagen cod_imagen    DEFAULT     h   ALTER TABLE ONLY imagen ALTER COLUMN cod_imagen SET DEFAULT nextval('imagen_cod_imagen_seq'::regclass);
 @   ALTER TABLE public.imagen ALTER COLUMN cod_imagen DROP DEFAULT;
       public       postgres    false    202    201            �           2604    37030 -   kilometraje_comision cod_kilometraje_comision    DEFAULT     �   ALTER TABLE ONLY kilometraje_comision ALTER COLUMN cod_kilometraje_comision SET DEFAULT nextval('kilometraje_comision_cod_kilometraje_comision_seq'::regclass);
 \   ALTER TABLE public.kilometraje_comision ALTER COLUMN cod_kilometraje_comision DROP DEFAULT;
       public       postgres    false    204    203            �           2604    37031    linea cod_linea    DEFAULT     d   ALTER TABLE ONLY linea ALTER COLUMN cod_linea SET DEFAULT nextval('linea_cod_linea_seq'::regclass);
 >   ALTER TABLE public.linea ALTER COLUMN cod_linea DROP DEFAULT;
       public       postgres    false    206    205            �           2604    37032 5   mantenimiento_reparacion cod_mantenimiento_reparacion    DEFAULT     �   ALTER TABLE ONLY mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion SET DEFAULT nextval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq'::regclass);
 d   ALTER TABLE public.mantenimiento_reparacion ALTER COLUMN cod_mantenimiento_reparacion DROP DEFAULT;
       public       postgres    false    208    207            �           2604    37033    marca cod_marca    DEFAULT     d   ALTER TABLE ONLY marca ALTER COLUMN cod_marca SET DEFAULT nextval('marca_cod_marca_seq'::regclass);
 >   ALTER TABLE public.marca ALTER COLUMN cod_marca DROP DEFAULT;
       public       postgres    false    210    209            �           2604    37034    municipio cod_municipio    DEFAULT     t   ALTER TABLE ONLY municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('municipio_cod_municipio_seq'::regclass);
 F   ALTER TABLE public.municipio ALTER COLUMN cod_municipio DROP DEFAULT;
       public       postgres    false    212    211            �           2604    37035    organigrama cod_organigrama    DEFAULT     |   ALTER TABLE ONLY organigrama ALTER COLUMN cod_organigrama SET DEFAULT nextval('organigrama_cod_organigrama_seq'::regclass);
 J   ALTER TABLE public.organigrama ALTER COLUMN cod_organigrama DROP DEFAULT;
       public       postgres    false    214    213            �           2604    37036    pais cod_pais    DEFAULT     `   ALTER TABLE ONLY pais ALTER COLUMN cod_pais SET DEFAULT nextval('pais_cod_pais_seq'::regclass);
 <   ALTER TABLE public.pais ALTER COLUMN cod_pais DROP DEFAULT;
       public       postgres    false    216    215            �           2604    37037    persona cod_persona    DEFAULT     l   ALTER TABLE ONLY persona ALTER COLUMN cod_persona SET DEFAULT nextval('persona_cod_persona_seq'::regclass);
 B   ALTER TABLE public.persona ALTER COLUMN cod_persona DROP DEFAULT;
       public       postgres    false    218    217            �           2604    37038    proveedores cod_proveedor    DEFAULT     x   ALTER TABLE ONLY proveedores ALTER COLUMN cod_proveedor SET DEFAULT nextval('proveedores_cod_proveedor_seq'::regclass);
 H   ALTER TABLE public.proveedores ALTER COLUMN cod_proveedor DROP DEFAULT;
       public       postgres    false    220    219            �           2604    37039    puesto cod_puesto    DEFAULT     h   ALTER TABLE ONLY puesto ALTER COLUMN cod_puesto SET DEFAULT nextval('puesto_cod_puesto_seq'::regclass);
 @   ALTER TABLE public.puesto ALTER COLUMN cod_puesto DROP DEFAULT;
       public       postgres    false    222    221            �           2604    37040    region cod_region    DEFAULT     h   ALTER TABLE ONLY region ALTER COLUMN cod_region SET DEFAULT nextval('region_cod_region_seq'::regclass);
 @   ALTER TABLE public.region ALTER COLUMN cod_region DROP DEFAULT;
       public       postgres    false    224    223            �           2604    37041    sede cod_sede    DEFAULT     `   ALTER TABLE ONLY sede ALTER COLUMN cod_sede SET DEFAULT nextval('sede_cod_sede_seq'::regclass);
 <   ALTER TABLE public.sede ALTER COLUMN cod_sede DROP DEFAULT;
       public       postgres    false    226    225            �           2604    37042 =   tipo_dependencia_institucion cod_tipo_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion SET DEFAULT nextval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq'::regclass);
 l   ALTER TABLE public.tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion DROP DEFAULT;
       public       postgres    false    228    227            �           2604    37043    tipo_imagen cod_tipo_imagen    DEFAULT     |   ALTER TABLE ONLY tipo_imagen ALTER COLUMN cod_tipo_imagen SET DEFAULT nextval('tipo_imagen_cod_tipo_imagen_seq'::regclass);
 J   ALTER TABLE public.tipo_imagen ALTER COLUMN cod_tipo_imagen DROP DEFAULT;
       public       postgres    false    230    229            �           2604    37044 /   tipo_mantenimiento_reparacion cod_tipo_mant_rep    DEFAULT     �   ALTER TABLE ONLY tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep SET DEFAULT nextval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq'::regclass);
 ^   ALTER TABLE public.tipo_mantenimiento_reparacion ALTER COLUMN cod_tipo_mant_rep DROP DEFAULT;
       public       postgres    false    232    231            �           2604    37045    tipo_tipo cod_tipo_tipo    DEFAULT     t   ALTER TABLE ONLY tipo_tipo ALTER COLUMN cod_tipo_tipo SET DEFAULT nextval('tipo_tipo_cod_tipo_tipo_seq'::regclass);
 F   ALTER TABLE public.tipo_tipo ALTER COLUMN cod_tipo_tipo DROP DEFAULT;
       public       postgres    false    234    233            �           2604    37046    tipo_uso cod_tipo_uso    DEFAULT     p   ALTER TABLE ONLY tipo_uso ALTER COLUMN cod_tipo_uso SET DEFAULT nextval('tipo_uso_cod_tipo_uso_seq'::regclass);
 D   ALTER TABLE public.tipo_uso ALTER COLUMN cod_tipo_uso DROP DEFAULT;
       public       postgres    false    236    235            �           2604    37047    unidad cod_unidad    DEFAULT     h   ALTER TABLE ONLY unidad ALTER COLUMN cod_unidad SET DEFAULT nextval('unidad_cod_unidad_seq'::regclass);
 @   ALTER TABLE public.unidad ALTER COLUMN cod_unidad DROP DEFAULT;
       public       postgres    false    238    237            �           2604    37048    vehiculo cod_vehiculo    DEFAULT     p   ALTER TABLE ONLY vehiculo ALTER COLUMN cod_vehiculo SET DEFAULT nextval('vehiculo_cod_vehiculo_seq'::regclass);
 D   ALTER TABLE public.vehiculo ALTER COLUMN cod_vehiculo DROP DEFAULT;
       public       postgres    false    240    239            �	          0    36432    asignacion_vehiculo 
   TABLE DATA               R  COPY asignacion_vehiculo (cod_asignacion_vehiculo, fecha_asignacion, no_solicitud, year_solicitud, cod_unidad_solicitante, cod_persona_pasajero, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, dias_asignacion, num_personas_viaje, cod_sede_lugar_salida, destino, diligencia, causa_1, causa_2, causa_3, cod_dependencia_institucion_juzgado, utiliza_piloto, utiliza_vehiculo, carga_voluminosa, observaciones, cod_persona_solicitante, cod_puesto_solicitante, cod_persona_coordinador_jefe, cod_puesto_coordinador_jefe, cod_persona_asignador_vehiculo, cod_puesto_asignador_vehiculo) FROM stdin;
    public       postgres    false    181   `�      �	           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('asignacion_vehiculo_cod_asignacion_vehiculo_seq', 1, false);
            public       postgres    false    182            �	          0    36440    asignacion_vehiculo_piloto 
   TABLE DATA               �   COPY asignacion_vehiculo_piloto (cod_asignacion_vehiculo_piloto, cod_asignacion_vehiculo, cod_vehiculo, cod_persona_piloto_asignado, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, fecha_hora_asignacion, estatus_asignacion) FROM stdin;
    public       postgres    false    183   }�      �	           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq', 1, false);
            public       postgres    false    184            �	          0    36445    color 
   TABLE DATA               @   COPY color (cod_color, nombre_color, orden, activo) FROM stdin;
    public       postgres    false    185   ��      �	           0    0    color_cod_color_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('color_cod_color_seq', 3, true);
            public       postgres    false    186            �	          0    36450    combustible_comision 
   TABLE DATA               W  COPY combustible_comision (cod_combustible_comision, fecha_entrega, cod_persona_solicitante, cod_puesto_solicitante, cod_unidad, cod_sede, cod_vehiculo, placa, kilometraje_actual, comision_a, observaciones, importe_total_letras, cantidad_estimada_carga, cod_persona_receptor, cod_puesto_receptor, cod_persona_encargado_transporte) FROM stdin;
    public       postgres    false    187   �      �	           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('combustible_comision_cod_combustible_comision_seq', 1, true);
            public       postgres    false    188            �	          0    36458    combustible_cupon 
   TABLE DATA               �   COPY combustible_cupon (cod_combustible_cupon, cod_combustible_comision, cod_cupon_denominancion, cantidad_cupones, numero_cupon_inicial, numero_cupon_final, suma_total) FROM stdin;
    public       postgres    false    189   2�      �	           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('combustible_cupon_cod_combustible_cupon_seq', 1, true);
            public       postgres    false    190            �	          0    36466    concurso_mantenimientos 
   TABLE DATA               �   COPY concurso_mantenimientos (cod_concurso_mantenimiento, no_concurso, fecha_concurso, placa_vehiculo, realizado, cod_empleado_autoriza, cod_cargo_empleado_autoriza, activo) FROM stdin;
    public       postgres    false    191   O�      �	           0    0 6   concurso_mantenimientos_cod_concurso_mantenimiento_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('concurso_mantenimientos_cod_concurso_mantenimiento_seq', 1, false);
            public       postgres    false    192            �	          0    36471    cupon_denominacion 
   TABLE DATA               X   COPY cupon_denominacion (cod_cupon_denominacion, descripcion, denominacion) FROM stdin;
    public       postgres    false    193   l�      �	           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('cupon_denominacion_cod_cupon_denominacion_seq', 2, true);
            public       postgres    false    194            �	          0    36479    departamento 
   TABLE DATA               �   COPY departamento (cod_departamento, cod_region, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    195   ��      �	           0    0 !   departamento_cod_departamento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('departamento_cod_departamento_seq', 1, false);
            public       postgres    false    196            �	          0    36484    dependencia_institucion 
   TABLE DATA               �   COPY dependencia_institucion (cod_dependencia_institucion, cod_institucion, cod_estatus, nombre, direccion, cod_municipio, cod_departamento, telefono_1, cod_tipo_organo, codigo_causa, cod_tipo_dependencia_institucion, fecha_sistema) FROM stdin;
    public       postgres    false    197   �      �	           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('dependencia_institucion_cod_dependencia_institucion_seq', 1, false);
            public       postgres    false    198            �	          0    36489    detalle_mant_rep 
   TABLE DATA               �   COPY detalle_mant_rep (cod_mantenimiento_reparacion, cod_detalle_mant_repara, cod_tipo_mant_rep, costo_reparacion_detalle, descripcion, tiempo_garantia) FROM stdin;
    public       postgres    false    199   #�      �	           0    0 ,   detalle_mant_rep_cod_detalle_mant_repara_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('detalle_mant_rep_cod_detalle_mant_repara_seq', 5, true);
            public       postgres    false    200            �	          0    36497    imagen 
   TABLE DATA               x   COPY imagen (cod_imagen, cod_vehiculo, cod_tipo_imagen, path_imagen, imagenb, nombre_imagen, orden, activo) FROM stdin;
    public       postgres    false    201   @�      �	           0    0    imagen_cod_imagen_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('imagen_cod_imagen_seq', 55, true);
            public       postgres    false    202            �	          0    36505    kilometraje_comision 
   TABLE DATA                 COPY kilometraje_comision (cod_kilometraje_comision, cod_persona_piloto, cod_vehiculo, placa, kilometraje_inicial, fecha_hora_salida, kilometraje_final, fecha_hora_entrada, comision_realizada, causa1, causa2, causa3, cod_dependencia_institucion, diligencias_realizadas) FROM stdin;
    public       postgres    false    203   ]�      �	           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('kilometraje_comision_cod_kilometraje_comision_seq', 1, false);
            public       postgres    false    204            �	          0    36513    linea 
   TABLE DATA               K   COPY linea (cod_linea, cod_marca, nombre_linea, orden, activo) FROM stdin;
    public       postgres    false    205   z�      �	           0    0    linea_cod_linea_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('linea_cod_linea_seq', 3, true);
            public       postgres    false    206            �	          0    36518    mantenimiento_reparacion 
   TABLE DATA               7  COPY mantenimiento_reparacion (cod_mantenimiento_reparacion, cod_control_mant_rep, mant_rep, cod_no_concurso, cod_proveedor, no_factura, serie_factura, fecha_emision_factura, fecha_recepcion_factura, fecha_recepcion_vehiculo, fecha_retorno_vehiculo, dias_mantenimiento, cod_tipo_mantenimiento, total_mantenimiento_repara_q, cod_vehiculo, placa, utilizo_seguro, registro_pago, cod_sede, cod_empleado_recepcion, cod_cargo_empleado_recepcion, cod_empleado_recepcion_fact, cod_cargo_empleado_recepcion_fact, cod_empleado_digita, activo, fecha_envio_vehiculo) FROM stdin;
    public       postgres    false    207   �      �	           0    0 9   mantenimiento_reparacion_cod_mantenimiento_reparacion_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('mantenimiento_reparacion_cod_mantenimiento_reparacion_seq', 7, true);
            public       postgres    false    208            �	          0    36523    marca 
   TABLE DATA               @   COPY marca (cod_marca, nombre_marca, orden, activo) FROM stdin;
    public       postgres    false    209   $�      �	           0    0    marca_cod_marca_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('marca_cod_marca_seq', 1, true);
            public       postgres    false    210            �	          0    36528 	   municipio 
   TABLE DATA               �   COPY municipio (cod_municipio, cod_departamento, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    211   ��      �	           0    0    municipio_cod_municipio_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('municipio_cod_municipio_seq', 1, false);
            public       postgres    false    212            �	          0    36533    organigrama 
   TABLE DATA               ^   COPY organigrama (cod_organigrama, cod_unidad, cod_organigrama_padre, cod_status) FROM stdin;
    public       postgres    false    213   ��      �	           0    0    organigrama_cod_organigrama_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('organigrama_cod_organigrama_seq', 2, true);
            public       postgres    false    214            �	          0    36538    pais 
   TABLE DATA               f   COPY pais (cod_pais, nombre_pais, gentilicio, codigo_telefonico, codigo_iso, cod_estatus) FROM stdin;
    public       postgres    false    215   ��      �	           0    0    pais_cod_pais_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('pais_cod_pais_seq', 1, true);
            public       postgres    false    216            �	          0    36543    persona 
   TABLE DATA               �  COPY persona (cod_persona, cod_tipo_persona, cod_pais, cod_municipio, nombre_1, nombre_2, apellido_1, apellido_2, apellido_casada, cod_registro, numero_cedula, nit, fecha_nacimiento, sexo, estado_civil, cod_estatus, cuenta_banco, pasaporte, cod_pais_pasaporte, domicilio, cod_profesion, partida_nacimiento, cod_reloj_persona, url_foto, foto, providad, lugar_nacimiento, fecha, clasificacion_geografica, cod_puesto) FROM stdin;
    public       postgres    false    217   �      �	           0    0    persona_cod_persona_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('persona_cod_persona_seq', 2, true);
            public       postgres    false    218            �	          0    36555    proveedores 
   TABLE DATA               `   COPY proveedores (cod_proveedor, nit, direccion, telefono, nombre_contacto, activo) FROM stdin;
    public       postgres    false    219   �      �	           0    0    proveedores_cod_proveedor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('proveedores_cod_proveedor_seq', 2, true);
            public       postgres    false    220            �	          0    36563    puesto 
   TABLE DATA               �   COPY puesto (cod_puesto, cod_tipo_puesto, cod_organigrama, cod_persona, descripcion, cod_estatus, cod_sede, no_doc_creacion, no_doc_finalizacion, descripcion_femenino, cod_puesto_reemplazo, fecha_sistema) FROM stdin;
    public       postgres    false    221   �      �	           0    0    puesto_cod_puesto_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('puesto_cod_puesto_seq', 2, true);
            public       postgres    false    222            �	          0    36571    region 
   TABLE DATA               ?   COPY region (cod_region, descripcion, cod_estatus) FROM stdin;
    public       postgres    false    223   b�       
           0    0    region_cod_region_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('region_cod_region_seq', 1, false);
            public       postgres    false    224            �	          0    36576    sede 
   TABLE DATA               �   COPY sede (cod_sede, cod_municipio, cod_tipo_sede, nombre_sede, direccion, telefono_1, telefono_2, cod_coordindor, cod_organigrama, cod_estatus, cod_region_supervision, correo_electronico, zona) FROM stdin;
    public       postgres    false    225   ��      
           0    0    sede_cod_sede_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('sede_cod_sede_seq', 1, true);
            public       postgres    false    226            �	          0    36584    tipo_dependencia_institucion 
   TABLE DATA               x   COPY tipo_dependencia_institucion (cod_tipo_dependencia_institucion, descripcion, cod_estatus, abreviatura) FROM stdin;
    public       postgres    false    227   ��      
           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq', 1, false);
            public       postgres    false    228            �	          0    36589    tipo_imagen 
   TABLE DATA               R   COPY tipo_imagen (cod_tipo_imagen, nombre_tipo_imagen, orden, activo) FROM stdin;
    public       postgres    false    229   ��      
           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tipo_imagen_cod_tipo_imagen_seq', 1, false);
            public       postgres    false    230            �	          0    36594    tipo_mantenimiento_reparacion 
   TABLE DATA               [   COPY tipo_mantenimiento_reparacion (cod_tipo_mant_rep, descripcion, mant_repa) FROM stdin;
    public       postgres    false    231   ��      
           0    0 3   tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('tipo_mantenimiento_reparacion_cod_tipo_mant_rep_seq', 2, true);
            public       postgres    false    232            �	          0    36599 	   tipo_tipo 
   TABLE DATA               L   COPY tipo_tipo (cod_tipo_tipo, nombre_tipo_tipo, orden, activo) FROM stdin;
    public       postgres    false    233   N�      
           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tipo_tipo_cod_tipo_tipo_seq', 3, true);
            public       postgres    false    234            �	          0    36604    tipo_uso 
   TABLE DATA               I   COPY tipo_uso (cod_tipo_uso, nombre_tipo_uso, orden, activo) FROM stdin;
    public       postgres    false    235   ��      
           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tipo_uso_cod_tipo_uso_seq', 5, true);
            public       postgres    false    236            �	          0    36609    unidad 
   TABLE DATA               `   COPY unidad (cod_unidad, descripcion, cod_estatus, tiene_dependencia, nomenclatura) FROM stdin;
    public       postgres    false    237   ��      
           0    0    unidad_cod_unidad_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('unidad_cod_unidad_seq', 3, true);
            public       postgres    false    238            �	          0    36614    vehiculo 
   TABLE DATA               o  COPY vehiculo (cod_vehiculo, placa, nit, poliza, direccion, cod_municipio, cod_departamento, nombre, modelo, cod_tipo_uso, chasis, cod_tipo_tipo, cod_marca, cod_linea, vin, centimetros_cubicos, cilindros, toneladas, titulo, tarjeta_circulacion, cod_color, no_asientos, no_inventario_registro, cod_persona_asignacion, cod_pueston, no_motor, orden, activo) FROM stdin;
    public       postgres    false    239   ��      
           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('vehiculo_cod_vehiculo_seq', 59, true);
            public       postgres    false    240            �           2606    36653 .   asignacion_vehiculo pk_cod_asignacion_vehiculo 
   CONSTRAINT     z   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT pk_cod_asignacion_vehiculo PRIMARY KEY (cod_asignacion_vehiculo);
 X   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT pk_cod_asignacion_vehiculo;
       public         postgres    false    181    181            �           2606    36655 <   asignacion_vehiculo_piloto pk_cod_asignacion_vehiculo_piloto 
   CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT pk_cod_asignacion_vehiculo_piloto PRIMARY KEY (cod_asignacion_vehiculo_piloto);
 f   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT pk_cod_asignacion_vehiculo_piloto;
       public         postgres    false    183    183            �           2606    36657    color pk_cod_color 
   CONSTRAINT     P   ALTER TABLE ONLY color
    ADD CONSTRAINT pk_cod_color PRIMARY KEY (cod_color);
 <   ALTER TABLE ONLY public.color DROP CONSTRAINT pk_cod_color;
       public         postgres    false    185    185            �           2606    36659 0   combustible_comision pk_cod_combustible_comision 
   CONSTRAINT     }   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT pk_cod_combustible_comision PRIMARY KEY (cod_combustible_comision);
 Z   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT pk_cod_combustible_comision;
       public         postgres    false    187    187            �           2606    36661 *   combustible_cupon pk_cod_combustible_cupon 
   CONSTRAINT     t   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT pk_cod_combustible_cupon PRIMARY KEY (cod_combustible_cupon);
 T   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT pk_cod_combustible_cupon;
       public         postgres    false    189    189            �           2606    36663 ,   cupon_denominacion pk_cod_cupon_denominacion 
   CONSTRAINT     w   ALTER TABLE ONLY cupon_denominacion
    ADD CONSTRAINT pk_cod_cupon_denominacion PRIMARY KEY (cod_cupon_denominacion);
 V   ALTER TABLE ONLY public.cupon_denominacion DROP CONSTRAINT pk_cod_cupon_denominacion;
       public         postgres    false    193    193            �           2606    36665     departamento pk_cod_departamento 
   CONSTRAINT     e   ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);
 J   ALTER TABLE ONLY public.departamento DROP CONSTRAINT pk_cod_departamento;
       public         postgres    false    195    195            �           2606    36667 6   dependencia_institucion pk_cod_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT pk_cod_dependencia_institucion PRIMARY KEY (cod_dependencia_institucion);
 `   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT pk_cod_dependencia_institucion;
       public         postgres    false    197    197            �           2606    36669    imagen pk_cod_imagen 
   CONSTRAINT     S   ALTER TABLE ONLY imagen
    ADD CONSTRAINT pk_cod_imagen PRIMARY KEY (cod_imagen);
 >   ALTER TABLE ONLY public.imagen DROP CONSTRAINT pk_cod_imagen;
       public         postgres    false    201    201            �           2606    36671 0   kilometraje_comision pk_cod_kilometraje_comision 
   CONSTRAINT     }   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT pk_cod_kilometraje_comision PRIMARY KEY (cod_kilometraje_comision);
 Z   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT pk_cod_kilometraje_comision;
       public         postgres    false    203    203            �           2606    36673    linea pk_cod_linea 
   CONSTRAINT     P   ALTER TABLE ONLY linea
    ADD CONSTRAINT pk_cod_linea PRIMARY KEY (cod_linea);
 <   ALTER TABLE ONLY public.linea DROP CONSTRAINT pk_cod_linea;
       public         postgres    false    205    205            �           2606    36675    marca pk_cod_marca 
   CONSTRAINT     P   ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_cod_marca PRIMARY KEY (cod_marca);
 <   ALTER TABLE ONLY public.marca DROP CONSTRAINT pk_cod_marca;
       public         postgres    false    209    209            �           2606    36677    municipio pk_cod_municipio 
   CONSTRAINT     \   ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_cod_municipio PRIMARY KEY (cod_municipio);
 D   ALTER TABLE ONLY public.municipio DROP CONSTRAINT pk_cod_municipio;
       public         postgres    false    211    211            �           2606    36679    pais pk_cod_pais 
   CONSTRAINT     M   ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_cod_pais PRIMARY KEY (cod_pais);
 :   ALTER TABLE ONLY public.pais DROP CONSTRAINT pk_cod_pais;
       public         postgres    false    215    215            �           2606    36681    persona pk_cod_persona 
   CONSTRAINT     V   ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_cod_persona PRIMARY KEY (cod_persona);
 @   ALTER TABLE ONLY public.persona DROP CONSTRAINT pk_cod_persona;
       public         postgres    false    217    217            �           2606    36683    puesto pk_cod_puesto 
   CONSTRAINT     S   ALTER TABLE ONLY puesto
    ADD CONSTRAINT pk_cod_puesto PRIMARY KEY (cod_puesto);
 >   ALTER TABLE ONLY public.puesto DROP CONSTRAINT pk_cod_puesto;
       public         postgres    false    221    221            �           2606    36685    region pk_cod_region 
   CONSTRAINT     S   ALTER TABLE ONLY region
    ADD CONSTRAINT pk_cod_region PRIMARY KEY (cod_region);
 >   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_cod_region;
       public         postgres    false    223    223            �           2606    36687    sede pk_cod_sede 
   CONSTRAINT     M   ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_cod_sede PRIMARY KEY (cod_sede);
 :   ALTER TABLE ONLY public.sede DROP CONSTRAINT pk_cod_sede;
       public         postgres    false    225    225            �           2606    36689 @   tipo_dependencia_institucion pk_cod_tipo_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY tipo_dependencia_institucion
    ADD CONSTRAINT pk_cod_tipo_dependencia_institucion PRIMARY KEY (cod_tipo_dependencia_institucion);
 j   ALTER TABLE ONLY public.tipo_dependencia_institucion DROP CONSTRAINT pk_cod_tipo_dependencia_institucion;
       public         postgres    false    227    227            �           2606    36691    tipo_imagen pk_cod_tipo_imagen 
   CONSTRAINT     b   ALTER TABLE ONLY tipo_imagen
    ADD CONSTRAINT pk_cod_tipo_imagen PRIMARY KEY (cod_tipo_imagen);
 H   ALTER TABLE ONLY public.tipo_imagen DROP CONSTRAINT pk_cod_tipo_imagen;
       public         postgres    false    229    229            �           2606    36693    tipo_tipo pk_cod_tipo_tipo 
   CONSTRAINT     \   ALTER TABLE ONLY tipo_tipo
    ADD CONSTRAINT pk_cod_tipo_tipo PRIMARY KEY (cod_tipo_tipo);
 D   ALTER TABLE ONLY public.tipo_tipo DROP CONSTRAINT pk_cod_tipo_tipo;
       public         postgres    false    233    233            �           2606    36695    tipo_uso pk_cod_tipo_uso 
   CONSTRAINT     Y   ALTER TABLE ONLY tipo_uso
    ADD CONSTRAINT pk_cod_tipo_uso PRIMARY KEY (cod_tipo_uso);
 B   ALTER TABLE ONLY public.tipo_uso DROP CONSTRAINT pk_cod_tipo_uso;
       public         postgres    false    235    235            �           2606    36697    unidad pk_cod_unidad 
   CONSTRAINT     S   ALTER TABLE ONLY unidad
    ADD CONSTRAINT pk_cod_unidad PRIMARY KEY (cod_unidad);
 >   ALTER TABLE ONLY public.unidad DROP CONSTRAINT pk_cod_unidad;
       public         postgres    false    237    237            �           2606    36699    vehiculo pk_cod_vehiculo 
   CONSTRAINT     Y   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_cod_vehiculo PRIMARY KEY (cod_vehiculo);
 B   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT pk_cod_vehiculo;
       public         postgres    false    239    239            �           2606    36701 2   concurso_mantenimientos pk_concurso_mantenimientos 
   CONSTRAINT     �   ALTER TABLE ONLY concurso_mantenimientos
    ADD CONSTRAINT pk_concurso_mantenimientos PRIMARY KEY (cod_concurso_mantenimiento);
 \   ALTER TABLE ONLY public.concurso_mantenimientos DROP CONSTRAINT pk_concurso_mantenimientos;
       public         postgres    false    191    191            �           2606    36703 $   detalle_mant_rep pk_detalle_mant_rep 
   CONSTRAINT     p   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT pk_detalle_mant_rep PRIMARY KEY (cod_detalle_mant_repara);
 N   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT pk_detalle_mant_rep;
       public         postgres    false    199    199            �           2606    36705 ,   mantenimiento_reparacion pk_manto_reparacion 
   CONSTRAINT     }   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT pk_manto_reparacion PRIMARY KEY (cod_mantenimiento_reparacion);
 V   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT pk_manto_reparacion;
       public         postgres    false    207    207            �           2606    36707    organigrama pk_organigrama 
   CONSTRAINT     ^   ALTER TABLE ONLY organigrama
    ADD CONSTRAINT pk_organigrama PRIMARY KEY (cod_organigrama);
 D   ALTER TABLE ONLY public.organigrama DROP CONSTRAINT pk_organigrama;
       public         postgres    false    213    213            �           2606    36709    proveedores pk_proveedores 
   CONSTRAINT     \   ALTER TABLE ONLY proveedores
    ADD CONSTRAINT pk_proveedores PRIMARY KEY (cod_proveedor);
 D   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT pk_proveedores;
       public         postgres    false    219    219            �           2606    36711 6   tipo_mantenimiento_reparacion pk_tipo_manto_reparacion 
   CONSTRAINT     |   ALTER TABLE ONLY tipo_mantenimiento_reparacion
    ADD CONSTRAINT pk_tipo_manto_reparacion PRIMARY KEY (cod_tipo_mant_rep);
 `   ALTER TABLE ONLY public.tipo_mantenimiento_reparacion DROP CONSTRAINT pk_tipo_manto_reparacion;
       public         postgres    false    231    231            �           1259    36712    uniq_nit    INDEX     ?   CREATE UNIQUE INDEX uniq_nit ON proveedores USING btree (nit);
    DROP INDEX public.uniq_nit;
       public         postgres    false    219            �           2606    36713 P   asignacion_vehiculo asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey FOREIGN KEY (cod_dependencia_institucion_juzgado) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 z   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey;
       public       postgres    false    2222    197    181            �           2606    36718 K   asignacion_vehiculo asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey FOREIGN KEY (cod_persona_asignador_vehiculo) REFERENCES persona(cod_persona);
 u   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey;
       public       postgres    false    217    181    2242            �           2606    36723 I   asignacion_vehiculo asignacion_vehiculo_cod_persona_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey FOREIGN KEY (cod_persona_coordinador_jefe) REFERENCES persona(cod_persona);
 s   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey;
       public       postgres    false    217    181    2242            �           2606    36728 A   asignacion_vehiculo asignacion_vehiculo_cod_persona_pasajero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey FOREIGN KEY (cod_persona_pasajero) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey;
       public       postgres    false    181    217    2242            �           2606    36733 D   asignacion_vehiculo asignacion_vehiculo_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 n   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey;
       public       postgres    false    181    2242    217            �           2606    36738 J   asignacion_vehiculo asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey FOREIGN KEY (cod_puesto_asignador_vehiculo) REFERENCES puesto(cod_puesto);
 t   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey;
       public       postgres    false    2247    181    221            �           2606    36743 H   asignacion_vehiculo asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey FOREIGN KEY (cod_puesto_coordinador_jefe) REFERENCES puesto(cod_puesto);
 r   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey;
       public       postgres    false    181    221    2247            �           2606    36748 C   asignacion_vehiculo asignacion_vehiculo_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey;
       public       postgres    false    221    181    2247            �           2606    36753 B   asignacion_vehiculo asignacion_vehiculo_cod_sede_lugar_salida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey FOREIGN KEY (cod_sede_lugar_salida) REFERENCES sede(cod_sede);
 l   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey;
       public       postgres    false    225    181    2251            �           2606    36758 C   asignacion_vehiculo asignacion_vehiculo_cod_unidad_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey FOREIGN KEY (cod_unidad_solicitante) REFERENCES unidad(cod_unidad);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey;
       public       postgres    false    237    181    2263            �           2606    36763 R   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey FOREIGN KEY (cod_asignacion_vehiculo) REFERENCES asignacion_vehiculo(cod_asignacion_vehiculo);
 |   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey;
       public       postgres    false    2206    183    181            �           2606    36768 V   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey FOREIGN KEY (cod_persona_piloto_asignado) REFERENCES persona(cod_persona);
 �   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey;
       public       postgres    false    217    183    2242            �           2606    36773 G   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 q   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey;
       public       postgres    false    2265    183    239            �           2606    36778 O   combustible_comision combustible_comision_cod_persona_encargado_transporte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey FOREIGN KEY (cod_persona_encargado_transporte) REFERENCES persona(cod_persona);
 y   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey;
       public       postgres    false    2242    217    187            �           2606    36783 C   combustible_comision combustible_comision_cod_persona_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_receptor_fkey FOREIGN KEY (cod_persona_receptor) REFERENCES persona(cod_persona);
 m   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_receptor_fkey;
       public       postgres    false    187    2242    217            �           2606    36788 F   combustible_comision combustible_comision_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 p   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_solicitante_fkey;
       public       postgres    false    217    2242    187            �           2606    36793 B   combustible_comision combustible_comision_cod_puesto_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_receptor_fkey FOREIGN KEY (cod_puesto_receptor) REFERENCES puesto(cod_puesto);
 l   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_receptor_fkey;
       public       postgres    false    221    2247    187            �           2606    36798 E   combustible_comision combustible_comision_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 o   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey;
       public       postgres    false    187    2247    221            �           2606    36803 7   combustible_comision combustible_comision_cod_sede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 a   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_sede_fkey;
       public       postgres    false    2251    187    225            �           2606    36808 9   combustible_comision combustible_comision_cod_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_unidad_fkey FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);
 c   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_unidad_fkey;
       public       postgres    false    187    237    2263            �           2606    36813 ;   combustible_comision combustible_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_vehiculo_fkey;
       public       postgres    false    187    239    2265            �           2606    36818 A   combustible_cupon combustible_cupon_cod_combustible_comision_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_combustible_comision_fkey FOREIGN KEY (cod_combustible_comision) REFERENCES combustible_comision(cod_combustible_comision);
 k   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_combustible_comision_fkey;
       public       postgres    false    2212    189    187            �           2606    36823 @   combustible_cupon combustible_cupon_cod_cupon_denominancion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey FOREIGN KEY (cod_cupon_denominancion) REFERENCES cupon_denominacion(cod_cupon_denominacion);
 j   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey;
       public       postgres    false    189    2218    193            �           2606    36828 )   departamento departamento_cod_region_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_cod_region_fkey FOREIGN KEY (cod_region) REFERENCES region(cod_region);
 S   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_cod_region_fkey;
       public       postgres    false    223    195    2249            �           2606    36833 E   dependencia_institucion dependencia_institucion_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 o   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_departamento_fkey;
       public       postgres    false    2220    197    195            �           2606    36838 B   dependencia_institucion dependencia_institucion_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 l   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_municipio_fkey;
       public       postgres    false    197    2236    211            �           2606    36843 U   dependencia_institucion dependencia_institucion_cod_tipo_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey FOREIGN KEY (cod_tipo_dependencia_institucion) REFERENCES tipo_dependencia_institucion(cod_tipo_dependencia_institucion);
    ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey;
       public       postgres    false    2253    227    197            �           2606    36848 +   detalle_mant_rep detalle_mant_rep_mant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT detalle_mant_rep_mant_fkey FOREIGN KEY (cod_mantenimiento_reparacion) REFERENCES mantenimiento_reparacion(cod_mantenimiento_reparacion);
 U   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT detalle_mant_rep_mant_fkey;
       public       postgres    false    199    207    2232            �           2606    36853 %   detalle_mant_rep fk_det_mant_rep_tipo    FK CONSTRAINT     �   ALTER TABLE ONLY detalle_mant_rep
    ADD CONSTRAINT fk_det_mant_rep_tipo FOREIGN KEY (cod_tipo_mant_rep) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);
 O   ALTER TABLE ONLY public.detalle_mant_rep DROP CONSTRAINT fk_det_mant_rep_tipo;
       public       postgres    false    199    2257    231            	           2606    36858    puesto fk_puesto_organigrama    FK CONSTRAINT     �   ALTER TABLE ONLY puesto
    ADD CONSTRAINT fk_puesto_organigrama FOREIGN KEY (cod_organigrama) REFERENCES organigrama(cod_organigrama);
 F   ALTER TABLE ONLY public.puesto DROP CONSTRAINT fk_puesto_organigrama;
       public       postgres    false    213    2238    221            	           2606    36863 !   organigrama fk_unidad_organigrama    FK CONSTRAINT     ~   ALTER TABLE ONLY organigrama
    ADD CONSTRAINT fk_unidad_organigrama FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);
 K   ALTER TABLE ONLY public.organigrama DROP CONSTRAINT fk_unidad_organigrama;
       public       postgres    false    213    237    2263            �           2606    36868 "   imagen imagen_cod_tipo_imagen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_tipo_imagen_fkey FOREIGN KEY (cod_tipo_imagen) REFERENCES tipo_imagen(cod_tipo_imagen);
 L   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_tipo_imagen_fkey;
       public       postgres    false    201    229    2255            �           2606    36873    imagen imagen_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 I   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_vehiculo_fkey;
       public       postgres    false    239    2265    201            �           2606    36878 J   kilometraje_comision kilometraje_comision_cod_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey FOREIGN KEY (cod_dependencia_institucion) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 t   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey;
       public       postgres    false    2222    203    197            �           2606    36883 A   kilometraje_comision kilometraje_comision_cod_persona_piloto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey FOREIGN KEY (cod_persona_piloto) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey;
       public       postgres    false    217    2242    203            �           2606    36888 ;   kilometraje_comision kilometraje_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_vehiculo_fkey;
       public       postgres    false    239    2265    203            �           2606    36893    linea linea_cod_marca_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY linea
    ADD CONSTRAINT linea_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 D   ALTER TABLE ONLY public.linea DROP CONSTRAINT linea_cod_marca_fkey;
       public       postgres    false    205    2234    209            �           2606    36898 7   mantenimiento_reparacion manto_reparacion_concurso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_concurso_fkey FOREIGN KEY (cod_no_concurso) REFERENCES concurso_mantenimientos(cod_concurso_mantenimiento);
 a   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_concurso_fkey;
       public       postgres    false    191    207    2216            �           2606    36903 5   mantenimiento_reparacion manto_reparacion_proveedores    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_proveedores FOREIGN KEY (cod_proveedor) REFERENCES proveedores(cod_proveedor);
 _   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_proveedores;
       public       postgres    false    219    2244    207            �           2606    36908 3   mantenimiento_reparacion manto_reparacion_sede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 ]   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_sede_fkey;
       public       postgres    false    2251    207    225             	           2606    36913 6   mantenimiento_reparacion manto_reparacion_tipomanto_fk    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_tipomanto_fk FOREIGN KEY (cod_tipo_mantenimiento) REFERENCES tipo_mantenimiento_reparacion(cod_tipo_mant_rep);
 `   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_tipomanto_fk;
       public       postgres    false    2257    207    231            	           2606    36918 7   mantenimiento_reparacion manto_reparacion_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY mantenimiento_reparacion
    ADD CONSTRAINT manto_reparacion_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 a   ALTER TABLE ONLY public.mantenimiento_reparacion DROP CONSTRAINT manto_reparacion_vehiculo_fkey;
       public       postgres    false    2265    239    207            	           2606    36923 )   municipio municipio_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 S   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_cod_departamento_fkey;
       public       postgres    false    211    195    2220            	           2606    36928 "   persona persona_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 L   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_municipio_fkey;
       public       postgres    false    2236    217    211            	           2606    36933    persona persona_cod_pais_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_fkey FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais);
 G   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_pais_fkey;
       public       postgres    false    217    215    2240            	           2606    36938 '   persona persona_cod_pais_pasaporte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_pasaporte_fkey FOREIGN KEY (cod_pais_pasaporte) REFERENCES pais(cod_pais);
 Q   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_pais_pasaporte_fkey;
       public       postgres    false    215    217    2240            	           2606    36943    persona persona_puesto_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_puesto_fkey FOREIGN KEY (cod_puesto) REFERENCES puesto(cod_puesto);
 E   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_puesto_fkey;
       public       postgres    false    2247    217    221            		           2606    36948    puesto puesto_cod_persona_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_persona_fkey FOREIGN KEY (cod_persona) REFERENCES persona(cod_persona);
 H   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_persona_fkey;
       public       postgres    false    217    2242    221            
	           2606    36953 '   puesto puesto_cod_puesto_reemplazo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_puesto_reemplazo_fkey FOREIGN KEY (cod_puesto_reemplazo) REFERENCES puesto(cod_puesto);
 Q   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_puesto_reemplazo_fkey;
       public       postgres    false    221    221    2247            	           2606    36958    puesto puesto_cod_sede_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 E   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_sede_fkey;
       public       postgres    false    225    221    2251            	           2606    36963    sede sede_cod_coordindor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_coordindor_fkey FOREIGN KEY (cod_coordindor) REFERENCES persona(cod_persona);
 G   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_coordindor_fkey;
       public       postgres    false    2242    225    217            	           2606    36968    sede sede_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 F   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_municipio_fkey;
       public       postgres    false    2236    225    211            	           2606    36973     vehiculo vehiculo_cod_color_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_color_fkey FOREIGN KEY (cod_color) REFERENCES color(cod_color);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_color_fkey;
       public       postgres    false    2210    239    185            	           2606    36978 '   vehiculo vehiculo_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 Q   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_departamento_fkey;
       public       postgres    false    195    239    2220            	           2606    36983     vehiculo vehiculo_cod_linea_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES linea(cod_linea);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_linea_fkey;
       public       postgres    false    205    2230    239            	           2606    36988     vehiculo vehiculo_cod_marca_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_marca_fkey;
       public       postgres    false    239    209    2234            	           2606    36993 $   vehiculo vehiculo_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_municipio_fkey;
       public       postgres    false    2236    211    239            	           2606    36998 -   vehiculo vehiculo_cod_persona_asignacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_persona_asignacion_fkey FOREIGN KEY (cod_persona_asignacion) REFERENCES persona(cod_persona);
 W   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_persona_asignacion_fkey;
       public       postgres    false    2242    217    239            	           2606    37003 "   vehiculo vehiculo_cod_pueston_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_pueston_fkey FOREIGN KEY (cod_pueston) REFERENCES puesto(cod_puesto);
 L   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_pueston_fkey;
       public       postgres    false    221    2247    239            	           2606    37008 $   vehiculo vehiculo_cod_tipo_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_tipo_fkey FOREIGN KEY (cod_tipo_tipo) REFERENCES tipo_tipo(cod_tipo_tipo);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_tipo_fkey;
       public       postgres    false    239    233    2259            	           2606    37013 #   vehiculo vehiculo_cod_tipo_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_uso_fkey FOREIGN KEY (cod_tipo_uso) REFERENCES tipo_uso(cod_tipo_uso);
 M   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_uso_fkey;
       public       postgres    false    239    235    2261            �	      x������ � �      �	      x������ � �      �	   k  x�uR�n�0<���T��S��DR��S.+�J�rL���xm Q�;���]N�4x	gKNⳒ읺�F	��<k0���b]��R�]b��!�Wd��iz���E,���%&��*3�y1���TXC�s��i��V[��,(G!���J��X�AI{Zۛ�ŉTm�2~ �k�9�u,��8/��W�?j��荒�"Ӿe_�"ҝ�ҡ"��`T�"Z��0|t �L"�SK�n��������u��;��LD�d��Va�b���"<;nC���ؘ�� �}�`T��J&"���	��	�C
�*���h�y(�����<'G���c/e��9��|6G��c��kgہLZض�7<<��)˲?V�       �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   -   x�3�t>�� ?O!%U!P���@���Hq�H���M�b���� �mv      �	   M  x�U�Kk�0�ϻ�"��D~����hȣ�Pr٪"vq�Ė.��Ɂ�0`������-Μ�ś+-��R�	)z��'�$@E�S*ho;;��J�@ެ�}��,}�U�o�qW��?�pRS�E��~�*��c4ƪ�K�q�5�3>rlT\�y���o@5��F�ը}ۻ)PN9�(��vv�+f�x�"e`I1V���*��Ӳi/�=��8�C�2:��C�m\���n��q0c,
sV>��-�w3��<�X���ouc"� V��7^��ՐG��e	-:�߮��Rz�ʧtV�KE��Y	1J����_�(�;�����V�_���a͇;f�:�      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   }  x�M�Qo�0��˯�@-myp�A��\�KQ��hI�,�߯���_��䴂p��?R���䘓���l���͡'�I�<J�ch���G�(�e	� `���]�\ VXIl��
�9���$�ku��>{�NR�Ľ�)���J�@@ɤ:C���Vi��A7�I@�U.�z¨xo���5�S���gf�)*u�h�8	IQW�	��x�Ȼ�����"�I`Ȯ�T�ؔ�V~��l�%cC��Z��4}J��5��r�=E�)NZ^�ː�7��zri8�9��sJ�Im��*��}�^�؝r��#��*X�*���F!y� ^D�|�N¦��V���ro�&`��tb�؊�!����ݨ�i�z�Y�2�c���O{�:�� 8��      �	      x������ � �      �	   T   x�3���,.N����,�2�ɯ�/I��L9�K�J�3!<3N�Ī��9�G~�c�鑙�a[r��:C������%N� ]m�      �	     x�mZ[o�8}�����n�^7�&���$-v�}ad5V �^]M~�wfx�S�H��3gfΌ,b���eV��YM�Quj��bX,%���ZOM��M�r!�)���8�i,]��5�U?��'}l�x���+-��2����^�^���}�UX��jlj���wZ�/�ea�~Sä;}lV��;�q��&�{�bY�Uws������rYٍ�iՇ�T�j),ک���p�Kh:Y
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
}����n���Xh�7`]9�S��q����Y�z���>ډ����������2\T      �	   �  x�ETKn![gS~˶��������!��H�~�q̨��~����� MZ9��h�}�\�]T�L�!-�����A�����؛�- �q� F�Q��\�EC���)��N��Z����&AY,Z���T֭GC�)%1��VqJ��]lD�p���K\4vg�[l����ĬYĎ�(Z4IXf�-�2f�!c%�����癊a��N�pd�J��LO�d��]�C�l��ϐ��~������%ː�1ۚ���
��zws���@;�A]��t@�0,<h�fi�i�VM°��H#aT�St���(�Z�a�1�2�㮤�y�A��)ƈ�A�����0�.c>�2&4� S�QGpC1�dP�q��/Ӎ�%�D0�x�R�.���1Q����x�v;�ׇ@��$P�+��D�h��o
!��S(i���h$���v�BJ�R`���8l-�6K���#�-	�G|�(A{���#��z{���ʨ      �	   (   x�3�t/M,I�M�I��JR��9M�8�C8��b���� �3      �	      x����v�F�5<f>_���)�nRb�*��	�	���	w^Ԧ���ԠVϾ�^�?;p;�D~�ý�Z*9S� "�u�}�N�>�k]��2?{�跋�yU��>��m�;{���-��s"ˌ���yq9����K�l!D�ƫ>/���|�.6g��jU~�7���L�HE̒F؅j���U�;���W�%��_�x��^��U�W%��633+-&�Vgf!�䏸���mM��yq~UК����a�4���������D.�J؏�b[.;�j��˪��ɫ|Y���1��YR(��������g7�~[o�*?{�o�/�����e����|052�"�:JY�}��o��=����U�Y�������k�?��n��g2����~i�b��'ZyO����^տ���IH���f�2���~[��~*荮�����c��tcϮ���>���Z�I��-�%��}WT;:��U������)��R��͢�pJW'	^��\<����?���{Yl7���ew�M��q/�̓��<��A��_���������h�x��7�[g�t�F�j���R�ݷ����M~_���}Un�Qt�&t��ާr�p-��]�}�_�~�7�����E�%\����±��������h��|]n�E~�w�}��,�q5��ٙ}Y�
2�����ᰣ�o9�K�xÏ��*M��ckqlG�vzXߓq������&�����.m�S5t15?�Wz�g/6ے��]���Ogo�9[�NMJ^-��Q,�m��['�!��˂��MI�|O[�$�Z�V8ڨ�Qn\o���{���_��]QUE�\כm��v���J��w<j�(hI�EyV�d�wgW9���Á6���|��ʏo
?l悇�_F�v�d��m�o6�~_�|̫�t��L�]M>�����ݪJ��s��"3�ׂޱT�m��@{�h.��6�Ka��s�G����j�y�-�-��y:ͯ��:�KX���Rh%5�K)'������?�bG�6o��W���yQ��i���d���'=֩��va�Q�}I�h�]]�>;�G:�g���璮ж[:QV%�q�䯔���l������k
���]X
IV�&Q�L796��u�p�xSlG�l���ξѩh;��V�7J�9��rSR�K��=���ӯ����bv�SZ81<h8�VO}ttAv	7�5�<[r��QN\'s�Z�Gۙ��d�~/§�i�0�Y�r�����&+��6_l��_V벪�p��B�UƂ�)���0�"���)o��]��P~�O�(�bϝ�͜�i���)Y$���+��}ȫ��W��о˿�ޒ��,�_U��M�n�0#a��Ꮢ�m�o�]z�r�o��n�N��Fe�%�r�4ȃ��8<+6%��Oz��T� �ͽM2����&�,���&�yK�tO^�*�����nK���ӵ�^(���K�Lb��|E���^��k��'�R��D-�s�(�̿�YX�կCx[��i�Z�7q	j������(�ݞ���O�c�bYn���13f�O98�(�W�G��.�E:~W�i�>�}�F�Ӻ���hR�&�S��IR�W�zGzW�k
DϞ�e����P"!~t�3:�Qw�N�]Hͽ����?ELC��J��Sk)v�\���jf�5<��~�7��ѢFdR������K�rO���oh��ké�-�|5v��+���~̛N�T:��ک�����:G�p��W&#�)��W)-(yP�fCO�S�[��4^��^m�c��*�h�F�#�(0����o�zY!��&c����S:䝲(C$�N�Mh�,���PQR\�E���PD�⊂��XX�=w��󖞯y����C���}(�p9�Qt���fV����2S�Ƞ��uIxM�s�X�e�|����Ů� @lWu�R�:wW��&�6���R�<��e�Vx�뜼���?7x���n_��|��̓�W�d2W����@R a4�o�ͦ������ʰty��ۓ&����kV�ԍUR��䯭�x���\¡�����P�
m�Ζ�r�r�zW<Q���~�9�j�=������_[%�ظʯH��(��ܷ����e�k>^�l�	1�j
�R~&��ۇ���?RΖ���A9#�,6��?��诔��������%4_
�o����J�օ�b��N�"E.�G�(<ڗ�C�A�EzG�pP��Z��3�d��bSEs�Y��u�D.�ӡ*)ѹ��4��CJ)��;�&��آ�-��۬�E��}�Q/!���ɸ���F��������W�Oz�J����|�7�l���	��?=n�9��M;���V�*��zЎ���k��4�Ƥ�o��ڗ��o�
_H[�G�YSTA/'�k���ǡ�����7t�λb{�ߏ"�
�8��-�>L9A�tK(���a��ņ~�6{}96U�S�dqF�RBi%;�ϋ{�o���6������P�i�(��j�@+��7����5e+�a�I��$6���z�8Qt�x]��B���L\�g��k^x��Y\;���"���ѷt��"r�ɿ���Ԩ,��'N�F���)F�Z�K�)������m��J���=��|�Kr�;�՚j[~��='O�T$ئK2����J��ԒZ˅�aj�|�ϴmߖ������Ygg{pF��2;$_��)��]���y�����)e�6�q�0�w(,@Ւ����P}��������f�����~&{�)eм�����&�iZ���-%D����E5�ժ����q�;ۮJ޺�p��n�߻�)HT\���Zd��/�������y�Ϳ�PJ'�^y�moJWƟz���,�¹q|�W�_�t���G�d�.�,���QF1��Y��6�`)X%WN�����a��"�i���ʹ�P8I<�����j��a$���"L�����NQ���t�<�~��Es~���X>P���o��Шwɸ�� .<�m�y�]]k�Yv��2��dd\�Ւӡ�u�S/�}E�	}��Ž+}M|xc.��߃1Q����>����\�<J�d�Y���Σ�/}������Q���! �&��������%�Z�4x��1�(v��^��-ě������ʾ��	���nE��]Y�Ep~������)��X�,4�&v޶]��<�F��7�)2vi��Fo}�p����k���/�]C>'c��ꁞb�<���/�j-�O��X$��w��6��E�1)�ͤ��-�^��]�?�{B6�[�5��"�(�w��_L����ל_�f��G�IjT�f�p�M�S�"y
����_�9:�;a*�1x6��$	��_y��2�7/�-p'��]��^��9�E$�jDB��F�������߀*z�oJ��� _�s��T;gf�'N�����z^�V>;�7�I� �<��6�����a��#�֫bDc��TЫ司Q��O�F��#�w��~��Q~h��,�l UU*67+�W��C�������<�K��fk-�N�[�o���'��@i��2�\�١3#�:Ř�ΟVEѧN!�Z��<ʄ��d�hڝ�v�]���z�m�cϫ|I;V$Wmc!��	�[Ș�<0���Б �@^z��MW^MF���˶م�(}���-� K����Si��Z��E�3��bG�������/�mja,�r�V�$���lA��V����m�3�Bw�(ۜ�-)Zi�oF�
8�d.6�m�W��ׇ�ٛ?ȯ�9I^�f:�,'(�Z8����;�a��<ߩTb�ܞ�(�)�$D�-���ap~Ek
Ia����E8)��m�Pb2�fm�PG�����m��ϟ����> qA�y���5�j;{���\^�mx��B�=����n�Wt���	&��NUJ�R�"d�Y8�=���*��<����7�)B�%ƊR�Ԉ�ګ�< ����=h�#m��n��c�`�.�'Y����j��|��0�}�Å�33���d�G.q!ym�e�\T���t�vS�UὩ�;d������iãCO��;�D�9�nM6۬1'�:l��r[,�r"?���:�����-a�Ub���1��p� �U�KT(�B呕��Ntj��SW����wl��UzW|� �᝛�0�sD.�7���V�z�P6N�    ��zy����D�ܦ@�,� 9�]�.9o��5 d� E�si=�g�?c�� I�,�b����aNA�O׿�o��R����6����+7Yz���*�����_�/�:�#��b�Ho�-���٧bWl�!>f�8\�ٜ���d�c�ZH9���
�:P_��"���΃/���P ��(��2��&����@8��W����<�	��l�*�ʇ6j}���b����
��Y*��� �@�6�-]ע���%�o�- @���U%@�Ⱥ� �����= ���W*��Frw��/������r����{s���t��O9�
 Q���R����4�g�/e�e��4.��(Xw�l,a�Pj����22�6j=�҅�2��{��_A�8*ۙL�ous�*9�*��1^��Ej�bS෶6�VH�[�]X����f3ړ��[�����x`��|�T�eY`T��u���.��xw f��_��fz�I&ך8�Y�l!�[��em"�<= ZI�ޚ�>�񽦋�$��8��� j��#x�OPcS�ʴ�E����<S����S���@S��t�BW�z~���Yb��t�Ó���fs���W��D9�I��wI~\����+r��/��.yIq����Ldq�C������Ի����PvU�_l������l�]MC�2A�U���<��q���w��%�c���$5�ڨ����X���5��=r���Y]����/u�,�<U$��)����.�P&>��P�)�P?��޹H�ˑVF�uRae�N���}j�la�Q�G�j[~��}3�U�I������Z�-4�r ���-�[�sn�c�-al{%1`0_Ԇ3�O��[���ْ�I\`!(�l�h��M���	��S����a�N�]���e���D����m�+c��&�䇦��z���W��7�J�䁗%rh��a��I�H30,���D�x�%�:����! �[�T�Y�F�$��6��g�54�����*2S.�aF��WQ��l�1�/*:e���/@�H�-(���h���~ڐ���>�-�6�y�+&5u(O\`�yE���Dg�Y�Y���TLK���lc��J�P�c9��$Y�ӓF�2�M	�"=��UI�%��)xT���.���i����
ƷI��<�8����Y���$j`&8��S�.�J��9W�����F }}�x5�x�3:�)�����_��ى�yL\"瓰iҁ�-���B��\�� �,�GQ6��n��J���`�_��ڙ�Rʈ!�`��"�0�����< nl �u�̿���F��Yk�'��ZzN��G���Y�e}�qNx�V���r��,[��bM$���m�4�m�_�lY �@6�1�$�L�@� B���
�up���95��vT�&�o7�%��^d+ل[�wO�~]A��;�m�k�R~�-g�:�6�m�N/@B����P���;j#���Y$�B;�ӄ2��#+�(�WÎ����َ��<��F<����򱨹^	�C���ꋚ.*�@���j�j��sv�/'�Pq�D2�"�E��,_�๢j�O(�?$M��/�Dk������ L�ݺ�K�
�����֦��"?k�Qv��PW��������I\v'm�P#�۪�u������vU���r�er�{��E�/�P�����c���8�~F;K�R�U
(�i)6�jǒy��mJ�Q�נM��Z����.�����<Ak�o���%��B��v��������("�ҋ)��ֽA���bU�pW�H�l+�Ԋ Vsoz����[��r☼.'�:~bAr�2H�k/��9�d�y���C�öoAX��l�Dy���W��XZ�Ī\�\{>۱�(���j�i�M��g�V�v�z�,��<��Ăj:l{�*�/s�:?�s�x��Q�j�V��j2kN/�	��B�&[�`>�ҕ3�j0`#)�3/�e͎�0��*��NY^{��R��^Lj�`+� �W�9��+	��U��џ[�D����ﵗ�q��R���P,Bӎ��N{�ސ�����G7'3d*f��PSr4zƯ:�ޟ=� !����N�e�/�ǭz�b�z�ag����?���������<X��3��"�^sK�����h��H�N'v���M�e5^@�}���K���k��*���u�[3��ߟ�"BY�+R��%^���h	��[:�ґ�1-v-5��ͻ;:xò���K8,E�"�H�X�����y�N�hx�<n���4��Y�ع� 9m��.�S����H����3�^�0�/��o袽-vz��ރq��y�.�lU�D"���� �ܖ��V���n:�IR�&�/SO2f4���F��Y�����@�m���R�@87�!��X�,�u�B��^U�I�!��?�R���N��yP^�Ԋw��e_%Y��/*��Ĵ�r.jS�dF�%�����6����g����*8�<��������̪�Dђ���I9w�4�r9��RK�W��,(1��A�f��,��^l��@ ���?3R��L. >�%������r[v����J}[�C޸5Y&f]z@����4E�yE޳�
���6��d��E����4#;$��?H>�������(=��1j�l�BI���EO|u���O�i*� �$���L�sc6첷�>e�[�/y�\��!'ӛ��-���@��5Jw��?�2���yғ
�I8�A_ d&�d#h�eƉl���x�n��ak�z� ��J��۵�	�����ۂ�{����B�W���� VR�1�"��iQm .�H���B{��3="'���T :W��/SX�s����\�ٛ�t��֘0���(
��,��ԅM!��~�_���Y�O����ѥ�FfK�v��������!+A���N����nRܙb�ž�<�B��uCJ�����v�2J��,=~��!h�A��c��٭s������ӧ	������ǥM"������v�;���C���2��h��˶���0���,�Flư �y�ԩ�=�g�&���
�Y�Y2a�zp���A8���,@\'�2?�"r�1Kz�HX�6g�6?�c�����'+���O�RR���{�ˤX����_���Mϒ8���4&AjxR?�%�AO��ܔ�z?6��fv�HO{�>�ᖟ̏lP��'�c`��,|�3Eю�����{t�C�i��g��q����m5�WX��������4���
A���v��Ň�E�����t�6;4㼂�eBA��t��zfh���X�����ͽ�7����� �9#eWD˔\���?B2��5��H�l$�23@�q`�YtH�Z��Ж}��oR))t��UNGIBH
9��n��x�՗�?"���PFX��-yR�a���yz�Y>L5� Ü�Y$ש���'���(�a��S�Ȅ�p��d�30h]���9 '��6͕�t�
�lBॠ48�H�	�A��ژ����&q7�v���	�4�>�d��-
�0dZ?��_&�A�]U"��--j`��qz�[z=Z�\�T�X�Rz�A�T�L/t��Gwޛ�F��³}�Ǣ ���&C��Y��U�	��ج�e�&��:��	ˋÉy;�Ӎ;� �7�x��R~%�jn�<�a�[{l���mt�er��²���U_J��q<[�?8a$�/�<��Ժ��啮�M�]!��'�?By-F�E�+FB�6㸣�|U�M~�髇eMs� b����j�36Mަ�e�vwWo�"��)����mK���
�% �>&�v�`W���;UJ�mjf�a\�����b�]�X/��d(��9�Ke�"��\:�AE�q,M�3�E��tf�!�I(�Puܮ�Na��|)~���:�4	&]6�zh�P�(�{$��t�����J�Rjv^QdPT�~P[9�8��R��lv����SD[����?���b[z��n�Dk;�*Ώ8WY
P'f~���-Q����&��A_#W}����s5�o�����Ĩ�	�e��oO�    il�u��'1����x��J��]/��F�'��y���8�c�T��+�wg CV�'T����A?�b�Q$*-oP�^��:�ه�ƔƉ�N=�*�	φ'<��Y���-�N�+SM0?N�vF,B�����!��C�Q�����#a��BB���3�~{wa�����Ř�b���V-c�ǡ�岸���4��W��Q+uw}�}����r��� 3�Ʃ����,(`�ӯe�Y]%g}��dZ�2U��5����z�	 P"CU� �, �l��}�:��z����K�E�[Φ��@Ͱ�5��%T|�
��quǫ@�4`�B������8?{�L2�'ՙUK���t4"sh��ϝ]|Y&lUI�fT)�.��9�2N�GZ��D����fk���Sϣ~��Ǎ�O�C����w���Q��H<ؗ��0霂�eQ�C�ۀ��G'RP�#�]Z�;�.�����6���t��Rq�^Z�@f����K��X����;�(H�q�Ӏ�:?����t��$���z�?o1��e�����觛��PSl�����N��0�R=��,�������(�y?SWyPQ#,瓭S�B-%�HT�B�yNQ텻�����. -	����D����\w� Gw>����p��~�$Qa8��͖	�����OTy�m1WE�8Z4�;�Ul��9���\>����)�Qف�ar"j�AG�I@z�n����q�������z#=��:&�Z�ZDV�"5\r�h��V���h�e��H�ȸ,2N�.RF4��|+�ϯ�MI�ڤqb&���Ј���n�o���(��#%=@-\����o��E'�3��;�:��>ၥ�.��P����ϵ��~�5�ڷ���i����d�b�}br����I֕!K�\��:K�LYwT��H��`��S0$K�x�\Rb�p0/�P�߽�ж��-���߆Ǜэ��XW�$��4{ K��3�%�ch��L�R��ܷnf �[��wz��U�Y�鉣vd0�U���vX���x�z4�e���B8��B�Jʣ�.i�m�+��>J)1ZE��}�����c�����B�AC������vwlGQ�0#�=�_n#յ,(a�$_�����SKR����+�Z�� K��4��o���g�A(�4�&�>�}VMh�g���讀	tm�9���?Y����t�O�I�E-n�W
 A�eE7�X�44<��C����RУ�So�=��#&�"]�-h�ɱ�[he��ܴgz�A����W[�{`W���7�bT�4�8�D [�#��!C0Ӛ�Ӎ���-i?ݒ��難�`�{u��g��IY]T��(L���sbm��#������7~ĒŨ�L�	�b�-�pّ$���7ܥ���a��J	Iv�:H����r7�b�u���,�z�a7b�rbQ	<E��ǦC�u�����&#+-�ر���B�c�����b/j�wj=�pzY�=��W%�y�g�:����8������ӽ��^�N{V�A�8{q��7n�M����,V�\�d.-S@my��o�K�(©��e=n�bX��2(�q׍,����)�4� yO��a%���~��ُ�'�S��o.�}�u���]sV��<�I���9傣3o�'��8����Hj#� ��Nt3�����@�8���pl�D
ϙd>���*WA�������fFnU @�r�^�w�Cݠ��:Q��xBGv{��$�@R|�t>��7��v���=z66��г����ͫFy^֛ݡ����X�
�y��M$�ZIcf�q�m����c@IM�V��X�S��`����IX�!ݶ�a����SZ�q�i���Y���<�aJji�8	w�m�q�!gs�/W�>\��a�(	�{��w�!G�x���z��L[C�+n����l���@���3�[;���ϛ��Ï�bI4�Q���ƛ{J��n|f=8�c�?c1�!�Pc 9
�v�Nȴ:���%����#$��7 ��k�5\��r��6�Ű�E3y�}�@���V�'�p=�O<�0����G>4�AQ��vv�éw�����U�3��ªS�JlSFK�����A�O����v�eޒ$�����D94�Z�?^>ғ�k����2��D���R��"�
���}�lF��C�p��^�_:n�J3��H��
�����C�����h̅Ø����	D�c=�vRY3"m<d�I�1�R�c��_�[���U�a=�L2ˇ�^.�x=�w��^��x�%f��sJP�~Y���htӲ��)d���/��J7?��|-v{�QF�Hd� �S�f�p��C��5�L)�FC2j1)���c�t����偎/���#�J��3�Hl|ipw���4���c4b�1�9{�-���H�#��Rib�%����5`�E���_����m:�G]��Vd���!�*���y�W���v�	�ti(t�3��U���Q�����|���>���aSr���p�r��	�S��X_�Af�O_(�%��c �<��zr�Bʄ��E�/~���7��qa�Q��PJeHH����e���|�������ifČ����\"�B{�\ʂ����y���*��
�{H#;�RN����_���v�g�w�pulj�y\:������ap�M8�֒�{-�D�ٷ��c�٫m�9,�*!�R��Z��k���C��o�����xޛ�#1�a�S���(n{0����`i��i'{L�Tᢎ�=��.?����5��!���y�S�׀p;�ѹt[��)�&��9�(&ӊ�z�!�H S�����9#�>��[�jg�S�*���t5;ռ��f	Ў�vY�6�=�pb��Lf�HHئ��-�e#�Y��S,�x\nJ�R.�Kk�+so�������Ժ�����3i����]�_z�l�]zFĐ*��#f��LF�n�(~jy��=c`:��a=�I��L�,hx4���I�o��ܣB<V��N�:Ԡ��:�d�ӹ<����G�C�>�}�Q�AL�+1�]������H|Rg��-1kMb��((gU�gݴ�<o��O���x4�4�D'W�/��xr����8{���mrt�W9r�d��])�m�٘&�T�*o1�Od��RY�,�E20e�35>��S��}~��:���^�(����|'�X6(�o������|�1jĦ�����mv@�i,Ͷ�{�ӡ��!܆-?�)2��|s^�m�� �eb<�9�/UҙH*��BI�?n`*��Z�ke�x��AY���tǜ�ّ����o'K�g�^��"��B�	�BO�[��2�A#ˇP���r�Y�}�@��̳T"�L��ҵ]d�1^�ǔ�����Y����]�yD�I�40����r@��ҡ��ł!�@�;������:��L�,o� �|`3
��'��*��9A�x��V�����B7���Ѝ�Q.��V����Դ(���Ǜ����ϟ�x��8n�tN\��sPj�^��ԪlQp�캓��G���q�M�,rU~k�C�T��<l�Ki4FF����%��~��	e���{/�M ɑ�""SJk�rP#ݿ�_�|�ǟP����&gUi�
�	�6���O���w�3qY4=U��)].�2�[]����,�$wחܤv��G��;�|&h��\�.�j�|<�+��AL�ZI�J%noP*l�|3� (���2�K�I3K#�1)YL���X��xF�ԗuU��@H?)�8`6��(7
Z�	�����=84C'�$�]��L�j�d�HSR��6�a�HzXԅGvUSi�$���L�f ���];�UY�BP���l�I�vR��B�������zSl{�s�Q��P&��0I��Pa���/ڨ��n�F�g)�.1�����$]@H�h���j�t^����t8�mt�w
�jb�)�!�y�7��s�]�q�q�i��˥I���vhKGX�%���,υ��dh�zUj�zެ��ۡՄD��v�e�b�J��ȑ��0�������K �˦1t~�F�v���X$A��fi�Q��єe#M��	u    ������3�Z����ܤ����w�Ћd��7|%�"Ց��R�Q-�c3�����8�TY�Fc������x� 5���qŋ�d#�b�w��Xv����S[���"�x0�2�u0zT�$���b���DS�H�1.&��f'��Z4��&���v�7�V�jn��'N���=��@�:hg�eѢ(�ɦc���	d����f50�[����	�z���E),�ܩ!c0ϋ&������d��-��|ny��RJK��79�-�Z.#%
�( ��p�IJy6詝��
Q��dx
Ҍ�}�'^��d"�Ɉ�`v���a�v̖�W+e��G�'�	8�����2�*�o����*���o�ѧ���8pmV/o4l���ڃG<��c^Qp�L��/w����n��9����\;��Ϯ��Q��)�-��*�WY	����a�
ǋ�ľnr�گ�侏�.����d��0@�w�aC��[x���C0��Qt�"<�F��(^����Ӛb�VVm�X�膳�f00����m�0���ñ���d�"��0���ٿ��)�0��HUK�"�Ct"�B
���{:̣o��|����)$��T�!~�(����k���EB�7��Pvc�/��T��iz���G+��~���:=/C�lzI	婠��+��q&u??��[E�5VJ@S|��HK�l�}�m�:1n�9K/�@q�W�����c,}v���ġ�������g�*��m�؅	敾.�9��dw�:�.�"6��	�G�7�G/*��6�p��Өh��%C�4��5�A(�_��x�š��Qޱ?�����6Td�dC�تo6�ru�A�X�����f6��ecO�X���(9�wd�v��ܣ�[|�9gM�LeB�R;��<�v�w�ͮ\5���:O ��D��;��)n@[�.��:,A�Fg~����4zvx���X�j�a������s�.�t�R~b��?�Ь��ܥw �C����UBt#"Cn��x@��}7��/B`������ȫL-m�q��V{Q����v�#aL�Ց�ڱ4����(�=��y�:i���%�%����z�%�^���;�!� *�p����IO�$<���̽R8�O�|̻��Qd#���z�������>��f�����[X���6��zy0ة��#��F�.���J���N��o�[!�~��/R2H�o�R鼃lCؤ�9n;L��Z،ʨFd6U�5T=-�F'
:(<$�5D��ڮ6��t׳�Q�b/�Ku�ˀ��d-��=kUFw��z�P��ض^*OƼb�A�.��?��P+A�Fƨ����kהD�������j
�����=�W}�@�ܫ�v������0�I�� Q�$�Aq�1{A�*\������@�U9=_ϜT��H\C�|��xޯ�q+��o�p��"���x&`[[�k0��S��%+O�h���ۉ��lB�W N�Kw�.T�`�	߷������y��'7���̎��}��j �%�u�>x�j��|(6%�RFY���;�.��N�(2�w����w�����КK`��tƃb��T�v��ۦ�Ս�?r`�2e������=��GZ�|���v���R��Z�mk���w @�����"2�]���v�T2=e�"�M����y�Q���Pw��T�)|K���6�%{e���֋���eC�ZhR����d�+͆v�m8K����@6�}��v��^��5كߺ�2-��x�+�D@r����eŞ6	�w���b�i^�˳�j�����6�� �VG�^��Bb;:�z>cW�5FG���s����W?����ѥ�Mf]�4`�zh�0��m?V|,�F֐�+�Rx�=Z�%t�@�*�&6n<�������8���X	���*�Ԣ�"[�`:��E�������z��E�/I��Y�1ñX{/t�_��c)�6�I��F ��Q�t��PD��.�^η���e���NW�����ϰW���Bo�����Fb������B[�U���S�/U�e&q~���k�	X�S����?+O1���>:����?(%&���.�t��C�yp�����7�j�^2������t7�II��g�᪝��6���|u:=���vp?�kS�#��,�,PEB�PB�;���CY��Io�io�y�VF�e����L�O��k� ��U����r�	�O5Ϭ��q�N�ǎ]��u	��.o
_�)_H'���R�x���j�]|�� Gt61/;�=�9�
:��2/�ؖ�u���f4�c"ӔJELH�3���%y��I9$����}x�t��'��O��P=�~x
]Ћ���X��r�H�h�i�$�*k�6:7�2ǈyn"ub�J��h�*��V���i��+@#�����L�{�hir�-pp �

��n���).�L�R�0���gO�҉�Z������L&�����M�&�f^�o�ٻ��)�|,7�5�Ў2=��t�9��
B۸���r[��sBHB�HuZ�AJ�p/C/������d�x�/�R���,�ZM�'�w��ve����{[�y�M P7�q��Ct��P�g�j�	=Vj���^J"�l$��	��@���.�h��7������p�&��Z@G��Ο
;��W9]���M���y(��n;	���&��?\�}��b�*(꒏�^��&����W�B^{9{�^�cB�KҺv�+�M�"(�'���p�E��@��%�'.	X�i��F�}���1�F��8w`�u��_-�W�?
Zd
��HT�����Yyڢd�匤vr���Y��_���dݍ׼�7��|R��7�^��o
p�(���C���u����X0 �,q8�@R��~��5�*9&��&4�����z�E�?�Y�����-���t$�G�;9�N�̃�7��vB��Z��,������p��P���k��C@�����(�%B��J�Yi�t�q�B�m��_�y~�v�FY��V��e*D5�%l�^���ً��,ݕHA�L���AWM23h�Ѝ��[ǖ5
5����hg������F�z�5���}����%^���2 �4�	۳����X-(�B��n���X��|�sK�C ��C�H�S�u8+*/�-��eO��`�
$��u�V�Bo6 r^>�L�A� #�v����-��8�|(�l/3 I�۽*�̂V�;��ᒂ짳��s����RӖuh�}����r7����q���z�^���,K`$����Zv�.�xF�A�͏,���8�O��n=��S�.=����驝�O,�Lbe�ɯ.Fc��9$�<��C]��~F�AG�-*� ��-���X2ߢ葯B'�p��S
B|� �TT��sV���J�٢�(b��3�,l8���'��@�� �K+����\��M�஫�S���&�t�E4��bIf�[�җE�w~�~�'�T)؟@wJqd�mMV��^�C�����Q�mfۃ'^&.�x�ݏV����$[���J(5���ɔш �R#Yߢo(��<O�X�<C�<"�fͬ���Ѻ��5����G��n�xؔ�|��J!V'ϣ�0��~�?���+>t ��8
����'��`���<M㋠�.X�6��e�y�ռPbΎF���}���lD��v��\\O�~^�3�F/|f���Q�p(�����2r���Y��,�Q
TCb���[A��tv6��m��7���������e�TJ�z�����0�������{�c�� ���6�V���܍�������+����0��*#�O	��HL�¦�Kj4��d���=1c��;�FN��W�B����d���YK�]O��6`��_�*�����Hrn⹍\춬�X����#�k;d��VZ��ud�; ���y�3p��y7��,����𴭀�qd������m]yR���zM���N`@������\�>�M��;�:��j��.Xe$x���X���~4�5��ɬ�l���Q�������}�(ʰY0���    qR<M�z�B�*X٥sc��J���Jp�,�I�}`�7
[�z�;�;�ƗRT,T�f�:,�Su�7d��_�4�z��G��6��L"�v5�I�n0pi��{��|Yo7ŗPjJ��Wh,m�&km��CѰ���?��,���a|��f-�!�ĤO�n�j�Ĕ���&�8���)��08��זs�4�f��� u�cI�R9�W1br�-����%oP(Z����С�	h��,��ɲ-�-�1*m����O/*��N��X�q%b:Xk�����&b��J"M3����wz��Һ���"]#�|NOu]���U��t]|�`�9%d�SO�w����ϖ��p%@���/_{��T|mE5�^_�����ڢ� /K~�2��<��������P�HDF'`9�
Bˈ~�7�>�$G׈�J�#Gii
�2nQZq��ϊ=f|����8�?�i��֙9@�o�$���a�W�Q��N��T'*����ӌo|��7���`S��s�N2�E7w,-�-IWz���,���2I��i�KM�Lp����.���}���J7!{(������x�v�E�{�z���쯣*h� �����ݕ����ǌ�I�4�w�a��.�������S���8>�j����SI}VW9��;_?�n:6R&�h�I���j�n���m�s��
o�PZ�ء�Z�m
���O�w�`���;w��e ��H&��T!��[�P�ʴ����}N�a%@Gv��5��q �Æ��?���)����l����C�!�u���~����� q���J	4��J�*��f�����ĭ�)l��GV `Fo�+(�N�0��?V�Z	;��`��,�ha��n��b��� k!�番N��lH��3���$�U��҆ymC�4�n��b]
 �&rA0�}ٹ���/��g���D{D,�ˡ?�q�y`C�8��MAk�,�j�.�@*����>���S
�i3��Y��5�IQv3A�i�F��X��e	��Ho ���^5ڥh�~���VC{��1	=���>�;�vD��~)�A�&S.�d������(�4�Q�
(�-��Jd�-E-���F~��z������&��,r�V��վ����u�i��;��`|���ߛe�},h;4c�������;{v�>���#;#M���-��~\+���NsD���T�PI�*��؂�5�O�l��� r���%ф:��/�b�䵡w~^qvw�yQ5?�����e���,�?�Ş��[g0K�_�bn����+X�WL0��P�ӵ0?��߂F�
�����.������.M���¡���y�ST�S�w�D=��A�5&��ج=Q �c(��y�5��ƴ��!2��)��h� :���#��V�i`�np�e?�f�^��ed8D�Ԟ��w���-�n�n��s݆ϾǠEY�ִ����-e %�����`�Nd&2BS���ܿ�����x��X"]
q�HO�a\ף-u�Ԯ�/�C�!��(�9�{�ٝE�B���#UWž�x�#zr��Lequ��n��o/���cя�TQ1����,k'2r�t�f\�<�ϝ�U�n��J�{���/�^���Nx�='N�rh&S�1_�0⍎�k09�yȇ�*�Ӷ��8@���# Pז�>��بT��δ����� 
zt��qq�#��Q95#�ٸ�<8`��=���.�*
>-32G�lp��4NR��Qɨ����0�@�s	b@�w�V&�T��Ǌw�_ʕ�W�޸o�UcL��"�6Vxעu����x�m�/�PG[*M�v��P�b�cM���d�A�N�-�Y��Z��I~^G8�����k�4n���,Б�XM�v�dQ�p��}ZM�s,
U���o}���~h
��J��2��_�6���`�m�i����F;�bэ���	TZ'���f���"ǩ�2R'�E֦SD,�b�h&HR�D�e(�]�U�(�K��7�N�[d�4���?�8;�7�rR 	�<���J�Ϸ���sd�"�V���Nv�S��8t�������!6;�AB�F����n���!��|Hp:�Q�w+3z�󩕜��l�-t`���DK��u)_��(`�=Ĩ��@?�i�x��t���O&�$0�#0֗UQ7�:��6ت��}Ls:���k���{��Sr.�e���� P��E�Ӣ
��VuWy��uޒzZȼ����I�]3��Vvd@whaR��7�����\(��� �e$v[�'��ƣ�rY;��T?�%�c�(9?���W�&�#F#D��Rb�9{��Go���5�d���''�Ў�Jf�����{/Nԥ�G�Ih���A�pT��fL���QV��o:]��54��?�f�
jRh���7C)Fq�J�1@o���l��ْx����0�c���&c��0�RQ�L�9�C��Y͠��� �7K�6��k��P��Y�3ôk���T$ֈt�q��^�we3��I�:l�f�"H��'�M��ȅ�<Rm�D�x�e�mf�**����@2��l�$�]V�a�3�zv�����)�f�Ln�C�4sA��J�����C��ᾡ�d�A)!�9s�V��ӳl!%��Dȍ�E )�OXa<f�U�}�#Ք�d/�n�r}�=W��e�qz�rb�;������� ��@�Cb�R�շhUEf��!�E3���\y����ȑ���L3<���d?;lwM��u75�C�~���.��@A<��������M��/}A�1��]�������mk
����YvӗWR�Ż�����	V���/����0E�q�B��J���g��P��z������c���)��U�0���q�]}	���s��e����Q$�@+��T�y�7ǚ1� c1��4�v
� ��E�{�Qȃ�i\�pM�����f1&:`�'�u��YtY�?��)�FY/@��u�[ӆ}�&��Em�H�w����TC??�Es����2�L�`�6'�T&���$���S�Ya,6�y��j11P�(��]Fz
HX=��N\#-�1yw�>�����#� ���&2���K�d*o4:�����_˶��x�W����(ab�rF�aNy��L���\2nv���mI�h�#ŦM�v���7~{X=�����X<�S��
��q�J��?cW�C��Iq9 �-r���</�C1�12k"!9t�2 hRv�Z����{C.���pjC~s�~=9z�V��_�P���t�u6d��4tky��jc\��T��%���g��^<L�݌22��- 
��L���V���~�݅��fc�S����n"���T�����P�IV*� e��3f_n������-0���hN#")L'G�S�F�u@u�v2<[
IR������h H��%��7���T��%fT�T_�9l�*'�l8u�c!ρ�!ͭ����Ck7�O@�%�T�(��Sǽ�Vr�wG��Bг�#-KL,�����O�o��oF/I�K#q������8J�=���;C�p��u	���	,�6��.�s/�(�ʗg�9��!���H@����H�6�hip^�ۏ��x1揲��\g�C�Cܹ������<_�_��.͢ ��$J���5c7}Q��A���sxC=���~��C@:$;!��U��.}A�B��u��>�k�mU}_)"A��y���N?-�����/��S���SS��*���f�Y����@�"��PO����*?�]}��Q��g!�JO�V#���z�/6�
�k:>���|��NS��(3+%碶 5�w�:Σ�W�|�W��}Y�$�J��I��o?�f
ʟ|a?X8����Y�򲝔yG���2��)��g���DR�A�[������eo���\RLԞqL2��I=��_�?��3J^x�����DbN�̂��N����G䙔�5�x�O�c!j�0kr���ə�&�8�E_V�>ş{H���B�ٶ�s�@���<�j�m��C^V�c=�gfZk1�t7��}I�䎧�]�R������,�gvV� x	|]��4e�?���2|�~�����`��j�
�&ǕѲ�    <	�v��N�0H/�*��%	%N,�TR�$8.��[͆PTWz>�lrc�t[���B
^����F���j�AD�m��3�K�*���"�����-��A�{fG yB�3;B�s����Ve�E�s֫" C�Idld��2�o��֊�z%�#
�����`���W�c_O9EY�ݕ%j�u'W��`c��DdRā���
]���@����h���vza�tq�Gn�z�),"Gz ���;e�놶�+
��IӗUND�UyRu����p?��_�bC7�Z%�@z2䓼>l��M7�#�4��g1Oz�D��+�����F����b�)|}9���&��O����f�v��c~(ZͶ%)�=�:�~:�f#�<L�m��xf;�6՛Y5`ϟ��G
2��:�g姓��Tt�d�V�� #Oh+w˺�t���t*L�ƍ��WM�,���U�:�PA��@�8<�D����	xռG�@�Ow�3,p&��TjZ��8��%6lm;l���~�Ǐ���>h$!�",�R�'n��uS軐�G�|��8�nN-�B(��>�ʞR�97hk�O �T}�0#a"Q�6k���}���v�];a�;�sd�"A�6���e���y�+!�IP%�/d$��
�c�96�}m�s7^�.�<E}�%,��©�B_R#{�m�z�fOv@���0�{⊑�U=�$��`(a D$��ˍ^��#��Ro}�1��mJ�j~�*�6�� ��	.��a�G��P��K\M��V؅��U�:'[ϞA�a0���	��,q�!���[��d����O��R9[
����9!�4���e���f�;�eqK�@m�^��9�h��+Ⱥ�c7�B��ԃ\�0��H���k��v��b)�,���Xi�r�E�m��d��0}��Æ`_p ����gn��i��˳G���=~W�
Jr0�{��a��ȧ�� �&Z��|�>�+_��?$DfT:[-�^�x�Ho����C�E��A����,F��,�ɾbA������	�h~*�SxmafP��-�ɏ�#@��PA���p���P ���Z	��	~�Շ?/�����;ު7ȑ�GA�W��`l�>�� =+8���U�%����0����c�ur�2��X%R��Ëu�m�Ն��a=m��FOFL�uj�����MU4�0�"r��XyzaW�{U��*��lɦ'V�����QAo+� �"��.�!I���Rh5�w�~"��V�fԯ�J�iLP��{,z�[;��IR#�ߏ%A9e0&�ͳ^�]���ۏ	g#GC@�������dK~k�`��j-�IP�DM7�V�<��ft�����&'������$�M��B�Fm�c��NSSbl��)�������L�H��>��h����;4�[�)��SClW*����'�1GVë��v����!����Q�����@�,�q7	z�v4��i������a-����!�U�t&�l*b�4!�z�.�����2߅���51�� ����o�������\n�dִI��@m��H�J0�!6 2��#Lfj���駌j��Qr�j��v���$B�f�z5�>��Z��s�������m?�]SRT���Fȋd�:�T`�ѧ�q�R�x��S�I�Dj`��@$�}�5P����F0ER��cU�����2����������-o����Uӹ,�Y�O���%���C=����#�����.�e[pE�>�:���K�B�ٓt�X���RG�wMG�r�@�|�Z��,�LN2��DЅ1�d��=&�s��g���	X��	0O�|����|(�	!tI���pa�������x��nm����,��/J1�(�z��/x�O������-��aq\�_�T-}�"ل�~�1=cN~h�摁�u����Q/]���Ǉ��a�\�M*$h�0�S+"����ʓ��|��b	m��n����4���nHX��7|z�O9=]�"�جy!�kS�j�����wMB
�H&�6�&��9���1w#]��DF���t�dȅ�s?%���n_�J� ���[��������a8Ђ�;vn����a����)��M��d���?{�ߗxځjBXY�RC���q�Ȕ<l�.��^�[�"Td�ձR�V������
��)c��?lP���x�x���R�6�3#�i�m���0����%l�/�z�ZFi��bvA1�b�p�в��K���yQ=���Sti�I�c8k̦l����`���95�C���6�:���k!��b��w�/&�̒��	��8�i�<(|ٕ���B��e������\�|�J�B���%֟�	�Bk�����`oGs�&3��qJ-0����c�>B�p7�iGҖ;8w�iESΓ��ه��B��}�uQ��zy��y�5_�̓�#�<[�;�o�6n�Z#	���?�[ʂv�`���N��q
2��u��K��4m��*EO;�E	� ����2����U�_�#f�Y�Dc-,H��~V[�Ȏ~~S����7�,
�|�HcR��݈_�4���e��?W�7��%��ӕ�s�N-���AW�OzP�j�^�: WȆ����سY1�Sk#P���Qv�Ο�b�C y��Y��P�m5R/g�՛��c�D�}頥�5�r�j9r�iJ4m�\��}�$��/�$Q�'��P��� V�+��`�?�����XpKQL�l�V�� [�!��[l�m�����1�$v�t�y��(�^竲�-Y�{Qa$Æ}Y
�ȱ����ľ�ܳf���&:��w��`?h<R�yk� �Si-�o7~�J�pbr�9J��,��\T'�֩�,h�?tu�V)���9`�{�����g�́T/�࢙��J��[�Qk�	�Q��A���8��ǖ��i.^��o�V����p!�vd���)�A��8�q�� ]>�g�����C�r`��'g��C������B���������0w�ƚa�)�a��g\tn��okZ�:��ٚ�'X9o�v�ʶ9}pRU����H�D�tV�8�t��NЉ��2�`B�I^�b\'�~<!�ޱHf[�z���Pu��с�w���.��R�wf~����!�ԯȅ�j����-osd	􎿄x:M����8Q�\e���D���هr]���(���ۤP*���)���.�[�6C�yӍK9*�g]�Y�6=��gS��	��D��][�3�+f��ۉT�r^�: '4�kd��hj_,�r�N���`>�`:�l������T��3���f�R8
�|^r���ב\�W�&US������G�0Ӣ�}C�DǷ��r	Z�htJ���B,����!������|��M,e�.Z��"T`y"��?������&�>���cP��jvU�O� 3�a�Xջ���0A�ASyx���g�ȺO7g1YPIZu����mq_,a�A?��f?a-lj��q��l�h�8�6%�Q��/7?���zH9x<���l�O�Sm<���< w���ár���;�(N�#%ہ"g�P�]�阣��H�0��8GA�v<iy�L���E_�6�2�d~�ک��B��vHL��ߖ)��Zd��*�qBߣ�Î4���&J觹��U�ٗ� �(vA���Y٠5�s/�۷(�e5�����,Yd:Ll�� ��;n�%n�Ö���` �l_�^��X��@�>��h��4����fs����X��W�5��z`[�(�)��M�������!��5��/vx�jp�`�S�:J˹'h��<T�w*֚s��M�-��m��|�H��C��$�R�7/�V�� sdV#$E1�cA�輳�s�l���F���N�LĪA���d�>!����FG�@��=�9�m�����PP
�dи 4EKߘ�4��z��w�T>o\�$3���$Iʍ}�-�z=����O���OQ��(K}k�"d���+��U+�7N�!=�\$*=b�M8	u}	�@V}�s���N��z���ѬG�pS�DT�d�÷���	�0 � �Ú#b������I�)`�'J��!J����?�˺��uvy��s����XՈ\e�,�Td�iy��Zz#�h^ �  t����)9�ș )�t�C��G�3�%��[\aJ��=��O��p ��d�9`�o�	�f�	d7'�������䭼^u���#;�R!��Ͳ�&K�����
:HmŐ2�V���^��0�F��)$m�»b� �r/��� '�P<@Oi��3-͟*�W�|ƞ�x�i���YMӔ�5�Hi#[�J2�����"T��y�x��89�.Uj�����<�W�ͩ:R=�6����ZS/��_�zG�}���6T��Kv�O��-�^`�K��M~<gY*Eg8rp�@;���*Gi�M��o�?mh$OY���'�����凭��w���7�|6ʅt�#cC�2�w��WO>a��L>�(�4K����E]m�� �씖�r���*%��lV�5P{e�d0	�W|�Y^5���}�/E,�!����^�u]=xN_yO��m�]�^��)
�#_���L ��w5Jh�]IT*#k��N)l�]�V0�I|��	�z�����HI9`�å��'q~x�L�!��"@���
F2�S��&������D^�7��@d��]jݼ�˩u�8'��`�(�Ԇ�Na&K�>��7��o�с�(�#�,I�R�ۧ�`^MA �dl7���9}�1S����L4�D�ѥ�,��n�>a~��z]��*��d�I��ӣ�3��@�D��xhMk*��Yl���$�X���ҩr��-6Љ?ܗJ@�f���c0F3�L	'W2#m��G��+/-{Y��4|�,���l�p: _17Vvy��65��.��P�ys�^��B�o}_��2׫z5*�AC�F�S�@���	���<G۱��h�ܫNg�i��ִ�\:K�
��{9|$��a
>tb��W�b~���F��p��_~�]�O"�=�� �3�{7-P�BS; ����UQR�2ź�o����dl��:.��Pm�w��s3E��F6y3� ��N�����mɱ�(�fil��-!e��y7�ﮎ��5��r�of�Ŭ/&��0�/��X2r�@�X�t��^1����5���¥� ���E+��"�Gd��"���bH�f,�Rˊ���m(N���� �ԘRYZs�Bĺd����C�t_��g[8j���B�6�ń15 5�7��#�M���8M��S��6����V����I�ɦ��҇����s��6��J�׈G\�BI�Y敞�|�)d�x0��q��'�)���>[.L�eZ��?B<q�R/��7�������/���疒BU�"��'\|Q�ni�H���S�[NR�>?�PX��!�aկs�w���+Jf/y^�W@��۞ϯ�on�������v�]C��<�H2��:���N���f�4_6{���t]�F��	f��=h
���]Y�Y��U���dn��;��,���o�tA��H����v�?P�qX�*x�"fŬ̴����Nê�o��|W?xW.k�]�=�|v��TR�`#���P������0���#'D��y����[�}6ưݏ�����#��kO�.��+"Z.�&�3ʁ�]S(���R)I]IMxvٔ�>���&���#䚓(0��Ș�ɃU�|_��aw����A�� �0d����n��X9��߯V����=���&��}�6QW����	ݎ�W� N����s��0S��y&Np��ۜ�s&#�+.�=�r���F�]�y�s^�.1����M8u�	:MV΢�O��B^z��;�-EngU�3�����L�,yq�9N��̵��)@��X����Y��{*�j\����Z�C&`���(�m&����&��ha^G=��1F)�y��:N�p�h�t����i�s.n�0+�cYW(ou�s��Gf�p�FQ3	��  r��t���L��f��-��줅�B���z���[,�?����      �	   G   x�3�4426153�����sT0�45�015��suu�
�p�ԙ�D�%D����%�R#��=... 35^      �	      x��}˒7��:�+r9�l�xE �I��Mi���h��
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
���n�gj�&l�g����<����qм�6�w]lA>~���'ԬF�ϦY�J˲�Pf�b���g�Ug.G�ŝL/8v74A��C���w=����c�ۍ��%p��p��@9Fv��$�)��{�2�9M�l������_�r����2$��$�x�#%�[I�:k�I�|I�~,X˄@w�=1H�#�ڑ��������r%R��8:�H�{(�m��c�a/���ǎ?��m�m&2�*��I�"���|StS:]uS3�S�����4;r5���i�����H�5ڛ�#�U<V�U�n�{�"�u�^�M�2���`(��w�Wؒ�J��ݮ��6����� A�+G���5SO��>�}����|*e��k��MD��m�2�v�{`�� Dk�4:�p���x8�O��F���o 	��u���&o\�wE�	�Aq�k̤�]ٌF�g�+��&������a�c��6Eo6DoL�Ɔ�dSt�):��o�^o�.6E�RV�jKYm�Me�l*�dSY%��*�TVɦ�j�FL�A� �ښ�f��A^�����>���,��Yh&�\P�!�Fy�#Ap��7�PTG�����:�u�Yo��t_:��!N�jL��>ݸ�zfJ��L���J�p*�y�Q6���۩|jg>\N��\"o��N^̆jsd[��@Z��Vy���/��������	@:ٶh�����Cֶj���5���9�6Ĵ�����|���A*�F:@��0�����o��� w��      �	      x�]�M�@F��)�6Q��v2CR�A���?�P[����=P���$�h*�d���@S0{5~tb�;QB�2���j�|������B�����Z�6Ms/��E����9��K)} l�7�      �	   �  x��XMo�H=S��1gJ`7���Iư=;��\�c�K�����m{X�m��c��-)l�m�Y�U���kҀ���(7in�i�����&!�M�%�u�W�>vAV6�"�B��#v�8$Dr�~I��qN#�i����\��x�_L���e�X�,kX^~I�7�(Y{g����vB��#�ZEJ`�eT��3�~�[[�Uf�@V} z�Y�u^��/'��.�l�v��y�b�q���c.䑃O�30�nү�"�.���j��sR��[\�lNY��w�I2�Pd���θ��/��~�LO�i�Yr['_,	��.�P�D͵
�{�����<��2/��뤲!���]hTQD���#Î\ʙb��a�d��B��R����\�0`�eZ�ˌ�{�e�����[���r?��,6��#R��g�%�����{jBSs���:��k�������??��(���tk�*�m�T�̙9�z��JGX��Ԩ��l�!�p��^��:��iҰ@b�C�h����I+����S(��v_٪��� swe�T&�b�j�<j�����o�m�.Ѩޏd��S?jFy@�K��~]�9�7�2ը�l��!�a�6�D��yن�,+������2��0��[�&$�%%�m�p����Զ��̨(e�|]?�ϵ<lNnl�.��׶�+��+<'~�߹c��k���r�r���U��ڈ���m�fT!2�xw�~������`���D�2�͒�����}��ö���!i�"2G�!w�[W6�'hW=���_�K�m_�1cB�)݊ց	�q�{UW��,[��s�:�(�4��Yq@�'6x[�ʷ�P�>hQ��ԈQ?��(}��4���f3�N Jip�<��m��2;[)Pd��	��?��Ŀ�Snh��Q�QNd�3��wŮz�a�%����Y,�	�̙���y�A�s����,YV	*r�/�˾VFG��4:ѧ�3p6w�뤬�������>�,�;�vxoGv��ͥ5��F.7�g��ٮ]�1�K74ca�K�W����?��o�������3f@0\�p�蓍h���Xpeb����g�|ԧ��%{���̗	2t7$���b�Na@gsH���}B�v�zd�M�1�@w6�3�`Tɚ��S�!#ܱ�p�}�#DY^���`�N&\�+������=<�Y(oӁsUև1�}͡�\�6ңꂞ�V��hx��p��5��l[��Z�o�N"�?������_�k�X��:Ԙ� ԝ��a$���f��1�6���w��IG �O�
CY~�=�q�����7��v���nNA�fPH�a���iV��T��03q�
�Gȍ=�6����:��;��!�=J�8�:�L	��DC>4cʜ!=��x9�k�sZ������l���YUL��3'u���;�LZ�E}�s�>�\�[�(�l�E��/���+@n��<m�:N� Q�1�0	DL� )@�����;��X56�y� ��=f�8PcU�t��0� �#ι_ �ѱb���$�M���p�M�d��O����#��uzW���S���`Yp�9��U��Ƈ�.�x�+@+�qzGV�/����U�M�f�}�n>���#��[hK}��	�1j�N�� �~��'�yxN���?���F�J�\VE�NvA��昢FLI�4H`�� �:}����ck>
�Pwe���"���!W�$��M��'���!PD:ҧ~�e��py�w.��0���;�x�(2T�љc��1K`[��#­a�H�g��μ�_台��7)����%7�����K�	�F��i��nM+r|��V3��pb{���e㨮ב&f戓[�MG����[�&נ���ԑ�ZS��c�<��cڋ�p�󭅪��:��e
�,�z���Vσ)�v�+h���s���~G'e݅�ePGBN�E���GR�(��d\mp�I	(�"��gel����x�����qs����Ǉ�<>�	��~��-\\.�� j�PAOv}8�
-��t�� ���̫�Q^��pH>�n�6�v�Os��$_g��KK���T*i��k�s�v� �:��i�)T���g����So}�	���,T�M�hl�3�#��c�b��4���2j��Iv<��+��e��tD*��S�+��g�v'_Y�o�-^���(c	���'�� ��K?=�dХ��b6�����      �	      x������ � �      �	      x������ � �      �	   C   x�3�tN�M��WHIU(H,.���I,�4�2�J-H,JL���ɥ%f%�����܂|N#�=... �j      �	   Z   x�3��L�V-����,�2��JM���8�s3��RK!朎�%���e�9N������bߒ�7�$?939��� j
����� �# v      �	      x�3�H,*�L.�I,���,����� U�9      �	   �  x��YKs�6>��Ǥ*�|�HK����LY�T���M��>\��79��SN����m��A�����H�@�_�C�˼�Y���*�5/y�
+��>���Zi�kQ�l9Q�����g��̷l+�~�x�5��II�՞�W�;���'{v��o�GP8���S�H"m�y#���W%����G^�=��mN?p`�$c��h���e^7k򯌼�KVf9<i�I_QmAd8��ge�	���#��w������� ի/<k�;��RZ��U-j�S�g��mJ!�����`�@�S׺�V5l��F�/SL���M/E\���ݘ��?T����@�sZ@,O�PR�К9�(]O�m�C��sL���4Bz���>+@���S"�����O�FM���<;8i'���G����;%#hS�2ج��������Tϼ?��+G���vzG1މJ�Ua��Q}��D6l��+R��t�d}���X��+<��5��Z^7*��`fd�C^H�N�煚�}?���Q�uS~��T� ��#�ӭ k3��	�?B�C��O�=#��B���^2;�
p��V��\C«�Il�Y���(k��E���>=c�������u���3��c���g�a���[�Y�����fU%�B�_��ӧ�P
Jh���J^�7R6-�$c+=c���(%��մ����&�8��ϴ,jIN�����0p�QB��L�֘��Im-�w5��mĹV5u� T�]彦]�RV���b�RJ��8c�lлW�̰�����]��ȳ!}=����M�z������7),\��M��vpiv�0�:�La�J�#�I�+�$LLɗ��#����#x��tYt	^����?��R�[WP;+���F��;e��Iu=z"V@8
a���HS9�Ԏb����fSǵ#�`G��A�g��1#oB~�K�ԝ�2�v�k��`��2�~�����R����c{(EVM1O�X������AT��1�}�@��-���Jֵcߐ���y�Sxy`�� ��|��,���t�L�6?���V���<u���7#�(b��$�TT��M��t�N��ҷC����E��Nhw�e�/&�aϒ$����H��mOO5j����2)$�n�<sͺ�HVs�$�����;��$>�����,Z+S��,@�2��t��u`�t����, U���;���0+;��>���7��(L�Np�L�`S���p��Y��d�
����gޮ;5B3r��;ѡ��viH�������9����[�s�M��a^�ϒ%x�k��X:�C\..p�%f-C���#���J�_!��x��w$�u��&�+������5�Y������)�kNQ�D໶Bt
�&�O�a�M�lr�Ѵ��X�ۖ^��֓�~�rˎ�"s^�P�t�f)ȝ��{�#��_�bc�`Cٲi�F��ݤ�W�7*������_bae1u=��f0ވ.�e`������]h���. |}'����&���	��!�@�HI��7�.rV�aR7��&���=)�i4�\/	`#���z�&}ˁM��g��W�*������8����A�aM����f{y���;-���|WI:�v�ޚ��nj�I��Y7��U��U��=�Ϋ�y��38�r͎��ۼ��2�~�)����|&߽�~{󽊂+������X�*O�\OC1�{/�����=��{�KY�S��9v�1Ҵ��X&D2��k�	���*�8�dS��0L5��/$��r�%��7kl;i���,����'��������\x�(����_�eip�_C,c���^Ⓙ�nY�g2��gfa�^�jr��~eE���\���6p}v������ +���m&KS9&�3�g���`zLe6��`V�ph�XY�"�̌�D#dΨ�
|C�bb5�|-k ���z�CXDç�H#C�y'�ʑձВ��4���SC��̩]{�����G�\��*�q�Bw��/A��>��s�������˾���I��$p�&,.�g4-�	�r���,��s��s�1g644��/�d�xRO:;�~q�/�����6�\Dɇ^)�.ͩx3A#o�6?=�{s��I����'���� 
���g��s�Ѝ�x��M���G۶�j�``      �	   �  x����r"7���S� �u$]i	c��3�f3�lg6�,��9Rw���$5ƅ�.5}}��*z���<[,[�l�3G"�������ǈi�a�����F��9qw��������h6�&x_�7��h�<]���:�LVN��E�^�����K��M��]\����`�I�,�s_7��u5y2ɸ�����^ez�DnX����&/�����2%�g���T�ſy&R/ )/��.*�>X"`�S޲N�1z�3VI��������pVS��p+�h�Z�X�q��҃%S��	����h���L�Et���#iݑ�U�g�rJ-���5�oQ%�V$1pc��K�ʝ��d..�vG�t.�L��˾c]�N�p�f���͠�)ݼ�. -i�ා��6�b�j�ڞ��y��>���Z^4x)�e� x�@�.�B�����P��RP �j]Ti#ԩ4���0F:�Ȓ[V)�l���+S���iaY>ͧ�l;���5���Z�vG��˷�q@Cw�jm�0h0����E�m��18@3�i1�bδX���%�����[V.�1�a |���^�N��Ê�əS'�-)�u��h���i���]��0�X#t������_��Y휌�g�}�Ԇ��Zs�<p"Nr�EG�.z����\�zl��E��cW�Xs�sA�H���ꬲ�T|>U���Yb����)ߍVS�#h���+��9��&)�=?��j�m�� \/�{%�h�tdj�J{d��8���2O�u��9�����mS?X�K`��G�%e�J3,�4�R?#��0�7���P[<��Ԉ:]2�'#}`����x��\9��t:���Q��D�J,�y�~,���,��	��}o����qP���ӛ��J9�I0�����f@��ͣIa��Vo�Q~���l�u��Vl��b���qpB-zCk�p&�l��r�0P�\~<q�Y�s�E��:NL����WWW� �H�-     