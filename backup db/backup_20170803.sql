PGDMP     1        
            u            DB_IDPP    9.6.3    9.6.3 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    17220    DB_IDPP    DATABASE     �   CREATE DATABASE "DB_IDPP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "DB_IDPP";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17442    asignacion_vehiculo    TABLE       CREATE TABLE asignacion_vehiculo (
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
       public         postgres    false    3            �            1259    17440 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.asignacion_vehiculo_cod_asignacion_vehiculo_seq;
       public       postgres    false    220    3            �	           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE asignacion_vehiculo_cod_asignacion_vehiculo_seq OWNED BY asignacion_vehiculo.cod_asignacion_vehiculo;
            public       postgres    false    219            �            1259    17559    asignacion_vehiculo_piloto    TABLE     �  CREATE TABLE asignacion_vehiculo_piloto (
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
       public         postgres    false    3            �            1259    17557 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE     �   CREATE SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq;
       public       postgres    false    224    3            �	           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq OWNED BY asignacion_vehiculo_piloto.cod_asignacion_vehiculo_piloto;
            public       postgres    false    223            �            1259    17223    color    TABLE     �   CREATE TABLE color (
    cod_color integer NOT NULL,
    nombre_color character varying(100),
    orden integer,
    activo boolean
);
    DROP TABLE public.color;
       public         postgres    false    3            �            1259    17221    color_cod_color_seq    SEQUENCE     u   CREATE SEQUENCE color_cod_color_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.color_cod_color_seq;
       public       postgres    false    3    186            �	           0    0    color_cod_color_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE color_cod_color_seq OWNED BY color.cod_color;
            public       postgres    false    185            �            1259    17582    combustible_comision    TABLE     7  CREATE TABLE combustible_comision (
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
       public         postgres    false    3            �            1259    17580 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE     �   CREATE SEQUENCE combustible_comision_cod_combustible_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.combustible_comision_cod_combustible_comision_seq;
       public       postgres    false    3    226            �	           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE combustible_comision_cod_combustible_comision_seq OWNED BY combustible_comision.cod_combustible_comision;
            public       postgres    false    225            �            1259    17683    combustible_cupon    TABLE       CREATE TABLE combustible_cupon (
    cod_combustible_cupon integer NOT NULL,
    cod_combustible_comision integer,
    cod_cupon_denominancion integer,
    cantidad_cupones integer,
    numero_cupon_inicial bigint,
    numero_cupon_final bigint,
    suma_total numeric
);
 %   DROP TABLE public.combustible_cupon;
       public         postgres    false    3            �            1259    17681 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE     �   CREATE SEQUENCE combustible_cupon_cod_combustible_cupon_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.combustible_cupon_cod_combustible_cupon_seq;
       public       postgres    false    232    3            �	           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE combustible_cupon_cod_combustible_cupon_seq OWNED BY combustible_cupon.cod_combustible_cupon;
            public       postgres    false    231            �            1259    17231    cupon_denominacion    TABLE     �   CREATE TABLE cupon_denominacion (
    cod_cupon_denominacion integer NOT NULL,
    descripcion character varying(100),
    denominacion numeric
);
 &   DROP TABLE public.cupon_denominacion;
       public         postgres    false    3            �            1259    17229 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE     �   CREATE SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.cupon_denominacion_cod_cupon_denominacion_seq;
       public       postgres    false    3    188            �	           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE cupon_denominacion_cod_cupon_denominacion_seq OWNED BY cupon_denominacion.cod_cupon_denominacion;
            public       postgres    false    187            �            1259    17306    departamento    TABLE     �   CREATE TABLE departamento (
    cod_departamento integer NOT NULL,
    cod_region integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
     DROP TABLE public.departamento;
       public         postgres    false    3            �            1259    17304 !   departamento_cod_departamento_seq    SEQUENCE     �   CREATE SEQUENCE departamento_cod_departamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.departamento_cod_departamento_seq;
       public       postgres    false    3    206            �	           0    0 !   departamento_cod_departamento_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE departamento_cod_departamento_seq OWNED BY departamento.cod_departamento;
            public       postgres    false    205            �            1259    17346    dependencia_institucion    TABLE     �  CREATE TABLE dependencia_institucion (
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
       public         postgres    false    3            �            1259    17344 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE     �   CREATE SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.dependencia_institucion_cod_dependencia_institucion_seq;
       public       postgres    false    212    3            �	           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE dependencia_institucion_cod_dependencia_institucion_seq OWNED BY dependencia_institucion.cod_dependencia_institucion;
            public       postgres    false    211            �            1259    17636    imagen    TABLE     �   CREATE TABLE imagen (
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
       public         postgres    false    3            �            1259    17634    imagen_cod_imagen_seq    SEQUENCE     w   CREATE SEQUENCE imagen_cod_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.imagen_cod_imagen_seq;
       public       postgres    false    228    3            �	           0    0    imagen_cod_imagen_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE imagen_cod_imagen_seq OWNED BY imagen.cod_imagen;
            public       postgres    false    227            �            1259    17657    kilometraje_comision    TABLE     "  CREATE TABLE kilometraje_comision (
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
       public         postgres    false    3            �            1259    17655 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE     �   CREATE SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.kilometraje_comision_cod_kilometraje_comision_seq;
       public       postgres    false    3    230            �	           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE kilometraje_comision_cod_kilometraje_comision_seq OWNED BY kilometraje_comision.cod_kilometraje_comision;
            public       postgres    false    229            �            1259    17320    linea    TABLE     �   CREATE TABLE linea (
    cod_linea integer NOT NULL,
    cod_marca integer,
    nombre_linea character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.linea;
       public         postgres    false    3            �            1259    17318    linea_cod_linea_seq    SEQUENCE     u   CREATE SEQUENCE linea_cod_linea_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.linea_cod_linea_seq;
       public       postgres    false    3    208            �	           0    0    linea_cod_linea_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE linea_cod_linea_seq OWNED BY linea.cod_linea;
            public       postgres    false    207            �            1259    17242    marca    TABLE     �   CREATE TABLE marca (
    cod_marca integer NOT NULL,
    nombre_marca character varying(150),
    orden integer,
    activo boolean
);
    DROP TABLE public.marca;
       public         postgres    false    3            �            1259    17240    marca_cod_marca_seq    SEQUENCE     u   CREATE SEQUENCE marca_cod_marca_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marca_cod_marca_seq;
       public       postgres    false    190    3            �	           0    0    marca_cod_marca_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE marca_cod_marca_seq OWNED BY marca.cod_marca;
            public       postgres    false    189            �            1259    17333 	   municipio    TABLE     �   CREATE TABLE municipio (
    cod_municipio integer NOT NULL,
    cod_departamento integer,
    descripcion character varying(50),
    cod_estatus character varying(2),
    cod_geoestadistico integer,
    clasificacion_geografica character varying(2)
);
    DROP TABLE public.municipio;
       public         postgres    false    3            �            1259    17331    municipio_cod_municipio_seq    SEQUENCE     }   CREATE SEQUENCE municipio_cod_municipio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.municipio_cod_municipio_seq;
       public       postgres    false    3    210            �	           0    0    municipio_cod_municipio_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE municipio_cod_municipio_seq OWNED BY municipio.cod_municipio;
            public       postgres    false    209            �            1259    17250    pais    TABLE     �   CREATE TABLE pais (
    cod_pais integer NOT NULL,
    nombre_pais character varying(60),
    gentilicio character varying(60),
    codigo_telefonico character varying(3),
    codigo_iso character varying(3),
    cod_estatus character varying(2)
);
    DROP TABLE public.pais;
       public         postgres    false    3            �            1259    17248    pais_cod_pais_seq    SEQUENCE     s   CREATE SEQUENCE pais_cod_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pais_cod_pais_seq;
       public       postgres    false    192    3            �	           0    0    pais_cod_pais_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE pais_cod_pais_seq OWNED BY pais.cod_pais;
            public       postgres    false    191            �            1259    17369    persona    TABLE       CREATE TABLE persona (
    cod_persona integer NOT NULL,
    cod_tipo_persona integer,
    cod_pais integer,
    cod_municipio integer,
    nombre_1 character varying(50),
    nombre_2 character varying(50),
    apellido_1 character varying(50),
    apellido_2 character varying(50),
    apellido_casada character varying(50),
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
    clasificacion_geografica character varying(2)
);
    DROP TABLE public.persona;
       public         postgres    false    3            �            1259    17367    persona_cod_persona_seq    SEQUENCE     y   CREATE SEQUENCE persona_cod_persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.persona_cod_persona_seq;
       public       postgres    false    3    214            �	           0    0    persona_cod_persona_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE persona_cod_persona_seq OWNED BY persona.cod_persona;
            public       postgres    false    213            �            1259    17416    puesto    TABLE     �  CREATE TABLE puesto (
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
       public         postgres    false    3            �            1259    17414    puesto_cod_puesto_seq    SEQUENCE     w   CREATE SEQUENCE puesto_cod_puesto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.puesto_cod_puesto_seq;
       public       postgres    false    218    3            �	           0    0    puesto_cod_puesto_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE puesto_cod_puesto_seq OWNED BY puesto.cod_puesto;
            public       postgres    false    217            �            1259    17258    region    TABLE     �   CREATE TABLE region (
    cod_region integer NOT NULL,
    descripcion character varying(60),
    cod_estatus character varying(2)
);
    DROP TABLE public.region;
       public         postgres    false    3            �            1259    17256    region_cod_region_seq    SEQUENCE     w   CREATE SEQUENCE region_cod_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.region_cod_region_seq;
       public       postgres    false    194    3            �	           0    0    region_cod_region_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE region_cod_region_seq OWNED BY region.cod_region;
            public       postgres    false    193            �            1259    17395    sede    TABLE     �  CREATE TABLE sede (
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
       public         postgres    false    3            �            1259    17393    sede_cod_sede_seq    SEQUENCE     s   CREATE SEQUENCE sede_cod_sede_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sede_cod_sede_seq;
       public       postgres    false    3    216            �	           0    0    sede_cod_sede_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE sede_cod_sede_seq OWNED BY sede.cod_sede;
            public       postgres    false    215            �            1259    17266    tipo_dependencia_institucion    TABLE     �   CREATE TABLE tipo_dependencia_institucion (
    cod_tipo_dependencia_institucion integer NOT NULL,
    descripcion character varying(50),
    cod_estatus character varying(2),
    abreviatura character varying(30)
);
 0   DROP TABLE public.tipo_dependencia_institucion;
       public         postgres    false    3            �            1259    17264 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE     �   CREATE SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq;
       public       postgres    false    196    3            �	           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq OWNED BY tipo_dependencia_institucion.cod_tipo_dependencia_institucion;
            public       postgres    false    195            �            1259    17274    tipo_imagen    TABLE     �   CREATE TABLE tipo_imagen (
    cod_tipo_imagen integer NOT NULL,
    nombre_tipo_imagen character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_imagen;
       public         postgres    false    3            �            1259    17272    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE     �   CREATE SEQUENCE tipo_imagen_cod_tipo_imagen_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tipo_imagen_cod_tipo_imagen_seq;
       public       postgres    false    198    3            �	           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE tipo_imagen_cod_tipo_imagen_seq OWNED BY tipo_imagen.cod_tipo_imagen;
            public       postgres    false    197            �            1259    17282 	   tipo_tipo    TABLE     �   CREATE TABLE tipo_tipo (
    cod_tipo_tipo integer NOT NULL,
    nombre_tipo_tipo character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_tipo;
       public         postgres    false    3            �            1259    17280    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE     }   CREATE SEQUENCE tipo_tipo_cod_tipo_tipo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tipo_tipo_cod_tipo_tipo_seq;
       public       postgres    false    3    200            �	           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE tipo_tipo_cod_tipo_tipo_seq OWNED BY tipo_tipo.cod_tipo_tipo;
            public       postgres    false    199            �            1259    17290    tipo_uso    TABLE     �   CREATE TABLE tipo_uso (
    cod_tipo_uso integer NOT NULL,
    nombre_tipo_uso character varying(50),
    orden integer,
    activo boolean
);
    DROP TABLE public.tipo_uso;
       public         postgres    false    3            �            1259    17288    tipo_uso_cod_tipo_uso_seq    SEQUENCE     {   CREATE SEQUENCE tipo_uso_cod_tipo_uso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tipo_uso_cod_tipo_uso_seq;
       public       postgres    false    202    3            �	           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE tipo_uso_cod_tipo_uso_seq OWNED BY tipo_uso.cod_tipo_uso;
            public       postgres    false    201            �            1259    17298    unidad    TABLE     �   CREATE TABLE unidad (
    cod_unidad integer NOT NULL,
    descripcion character varying(100),
    cod_estatus character varying(2),
    tiene_dependencia boolean,
    nomenclatura character varying(3)
);
    DROP TABLE public.unidad;
       public         postgres    false    3            �            1259    17296    unidad_cod_unidad_seq    SEQUENCE     w   CREATE SEQUENCE unidad_cod_unidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.unidad_cod_unidad_seq;
       public       postgres    false    3    204            �	           0    0    unidad_cod_unidad_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE unidad_cod_unidad_seq OWNED BY unidad.cod_unidad;
            public       postgres    false    203            �            1259    17503    vehiculo    TABLE     W  CREATE TABLE vehiculo (
    cod_vehiculo integer NOT NULL,
    placa character varying(15),
    nit character varying(15),
    poliza bigint,
    direccion character varying(250),
    cod_municipio integer,
    cod_departamento integer,
    nombre character varying(25),
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
       public         postgres    false    3            �            1259    17501    vehiculo_cod_vehiculo_seq    SEQUENCE     {   CREATE SEQUENCE vehiculo_cod_vehiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.vehiculo_cod_vehiculo_seq;
       public       postgres    false    3    222            �	           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE vehiculo_cod_vehiculo_seq OWNED BY vehiculo.cod_vehiculo;
            public       postgres    false    221            v           2604    17445 +   asignacion_vehiculo cod_asignacion_vehiculo    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo SET DEFAULT nextval('asignacion_vehiculo_cod_asignacion_vehiculo_seq'::regclass);
 Z   ALTER TABLE public.asignacion_vehiculo ALTER COLUMN cod_asignacion_vehiculo DROP DEFAULT;
       public       postgres    false    219    220    220            x           2604    17562 9   asignacion_vehiculo_piloto cod_asignacion_vehiculo_piloto    DEFAULT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto SET DEFAULT nextval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq'::regclass);
 h   ALTER TABLE public.asignacion_vehiculo_piloto ALTER COLUMN cod_asignacion_vehiculo_piloto DROP DEFAULT;
       public       postgres    false    223    224    224            e           2604    17226    color cod_color    DEFAULT     d   ALTER TABLE ONLY color ALTER COLUMN cod_color SET DEFAULT nextval('color_cod_color_seq'::regclass);
 >   ALTER TABLE public.color ALTER COLUMN cod_color DROP DEFAULT;
       public       postgres    false    186    185    186            y           2604    17585 -   combustible_comision cod_combustible_comision    DEFAULT     �   ALTER TABLE ONLY combustible_comision ALTER COLUMN cod_combustible_comision SET DEFAULT nextval('combustible_comision_cod_combustible_comision_seq'::regclass);
 \   ALTER TABLE public.combustible_comision ALTER COLUMN cod_combustible_comision DROP DEFAULT;
       public       postgres    false    226    225    226            |           2604    17686 '   combustible_cupon cod_combustible_cupon    DEFAULT     �   ALTER TABLE ONLY combustible_cupon ALTER COLUMN cod_combustible_cupon SET DEFAULT nextval('combustible_cupon_cod_combustible_cupon_seq'::regclass);
 V   ALTER TABLE public.combustible_cupon ALTER COLUMN cod_combustible_cupon DROP DEFAULT;
       public       postgres    false    232    231    232            f           2604    17234 )   cupon_denominacion cod_cupon_denominacion    DEFAULT     �   ALTER TABLE ONLY cupon_denominacion ALTER COLUMN cod_cupon_denominacion SET DEFAULT nextval('cupon_denominacion_cod_cupon_denominacion_seq'::regclass);
 X   ALTER TABLE public.cupon_denominacion ALTER COLUMN cod_cupon_denominacion DROP DEFAULT;
       public       postgres    false    187    188    188            o           2604    17309    departamento cod_departamento    DEFAULT     �   ALTER TABLE ONLY departamento ALTER COLUMN cod_departamento SET DEFAULT nextval('departamento_cod_departamento_seq'::regclass);
 L   ALTER TABLE public.departamento ALTER COLUMN cod_departamento DROP DEFAULT;
       public       postgres    false    206    205    206            r           2604    17349 3   dependencia_institucion cod_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY dependencia_institucion ALTER COLUMN cod_dependencia_institucion SET DEFAULT nextval('dependencia_institucion_cod_dependencia_institucion_seq'::regclass);
 b   ALTER TABLE public.dependencia_institucion ALTER COLUMN cod_dependencia_institucion DROP DEFAULT;
       public       postgres    false    212    211    212            z           2604    17639    imagen cod_imagen    DEFAULT     h   ALTER TABLE ONLY imagen ALTER COLUMN cod_imagen SET DEFAULT nextval('imagen_cod_imagen_seq'::regclass);
 @   ALTER TABLE public.imagen ALTER COLUMN cod_imagen DROP DEFAULT;
       public       postgres    false    228    227    228            {           2604    17660 -   kilometraje_comision cod_kilometraje_comision    DEFAULT     �   ALTER TABLE ONLY kilometraje_comision ALTER COLUMN cod_kilometraje_comision SET DEFAULT nextval('kilometraje_comision_cod_kilometraje_comision_seq'::regclass);
 \   ALTER TABLE public.kilometraje_comision ALTER COLUMN cod_kilometraje_comision DROP DEFAULT;
       public       postgres    false    229    230    230            p           2604    17323    linea cod_linea    DEFAULT     d   ALTER TABLE ONLY linea ALTER COLUMN cod_linea SET DEFAULT nextval('linea_cod_linea_seq'::regclass);
 >   ALTER TABLE public.linea ALTER COLUMN cod_linea DROP DEFAULT;
       public       postgres    false    207    208    208            g           2604    17245    marca cod_marca    DEFAULT     d   ALTER TABLE ONLY marca ALTER COLUMN cod_marca SET DEFAULT nextval('marca_cod_marca_seq'::regclass);
 >   ALTER TABLE public.marca ALTER COLUMN cod_marca DROP DEFAULT;
       public       postgres    false    189    190    190            q           2604    17336    municipio cod_municipio    DEFAULT     t   ALTER TABLE ONLY municipio ALTER COLUMN cod_municipio SET DEFAULT nextval('municipio_cod_municipio_seq'::regclass);
 F   ALTER TABLE public.municipio ALTER COLUMN cod_municipio DROP DEFAULT;
       public       postgres    false    209    210    210            h           2604    17253    pais cod_pais    DEFAULT     `   ALTER TABLE ONLY pais ALTER COLUMN cod_pais SET DEFAULT nextval('pais_cod_pais_seq'::regclass);
 <   ALTER TABLE public.pais ALTER COLUMN cod_pais DROP DEFAULT;
       public       postgres    false    191    192    192            s           2604    17372    persona cod_persona    DEFAULT     l   ALTER TABLE ONLY persona ALTER COLUMN cod_persona SET DEFAULT nextval('persona_cod_persona_seq'::regclass);
 B   ALTER TABLE public.persona ALTER COLUMN cod_persona DROP DEFAULT;
       public       postgres    false    214    213    214            u           2604    17419    puesto cod_puesto    DEFAULT     h   ALTER TABLE ONLY puesto ALTER COLUMN cod_puesto SET DEFAULT nextval('puesto_cod_puesto_seq'::regclass);
 @   ALTER TABLE public.puesto ALTER COLUMN cod_puesto DROP DEFAULT;
       public       postgres    false    218    217    218            i           2604    17261    region cod_region    DEFAULT     h   ALTER TABLE ONLY region ALTER COLUMN cod_region SET DEFAULT nextval('region_cod_region_seq'::regclass);
 @   ALTER TABLE public.region ALTER COLUMN cod_region DROP DEFAULT;
       public       postgres    false    194    193    194            t           2604    17398    sede cod_sede    DEFAULT     `   ALTER TABLE ONLY sede ALTER COLUMN cod_sede SET DEFAULT nextval('sede_cod_sede_seq'::regclass);
 <   ALTER TABLE public.sede ALTER COLUMN cod_sede DROP DEFAULT;
       public       postgres    false    215    216    216            j           2604    17269 =   tipo_dependencia_institucion cod_tipo_dependencia_institucion    DEFAULT     �   ALTER TABLE ONLY tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion SET DEFAULT nextval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq'::regclass);
 l   ALTER TABLE public.tipo_dependencia_institucion ALTER COLUMN cod_tipo_dependencia_institucion DROP DEFAULT;
       public       postgres    false    196    195    196            k           2604    17277    tipo_imagen cod_tipo_imagen    DEFAULT     |   ALTER TABLE ONLY tipo_imagen ALTER COLUMN cod_tipo_imagen SET DEFAULT nextval('tipo_imagen_cod_tipo_imagen_seq'::regclass);
 J   ALTER TABLE public.tipo_imagen ALTER COLUMN cod_tipo_imagen DROP DEFAULT;
       public       postgres    false    197    198    198            l           2604    17285    tipo_tipo cod_tipo_tipo    DEFAULT     t   ALTER TABLE ONLY tipo_tipo ALTER COLUMN cod_tipo_tipo SET DEFAULT nextval('tipo_tipo_cod_tipo_tipo_seq'::regclass);
 F   ALTER TABLE public.tipo_tipo ALTER COLUMN cod_tipo_tipo DROP DEFAULT;
       public       postgres    false    200    199    200            m           2604    17293    tipo_uso cod_tipo_uso    DEFAULT     p   ALTER TABLE ONLY tipo_uso ALTER COLUMN cod_tipo_uso SET DEFAULT nextval('tipo_uso_cod_tipo_uso_seq'::regclass);
 D   ALTER TABLE public.tipo_uso ALTER COLUMN cod_tipo_uso DROP DEFAULT;
       public       postgres    false    201    202    202            n           2604    17301    unidad cod_unidad    DEFAULT     h   ALTER TABLE ONLY unidad ALTER COLUMN cod_unidad SET DEFAULT nextval('unidad_cod_unidad_seq'::regclass);
 @   ALTER TABLE public.unidad ALTER COLUMN cod_unidad DROP DEFAULT;
       public       postgres    false    203    204    204            w           2604    17506    vehiculo cod_vehiculo    DEFAULT     p   ALTER TABLE ONLY vehiculo ALTER COLUMN cod_vehiculo SET DEFAULT nextval('vehiculo_cod_vehiculo_seq'::regclass);
 D   ALTER TABLE public.vehiculo ALTER COLUMN cod_vehiculo DROP DEFAULT;
       public       postgres    false    222    221    222            x	          0    17442    asignacion_vehiculo 
   TABLE DATA               R  COPY asignacion_vehiculo (cod_asignacion_vehiculo, fecha_asignacion, no_solicitud, year_solicitud, cod_unidad_solicitante, cod_persona_pasajero, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, dias_asignacion, num_personas_viaje, cod_sede_lugar_salida, destino, diligencia, causa_1, causa_2, causa_3, cod_dependencia_institucion_juzgado, utiliza_piloto, utiliza_vehiculo, carga_voluminosa, observaciones, cod_persona_solicitante, cod_puesto_solicitante, cod_persona_coordinador_jefe, cod_puesto_coordinador_jefe, cod_persona_asignador_vehiculo, cod_puesto_asignador_vehiculo) FROM stdin;
    public       postgres    false    220   IB      �	           0    0 /   asignacion_vehiculo_cod_asignacion_vehiculo_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('asignacion_vehiculo_cod_asignacion_vehiculo_seq', 1, false);
            public       postgres    false    219            |	          0    17559    asignacion_vehiculo_piloto 
   TABLE DATA               �   COPY asignacion_vehiculo_piloto (cod_asignacion_vehiculo_piloto, cod_asignacion_vehiculo, cod_vehiculo, cod_persona_piloto_asignado, fecha_hora_uso_vehiculo, fecha_hora_retorno_vehiculo, fecha_hora_asignacion, estatus_asignacion) FROM stdin;
    public       postgres    false    224   fB      �	           0    0 =   asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('asignacion_vehiculo_piloto_cod_asignacion_vehiculo_piloto_seq', 1, false);
            public       postgres    false    223            V	          0    17223    color 
   TABLE DATA               @   COPY color (cod_color, nombre_color, orden, activo) FROM stdin;
    public       postgres    false    186   �B      �	           0    0    color_cod_color_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('color_cod_color_seq', 1, false);
            public       postgres    false    185            ~	          0    17582    combustible_comision 
   TABLE DATA               W  COPY combustible_comision (cod_combustible_comision, fecha_entrega, cod_persona_solicitante, cod_puesto_solicitante, cod_unidad, cod_sede, cod_vehiculo, placa, kilometraje_actual, comision_a, observaciones, importe_total_letras, cantidad_estimada_carga, cod_persona_receptor, cod_puesto_receptor, cod_persona_encargado_transporte) FROM stdin;
    public       postgres    false    226   �B      �	           0    0 1   combustible_comision_cod_combustible_comision_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('combustible_comision_cod_combustible_comision_seq', 1, false);
            public       postgres    false    225            �	          0    17683    combustible_cupon 
   TABLE DATA               �   COPY combustible_cupon (cod_combustible_cupon, cod_combustible_comision, cod_cupon_denominancion, cantidad_cupones, numero_cupon_inicial, numero_cupon_final, suma_total) FROM stdin;
    public       postgres    false    232   �B      �	           0    0 +   combustible_cupon_cod_combustible_cupon_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('combustible_cupon_cod_combustible_cupon_seq', 1, false);
            public       postgres    false    231            X	          0    17231    cupon_denominacion 
   TABLE DATA               X   COPY cupon_denominacion (cod_cupon_denominacion, descripcion, denominacion) FROM stdin;
    public       postgres    false    188   �B      �	           0    0 -   cupon_denominacion_cod_cupon_denominacion_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('cupon_denominacion_cod_cupon_denominacion_seq', 1, false);
            public       postgres    false    187            j	          0    17306    departamento 
   TABLE DATA               �   COPY departamento (cod_departamento, cod_region, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    206   �B      �	           0    0 !   departamento_cod_departamento_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('departamento_cod_departamento_seq', 1, false);
            public       postgres    false    205            p	          0    17346    dependencia_institucion 
   TABLE DATA               �   COPY dependencia_institucion (cod_dependencia_institucion, cod_institucion, cod_estatus, nombre, direccion, cod_municipio, cod_departamento, telefono_1, cod_tipo_organo, codigo_causa, cod_tipo_dependencia_institucion, fecha_sistema) FROM stdin;
    public       postgres    false    212   TD      �	           0    0 7   dependencia_institucion_cod_dependencia_institucion_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('dependencia_institucion_cod_dependencia_institucion_seq', 1, false);
            public       postgres    false    211            �	          0    17636    imagen 
   TABLE DATA               x   COPY imagen (cod_imagen, cod_vehiculo, cod_tipo_imagen, path_imagen, imagenb, nombre_imagen, orden, activo) FROM stdin;
    public       postgres    false    228   qD      �	           0    0    imagen_cod_imagen_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('imagen_cod_imagen_seq', 1, false);
            public       postgres    false    227            �	          0    17657    kilometraje_comision 
   TABLE DATA                 COPY kilometraje_comision (cod_kilometraje_comision, cod_persona_piloto, cod_vehiculo, placa, kilometraje_inicial, fecha_hora_salida, kilometraje_final, fecha_hora_entrada, comision_realizada, causa1, causa2, causa3, cod_dependencia_institucion, diligencias_realizadas) FROM stdin;
    public       postgres    false    230   �D      �	           0    0 1   kilometraje_comision_cod_kilometraje_comision_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('kilometraje_comision_cod_kilometraje_comision_seq', 1, false);
            public       postgres    false    229            l	          0    17320    linea 
   TABLE DATA               K   COPY linea (cod_linea, cod_marca, nombre_linea, orden, activo) FROM stdin;
    public       postgres    false    208   �D      �	           0    0    linea_cod_linea_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('linea_cod_linea_seq', 1, false);
            public       postgres    false    207            Z	          0    17242    marca 
   TABLE DATA               @   COPY marca (cod_marca, nombre_marca, orden, activo) FROM stdin;
    public       postgres    false    190   �D      �	           0    0    marca_cod_marca_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('marca_cod_marca_seq', 1, true);
            public       postgres    false    189            n	          0    17333 	   municipio 
   TABLE DATA               �   COPY municipio (cod_municipio, cod_departamento, descripcion, cod_estatus, cod_geoestadistico, clasificacion_geografica) FROM stdin;
    public       postgres    false    210   �D      �	           0    0    municipio_cod_municipio_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('municipio_cod_municipio_seq', 1, false);
            public       postgres    false    209            \	          0    17250    pais 
   TABLE DATA               f   COPY pais (cod_pais, nombre_pais, gentilicio, codigo_telefonico, codigo_iso, cod_estatus) FROM stdin;
    public       postgres    false    192   T      �	           0    0    pais_cod_pais_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('pais_cod_pais_seq', 1, false);
            public       postgres    false    191            r	          0    17369    persona 
   TABLE DATA               �  COPY persona (cod_persona, cod_tipo_persona, cod_pais, cod_municipio, nombre_1, nombre_2, apellido_1, apellido_2, apellido_casada, cod_registro, numero_cedula, nit, fecha_nacimiento, sexo, estado_civil, cod_estatus, cuenta_banco, pasaporte, cod_pais_pasaporte, domicilio, cod_profesion, partida_nacimiento, cod_reloj_persona, url_foto, foto, providad, lugar_nacimiento, fecha, clasificacion_geografica) FROM stdin;
    public       postgres    false    214   <T      �	           0    0    persona_cod_persona_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('persona_cod_persona_seq', 1, false);
            public       postgres    false    213            v	          0    17416    puesto 
   TABLE DATA               �   COPY puesto (cod_puesto, cod_tipo_puesto, cod_organigrama, cod_persona, descripcion, cod_estatus, cod_sede, no_doc_creacion, no_doc_finalizacion, descripcion_femenino, cod_puesto_reemplazo, fecha_sistema) FROM stdin;
    public       postgres    false    218   YT      �	           0    0    puesto_cod_puesto_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('puesto_cod_puesto_seq', 1, false);
            public       postgres    false    217            ^	          0    17258    region 
   TABLE DATA               ?   COPY region (cod_region, descripcion, cod_estatus) FROM stdin;
    public       postgres    false    194   vT      �	           0    0    region_cod_region_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('region_cod_region_seq', 1, false);
            public       postgres    false    193            t	          0    17395    sede 
   TABLE DATA               �   COPY sede (cod_sede, cod_municipio, cod_tipo_sede, nombre_sede, direccion, telefono_1, telefono_2, cod_coordindor, cod_organigrama, cod_estatus, cod_region_supervision, correo_electronico, zona) FROM stdin;
    public       postgres    false    216   U      �	           0    0    sede_cod_sede_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('sede_cod_sede_seq', 1, false);
            public       postgres    false    215            `	          0    17266    tipo_dependencia_institucion 
   TABLE DATA               x   COPY tipo_dependencia_institucion (cod_tipo_dependencia_institucion, descripcion, cod_estatus, abreviatura) FROM stdin;
    public       postgres    false    196   "U      �	           0    0 ?   tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('tipo_dependencia_institucion_cod_tipo_dependencia_instituci_seq', 1, false);
            public       postgres    false    195            b	          0    17274    tipo_imagen 
   TABLE DATA               R   COPY tipo_imagen (cod_tipo_imagen, nombre_tipo_imagen, orden, activo) FROM stdin;
    public       postgres    false    198   ?U      �	           0    0    tipo_imagen_cod_tipo_imagen_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tipo_imagen_cod_tipo_imagen_seq', 1, false);
            public       postgres    false    197            d	          0    17282 	   tipo_tipo 
   TABLE DATA               L   COPY tipo_tipo (cod_tipo_tipo, nombre_tipo_tipo, orden, activo) FROM stdin;
    public       postgres    false    200   \U      �	           0    0    tipo_tipo_cod_tipo_tipo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tipo_tipo_cod_tipo_tipo_seq', 1, false);
            public       postgres    false    199            f	          0    17290    tipo_uso 
   TABLE DATA               I   COPY tipo_uso (cod_tipo_uso, nombre_tipo_uso, orden, activo) FROM stdin;
    public       postgres    false    202   yU      �	           0    0    tipo_uso_cod_tipo_uso_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tipo_uso_cod_tipo_uso_seq', 1, false);
            public       postgres    false    201            h	          0    17298    unidad 
   TABLE DATA               `   COPY unidad (cod_unidad, descripcion, cod_estatus, tiene_dependencia, nomenclatura) FROM stdin;
    public       postgres    false    204   �U      �	           0    0    unidad_cod_unidad_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('unidad_cod_unidad_seq', 1, false);
            public       postgres    false    203            z	          0    17503    vehiculo 
   TABLE DATA               o  COPY vehiculo (cod_vehiculo, placa, nit, poliza, direccion, cod_municipio, cod_departamento, nombre, modelo, cod_tipo_uso, chasis, cod_tipo_tipo, cod_marca, cod_linea, vin, centimetros_cubicos, cilindros, toneladas, titulo, tarjeta_circulacion, cod_color, no_asientos, no_inventario_registro, cod_persona_asignacion, cod_pueston, no_motor, orden, activo) FROM stdin;
    public       postgres    false    222   �U      �	           0    0    vehiculo_cod_vehiculo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('vehiculo_cod_vehiculo_seq', 1, false);
            public       postgres    false    221            �           2606    17450 .   asignacion_vehiculo pk_cod_asignacion_vehiculo 
   CONSTRAINT     z   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT pk_cod_asignacion_vehiculo PRIMARY KEY (cod_asignacion_vehiculo);
 X   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT pk_cod_asignacion_vehiculo;
       public         postgres    false    220    220            �           2606    17564 <   asignacion_vehiculo_piloto pk_cod_asignacion_vehiculo_piloto 
   CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT pk_cod_asignacion_vehiculo_piloto PRIMARY KEY (cod_asignacion_vehiculo_piloto);
 f   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT pk_cod_asignacion_vehiculo_piloto;
       public         postgres    false    224    224            ~           2606    17228    color pk_cod_color 
   CONSTRAINT     P   ALTER TABLE ONLY color
    ADD CONSTRAINT pk_cod_color PRIMARY KEY (cod_color);
 <   ALTER TABLE ONLY public.color DROP CONSTRAINT pk_cod_color;
       public         postgres    false    186    186            �           2606    17590 0   combustible_comision pk_cod_combustible_comision 
   CONSTRAINT     }   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT pk_cod_combustible_comision PRIMARY KEY (cod_combustible_comision);
 Z   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT pk_cod_combustible_comision;
       public         postgres    false    226    226            �           2606    17691 *   combustible_cupon pk_cod_combustible_cupon 
   CONSTRAINT     t   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT pk_cod_combustible_cupon PRIMARY KEY (cod_combustible_cupon);
 T   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT pk_cod_combustible_cupon;
       public         postgres    false    232    232            �           2606    17239 ,   cupon_denominacion pk_cod_cupon_denominacion 
   CONSTRAINT     w   ALTER TABLE ONLY cupon_denominacion
    ADD CONSTRAINT pk_cod_cupon_denominacion PRIMARY KEY (cod_cupon_denominacion);
 V   ALTER TABLE ONLY public.cupon_denominacion DROP CONSTRAINT pk_cod_cupon_denominacion;
       public         postgres    false    188    188            �           2606    17311     departamento pk_cod_departamento 
   CONSTRAINT     e   ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_cod_departamento PRIMARY KEY (cod_departamento);
 J   ALTER TABLE ONLY public.departamento DROP CONSTRAINT pk_cod_departamento;
       public         postgres    false    206    206            �           2606    17351 6   dependencia_institucion pk_cod_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT pk_cod_dependencia_institucion PRIMARY KEY (cod_dependencia_institucion);
 `   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT pk_cod_dependencia_institucion;
       public         postgres    false    212    212            �           2606    17644    imagen pk_cod_imagen 
   CONSTRAINT     S   ALTER TABLE ONLY imagen
    ADD CONSTRAINT pk_cod_imagen PRIMARY KEY (cod_imagen);
 >   ALTER TABLE ONLY public.imagen DROP CONSTRAINT pk_cod_imagen;
       public         postgres    false    228    228            �           2606    17665 0   kilometraje_comision pk_cod_kilometraje_comision 
   CONSTRAINT     }   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT pk_cod_kilometraje_comision PRIMARY KEY (cod_kilometraje_comision);
 Z   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT pk_cod_kilometraje_comision;
       public         postgres    false    230    230            �           2606    17325    linea pk_cod_linea 
   CONSTRAINT     P   ALTER TABLE ONLY linea
    ADD CONSTRAINT pk_cod_linea PRIMARY KEY (cod_linea);
 <   ALTER TABLE ONLY public.linea DROP CONSTRAINT pk_cod_linea;
       public         postgres    false    208    208            �           2606    17247    marca pk_cod_marca 
   CONSTRAINT     P   ALTER TABLE ONLY marca
    ADD CONSTRAINT pk_cod_marca PRIMARY KEY (cod_marca);
 <   ALTER TABLE ONLY public.marca DROP CONSTRAINT pk_cod_marca;
       public         postgres    false    190    190            �           2606    17338    municipio pk_cod_municipio 
   CONSTRAINT     \   ALTER TABLE ONLY municipio
    ADD CONSTRAINT pk_cod_municipio PRIMARY KEY (cod_municipio);
 D   ALTER TABLE ONLY public.municipio DROP CONSTRAINT pk_cod_municipio;
       public         postgres    false    210    210            �           2606    17255    pais pk_cod_pais 
   CONSTRAINT     M   ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_cod_pais PRIMARY KEY (cod_pais);
 :   ALTER TABLE ONLY public.pais DROP CONSTRAINT pk_cod_pais;
       public         postgres    false    192    192            �           2606    17377    persona pk_cod_persona 
   CONSTRAINT     V   ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_cod_persona PRIMARY KEY (cod_persona);
 @   ALTER TABLE ONLY public.persona DROP CONSTRAINT pk_cod_persona;
       public         postgres    false    214    214            �           2606    17424    puesto pk_cod_puesto 
   CONSTRAINT     S   ALTER TABLE ONLY puesto
    ADD CONSTRAINT pk_cod_puesto PRIMARY KEY (cod_puesto);
 >   ALTER TABLE ONLY public.puesto DROP CONSTRAINT pk_cod_puesto;
       public         postgres    false    218    218            �           2606    17263    region pk_cod_region 
   CONSTRAINT     S   ALTER TABLE ONLY region
    ADD CONSTRAINT pk_cod_region PRIMARY KEY (cod_region);
 >   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_cod_region;
       public         postgres    false    194    194            �           2606    17403    sede pk_cod_sede 
   CONSTRAINT     M   ALTER TABLE ONLY sede
    ADD CONSTRAINT pk_cod_sede PRIMARY KEY (cod_sede);
 :   ALTER TABLE ONLY public.sede DROP CONSTRAINT pk_cod_sede;
       public         postgres    false    216    216            �           2606    17271 @   tipo_dependencia_institucion pk_cod_tipo_dependencia_institucion 
   CONSTRAINT     �   ALTER TABLE ONLY tipo_dependencia_institucion
    ADD CONSTRAINT pk_cod_tipo_dependencia_institucion PRIMARY KEY (cod_tipo_dependencia_institucion);
 j   ALTER TABLE ONLY public.tipo_dependencia_institucion DROP CONSTRAINT pk_cod_tipo_dependencia_institucion;
       public         postgres    false    196    196            �           2606    17279    tipo_imagen pk_cod_tipo_imagen 
   CONSTRAINT     b   ALTER TABLE ONLY tipo_imagen
    ADD CONSTRAINT pk_cod_tipo_imagen PRIMARY KEY (cod_tipo_imagen);
 H   ALTER TABLE ONLY public.tipo_imagen DROP CONSTRAINT pk_cod_tipo_imagen;
       public         postgres    false    198    198            �           2606    17287    tipo_tipo pk_cod_tipo_tipo 
   CONSTRAINT     \   ALTER TABLE ONLY tipo_tipo
    ADD CONSTRAINT pk_cod_tipo_tipo PRIMARY KEY (cod_tipo_tipo);
 D   ALTER TABLE ONLY public.tipo_tipo DROP CONSTRAINT pk_cod_tipo_tipo;
       public         postgres    false    200    200            �           2606    17295    tipo_uso pk_cod_tipo_uso 
   CONSTRAINT     Y   ALTER TABLE ONLY tipo_uso
    ADD CONSTRAINT pk_cod_tipo_uso PRIMARY KEY (cod_tipo_uso);
 B   ALTER TABLE ONLY public.tipo_uso DROP CONSTRAINT pk_cod_tipo_uso;
       public         postgres    false    202    202            �           2606    17303    unidad pk_cod_unidad 
   CONSTRAINT     S   ALTER TABLE ONLY unidad
    ADD CONSTRAINT pk_cod_unidad PRIMARY KEY (cod_unidad);
 >   ALTER TABLE ONLY public.unidad DROP CONSTRAINT pk_cod_unidad;
       public         postgres    false    204    204            �           2606    17511    vehiculo pk_cod_vehiculo 
   CONSTRAINT     Y   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_cod_vehiculo PRIMARY KEY (cod_vehiculo);
 B   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT pk_cod_vehiculo;
       public         postgres    false    222    222            �           2606    17466 P   asignacion_vehiculo asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey FOREIGN KEY (cod_dependencia_institucion_juzgado) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 z   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_dependencia_institucion_juzgado_fkey;
       public       postgres    false    212    220    2200            �           2606    17491 K   asignacion_vehiculo asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey FOREIGN KEY (cod_persona_asignador_vehiculo) REFERENCES persona(cod_persona);
 u   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_asignador_vehiculo_fkey;
       public       postgres    false    2202    214    220            �           2606    17481 I   asignacion_vehiculo asignacion_vehiculo_cod_persona_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey FOREIGN KEY (cod_persona_coordinador_jefe) REFERENCES persona(cod_persona);
 s   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_coordinador_jefe_fkey;
       public       postgres    false    2202    220    214            �           2606    17456 A   asignacion_vehiculo asignacion_vehiculo_cod_persona_pasajero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey FOREIGN KEY (cod_persona_pasajero) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_pasajero_fkey;
       public       postgres    false    214    220    2202            �           2606    17471 D   asignacion_vehiculo asignacion_vehiculo_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 n   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_persona_solicitante_fkey;
       public       postgres    false    2202    220    214            �           2606    17496 J   asignacion_vehiculo asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey FOREIGN KEY (cod_puesto_asignador_vehiculo) REFERENCES puesto(cod_puesto);
 t   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_asignador_vehiculo_fkey;
       public       postgres    false    220    2206    218            �           2606    17486 H   asignacion_vehiculo asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey FOREIGN KEY (cod_puesto_coordinador_jefe) REFERENCES puesto(cod_puesto);
 r   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_coordinador_jefe_fkey;
       public       postgres    false    218    220    2206            �           2606    17476 C   asignacion_vehiculo asignacion_vehiculo_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_puesto_solicitante_fkey;
       public       postgres    false    220    218    2206            �           2606    17461 B   asignacion_vehiculo asignacion_vehiculo_cod_sede_lugar_salida_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey FOREIGN KEY (cod_sede_lugar_salida) REFERENCES sede(cod_sede);
 l   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_sede_lugar_salida_fkey;
       public       postgres    false    2204    220    216            �           2606    17451 C   asignacion_vehiculo asignacion_vehiculo_cod_unidad_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo
    ADD CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey FOREIGN KEY (cod_unidad_solicitante) REFERENCES unidad(cod_unidad);
 m   ALTER TABLE ONLY public.asignacion_vehiculo DROP CONSTRAINT asignacion_vehiculo_cod_unidad_solicitante_fkey;
       public       postgres    false    2192    220    204            �           2606    17565 R   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey FOREIGN KEY (cod_asignacion_vehiculo) REFERENCES asignacion_vehiculo(cod_asignacion_vehiculo);
 |   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_asignacion_vehiculo_fkey;
       public       postgres    false    2208    220    224            �           2606    17575 V   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey FOREIGN KEY (cod_persona_piloto_asignado) REFERENCES persona(cod_persona);
 �   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_persona_piloto_asignado_fkey;
       public       postgres    false    224    214    2202            �           2606    17570 G   asignacion_vehiculo_piloto asignacion_vehiculo_piloto_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY asignacion_vehiculo_piloto
    ADD CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 q   ALTER TABLE ONLY public.asignacion_vehiculo_piloto DROP CONSTRAINT asignacion_vehiculo_piloto_cod_vehiculo_fkey;
       public       postgres    false    222    224    2210            �           2606    17626 O   combustible_comision combustible_comision_cod_persona_encargado_transporte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey FOREIGN KEY (cod_persona_encargado_transporte) REFERENCES persona(cod_persona);
 y   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_encargado_transporte_fkey;
       public       postgres    false    2202    214    226            �           2606    17616 C   combustible_comision combustible_comision_cod_persona_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_receptor_fkey FOREIGN KEY (cod_persona_receptor) REFERENCES persona(cod_persona);
 m   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_receptor_fkey;
       public       postgres    false    226    2202    214            �           2606    17591 F   combustible_comision combustible_comision_cod_persona_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_persona_solicitante_fkey FOREIGN KEY (cod_persona_solicitante) REFERENCES persona(cod_persona);
 p   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_persona_solicitante_fkey;
       public       postgres    false    226    2202    214            �           2606    17621 B   combustible_comision combustible_comision_cod_puesto_receptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_receptor_fkey FOREIGN KEY (cod_puesto_receptor) REFERENCES puesto(cod_puesto);
 l   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_receptor_fkey;
       public       postgres    false    218    226    2206            �           2606    17596 E   combustible_comision combustible_comision_cod_puesto_solicitante_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey FOREIGN KEY (cod_puesto_solicitante) REFERENCES puesto(cod_puesto);
 o   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_puesto_solicitante_fkey;
       public       postgres    false    218    226    2206            �           2606    17606 7   combustible_comision combustible_comision_cod_sede_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 a   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_sede_fkey;
       public       postgres    false    226    216    2204            �           2606    17601 9   combustible_comision combustible_comision_cod_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_unidad_fkey FOREIGN KEY (cod_unidad) REFERENCES unidad(cod_unidad);
 c   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_unidad_fkey;
       public       postgres    false    2192    204    226            �           2606    17611 ;   combustible_comision combustible_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_comision
    ADD CONSTRAINT combustible_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.combustible_comision DROP CONSTRAINT combustible_comision_cod_vehiculo_fkey;
       public       postgres    false    222    226    2210            �           2606    17692 A   combustible_cupon combustible_cupon_cod_combustible_comision_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_combustible_comision_fkey FOREIGN KEY (cod_combustible_comision) REFERENCES combustible_comision(cod_combustible_comision);
 k   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_combustible_comision_fkey;
       public       postgres    false    232    2214    226            �           2606    17697 @   combustible_cupon combustible_cupon_cod_cupon_denominancion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY combustible_cupon
    ADD CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey FOREIGN KEY (cod_cupon_denominancion) REFERENCES cupon_denominacion(cod_cupon_denominacion);
 j   ALTER TABLE ONLY public.combustible_cupon DROP CONSTRAINT combustible_cupon_cod_cupon_denominancion_fkey;
       public       postgres    false    188    2176    232            �           2606    17312 )   departamento departamento_cod_region_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY departamento
    ADD CONSTRAINT departamento_cod_region_fkey FOREIGN KEY (cod_region) REFERENCES region(cod_region);
 S   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_cod_region_fkey;
       public       postgres    false    194    206    2182            �           2606    17357 E   dependencia_institucion dependencia_institucion_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 o   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_departamento_fkey;
       public       postgres    false    2194    212    206            �           2606    17352 B   dependencia_institucion dependencia_institucion_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 l   ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_municipio_fkey;
       public       postgres    false    210    212    2198            �           2606    17362 U   dependencia_institucion dependencia_institucion_cod_tipo_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY dependencia_institucion
    ADD CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey FOREIGN KEY (cod_tipo_dependencia_institucion) REFERENCES tipo_dependencia_institucion(cod_tipo_dependencia_institucion);
    ALTER TABLE ONLY public.dependencia_institucion DROP CONSTRAINT dependencia_institucion_cod_tipo_dependencia_institucion_fkey;
       public       postgres    false    196    212    2184            �           2606    17650 "   imagen imagen_cod_tipo_imagen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_tipo_imagen_fkey FOREIGN KEY (cod_tipo_imagen) REFERENCES tipo_imagen(cod_tipo_imagen);
 L   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_tipo_imagen_fkey;
       public       postgres    false    2186    198    228            �           2606    17645    imagen imagen_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY imagen
    ADD CONSTRAINT imagen_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 I   ALTER TABLE ONLY public.imagen DROP CONSTRAINT imagen_cod_vehiculo_fkey;
       public       postgres    false    222    228    2210            �           2606    17676 J   kilometraje_comision kilometraje_comision_cod_dependencia_institucion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey FOREIGN KEY (cod_dependencia_institucion) REFERENCES dependencia_institucion(cod_dependencia_institucion);
 t   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_dependencia_institucion_fkey;
       public       postgres    false    212    230    2200            �           2606    17666 A   kilometraje_comision kilometraje_comision_cod_persona_piloto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey FOREIGN KEY (cod_persona_piloto) REFERENCES persona(cod_persona);
 k   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_persona_piloto_fkey;
       public       postgres    false    214    230    2202            �           2606    17671 ;   kilometraje_comision kilometraje_comision_cod_vehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY kilometraje_comision
    ADD CONSTRAINT kilometraje_comision_cod_vehiculo_fkey FOREIGN KEY (cod_vehiculo) REFERENCES vehiculo(cod_vehiculo);
 e   ALTER TABLE ONLY public.kilometraje_comision DROP CONSTRAINT kilometraje_comision_cod_vehiculo_fkey;
       public       postgres    false    230    2210    222            �           2606    17326    linea linea_cod_marca_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY linea
    ADD CONSTRAINT linea_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 D   ALTER TABLE ONLY public.linea DROP CONSTRAINT linea_cod_marca_fkey;
       public       postgres    false    2178    208    190            �           2606    17339 )   municipio municipio_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 S   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_cod_departamento_fkey;
       public       postgres    false    206    210    2194            �           2606    17383 "   persona persona_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 L   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_municipio_fkey;
       public       postgres    false    2198    210    214            �           2606    17378    persona persona_cod_pais_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_fkey FOREIGN KEY (cod_pais) REFERENCES pais(cod_pais);
 G   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_pais_fkey;
       public       postgres    false    214    2180    192            �           2606    17388 '   persona persona_cod_pais_pasaporte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_cod_pais_pasaporte_fkey FOREIGN KEY (cod_pais_pasaporte) REFERENCES pais(cod_pais);
 Q   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_cod_pais_pasaporte_fkey;
       public       postgres    false    214    192    2180            �           2606    17425    puesto puesto_cod_persona_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_persona_fkey FOREIGN KEY (cod_persona) REFERENCES persona(cod_persona);
 H   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_persona_fkey;
       public       postgres    false    218    214    2202            �           2606    17435 '   puesto puesto_cod_puesto_reemplazo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_puesto_reemplazo_fkey FOREIGN KEY (cod_puesto_reemplazo) REFERENCES puesto(cod_puesto);
 Q   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_puesto_reemplazo_fkey;
       public       postgres    false    2206    218    218            �           2606    17430    puesto puesto_cod_sede_fkey    FK CONSTRAINT     r   ALTER TABLE ONLY puesto
    ADD CONSTRAINT puesto_cod_sede_fkey FOREIGN KEY (cod_sede) REFERENCES sede(cod_sede);
 E   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_cod_sede_fkey;
       public       postgres    false    218    216    2204            �           2606    17409    sede sede_cod_coordindor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_coordindor_fkey FOREIGN KEY (cod_coordindor) REFERENCES persona(cod_persona);
 G   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_coordindor_fkey;
       public       postgres    false    2202    216    214            �           2606    17404    sede sede_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY sede
    ADD CONSTRAINT sede_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 F   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_cod_municipio_fkey;
       public       postgres    false    210    2198    216            �           2606    17542     vehiculo vehiculo_cod_color_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_color_fkey FOREIGN KEY (cod_color) REFERENCES color(cod_color);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_color_fkey;
       public       postgres    false    2174    186    222            �           2606    17517 '   vehiculo vehiculo_cod_departamento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_departamento_fkey FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);
 Q   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_departamento_fkey;
       public       postgres    false    206    222    2194            �           2606    17537     vehiculo vehiculo_cod_linea_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_linea_fkey FOREIGN KEY (cod_linea) REFERENCES linea(cod_linea);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_linea_fkey;
       public       postgres    false    2196    208    222            �           2606    17532     vehiculo vehiculo_cod_marca_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_marca_fkey FOREIGN KEY (cod_marca) REFERENCES marca(cod_marca);
 J   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_marca_fkey;
       public       postgres    false    2178    222    190            �           2606    17512 $   vehiculo vehiculo_cod_municipio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_municipio_fkey FOREIGN KEY (cod_municipio) REFERENCES municipio(cod_municipio);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_municipio_fkey;
       public       postgres    false    222    210    2198            �           2606    17547 -   vehiculo vehiculo_cod_persona_asignacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_persona_asignacion_fkey FOREIGN KEY (cod_persona_asignacion) REFERENCES persona(cod_persona);
 W   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_persona_asignacion_fkey;
       public       postgres    false    214    222    2202            �           2606    17552 "   vehiculo vehiculo_cod_pueston_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_pueston_fkey FOREIGN KEY (cod_pueston) REFERENCES puesto(cod_puesto);
 L   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_pueston_fkey;
       public       postgres    false    2206    218    222            �           2606    17527 $   vehiculo vehiculo_cod_tipo_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_tipo_fkey FOREIGN KEY (cod_tipo_tipo) REFERENCES tipo_tipo(cod_tipo_tipo);
 N   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_tipo_fkey;
       public       postgres    false    200    222    2188            �           2606    17522 #   vehiculo vehiculo_cod_tipo_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT vehiculo_cod_tipo_uso_fkey FOREIGN KEY (cod_tipo_uso) REFERENCES tipo_uso(cod_tipo_uso);
 M   ALTER TABLE ONLY public.vehiculo DROP CONSTRAINT vehiculo_cod_tipo_uso_fkey;
       public       postgres    false    202    222    2190            x	      x������ � �      |	      x������ � �      V	      x������ � �      ~	      x������ � �      �	      x������ � �      X	      x������ � �      j	   M  x�U�Kk�0�ϻ�"��D~����hȣ�Pr٪"vq�Ė.��Ɂ�0`������-Μ�ś+-��R�	)z��'�$@E�S*ho;;��J�@ެ�}��,}�U�o�qW��?�pRS�E��~�*��c4ƪ�K�q�5�3>rlT\�y���o@5��F�ը}ۻ)PN9�(��vv�+f�x�"e`I1V���*��Ӳi/�=��8�C�2:��C�m\���n��q0c,
sV>��-�w3��<�X���ouc"� V��7^��ՐG��e	-:�߮��Rz�ʧtV�KE��Y	1J����_�(�;�����V�_���a͇;f�:�      p	      x������ � �      �	      x������ � �      �	      x������ � �      l	      x������ � �      Z	      x�3�ɯ�/I�4�,����� .=$      n	     x�mZ[o�8}�����n�^7�&���$-v�}ad5V �^]M~�wfx�S�H��3gfΌ,b���eV��YM�Quj��bX,%���ZOM��M�r!�)���8�i,]��5�U?��'}l�x���+-��2����^�^���}�UX��jlj���wZ�/�ea�~Sä;}lV��;�q��&�{�bY�Uws������rYٍ�iՇ�T�j),ک���p�Kh:Y
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
}����n���Xh�7`]9�S��q����Y�z���>ډ����������2\T      \	      x������ � �      r	      x������ � �      v	      x������ � �      ^	      x�]�M�@F��)�6Q��v2CR�A���?�P[����=P���$�h*�d���@S0{5~tb�;QB�2���j�|������B�����Z�6Ms/��E����9��K)} l�7�      t	      x������ � �      `	      x������ � �      b	      x������ � �      d	      x������ � �      f	      x������ � �      h	      x������ � �      z	      x������ � �     