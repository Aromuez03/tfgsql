PGDMP     8    7                 {        	   alfonshop    15.1    15.1 3    0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            1           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            2           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            3           1262    16489 	   alfonshop    DATABASE     |   CREATE DATABASE alfonshop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE alfonshop;
                postgres    false                        2615    16490    dlk_informacional    SCHEMA     !   CREATE SCHEMA dlk_informacional;
    DROP SCHEMA dlk_informacional;
                postgres    false                        2615    16491    dwh_alfonshop    SCHEMA        CREATE SCHEMA dwh_alfonshop;
    DROP SCHEMA dwh_alfonshop;
                postgres    false            �            1259    28933    dlk_rol_usuario    TABLE     �   CREATE TABLE dlk_informacional.dlk_rol_usuario (
    id integer NOT NULL,
    descripcion character varying(255),
    nombre character varying(255)
);
 .   DROP TABLE dlk_informacional.dlk_rol_usuario;
       dlk_informacional         heap    postgres    false    5            �            1259    28932    dlk_rol_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE dlk_informacional.dlk_rol_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE dlk_informacional.dlk_rol_usuario_id_seq;
       dlk_informacional          postgres    false    216    5            4           0    0    dlk_rol_usuario_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE dlk_informacional.dlk_rol_usuario_id_seq OWNED BY dlk_informacional.dlk_rol_usuario.id;
          dlk_informacional          postgres    false    215            �            1259    28942    dlk_usuario    TABLE       CREATE TABLE dlk_informacional.dlk_usuario (
    id_usuario integer NOT NULL,
    clave character varying(255),
    email character varying(255),
    nombre character varying(255),
    telefono character varying(255),
    rol_id integer,
    verificado boolean
);
 *   DROP TABLE dlk_informacional.dlk_usuario;
       dlk_informacional         heap    postgres    false    5            �            1259    28941    dlk_usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE dlk_informacional.dlk_usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE dlk_informacional.dlk_usuario_id_usuario_seq;
       dlk_informacional          postgres    false    218    5            5           0    0    dlk_usuario_id_usuario_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE dlk_informacional.dlk_usuario_id_usuario_seq OWNED BY dlk_informacional.dlk_usuario.id_usuario;
          dlk_informacional          postgres    false    217            �            1259    28951    dwh_categoria    TABLE     �   CREATE TABLE dwh_alfonshop.dwh_categoria (
    id_categoria integer NOT NULL,
    descripcion character varying(255),
    nombre character varying(255)
);
 (   DROP TABLE dwh_alfonshop.dwh_categoria;
       dwh_alfonshop         heap    postgres    false    6            �            1259    28950    dwh_categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE dwh_alfonshop.dwh_categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE dwh_alfonshop.dwh_categoria_id_categoria_seq;
       dwh_alfonshop          postgres    false    6    220            6           0    0    dwh_categoria_id_categoria_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE dwh_alfonshop.dwh_categoria_id_categoria_seq OWNED BY dwh_alfonshop.dwh_categoria.id_categoria;
          dwh_alfonshop          postgres    false    219            �            1259    29006 
   dwh_estado    TABLE     �   CREATE TABLE dwh_alfonshop.dwh_estado (
    id_estado integer NOT NULL,
    descripcion character varying(255),
    nombre character varying(255)
);
 %   DROP TABLE dwh_alfonshop.dwh_estado;
       dwh_alfonshop         heap    postgres    false    6            �            1259    29005    dwh_estado_id_estado_seq    SEQUENCE     �   CREATE SEQUENCE dwh_alfonshop.dwh_estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE dwh_alfonshop.dwh_estado_id_estado_seq;
       dwh_alfonshop          postgres    false    226    6            7           0    0    dwh_estado_id_estado_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE dwh_alfonshop.dwh_estado_id_estado_seq OWNED BY dwh_alfonshop.dwh_estado.id_estado;
          dwh_alfonshop          postgres    false    225            �            1259    28967    dwh_producto    TABLE        CREATE TABLE dwh_alfonshop.dwh_producto (
    id_producto integer NOT NULL,
    cantidad integer,
    descripcion character varying(255),
    nombre character varying(255),
    precio integer,
    imagen character varying(255),
    categoria_id integer
);
 '   DROP TABLE dwh_alfonshop.dwh_producto;
       dwh_alfonshop         heap    postgres    false    6            �            1259    28966    dwh_producto_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE dwh_alfonshop.dwh_producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE dwh_alfonshop.dwh_producto_id_producto_seq;
       dwh_alfonshop          postgres    false    6    222            8           0    0    dwh_producto_id_producto_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE dwh_alfonshop.dwh_producto_id_producto_seq OWNED BY dwh_alfonshop.dwh_producto.id_producto;
          dwh_alfonshop          postgres    false    221            �            1259    28976    dwh_sugerencia    TABLE     �   CREATE TABLE dwh_alfonshop.dwh_sugerencia (
    id_sugerencia integer NOT NULL,
    mensaje character varying(255),
    estado_id integer
);
 )   DROP TABLE dwh_alfonshop.dwh_sugerencia;
       dwh_alfonshop         heap    postgres    false    6            �            1259    28975     dwh_sugerencia_id_sugerencia_seq    SEQUENCE     �   CREATE SEQUENCE dwh_alfonshop.dwh_sugerencia_id_sugerencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE dwh_alfonshop.dwh_sugerencia_id_sugerencia_seq;
       dwh_alfonshop          postgres    false    224    6            9           0    0     dwh_sugerencia_id_sugerencia_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE dwh_alfonshop.dwh_sugerencia_id_sugerencia_seq OWNED BY dwh_alfonshop.dwh_sugerencia.id_sugerencia;
          dwh_alfonshop          postgres    false    223                       2604    28936    dlk_rol_usuario id    DEFAULT     �   ALTER TABLE ONLY dlk_informacional.dlk_rol_usuario ALTER COLUMN id SET DEFAULT nextval('dlk_informacional.dlk_rol_usuario_id_seq'::regclass);
 L   ALTER TABLE dlk_informacional.dlk_rol_usuario ALTER COLUMN id DROP DEFAULT;
       dlk_informacional          postgres    false    215    216    216            �           2604    28945    dlk_usuario id_usuario    DEFAULT     �   ALTER TABLE ONLY dlk_informacional.dlk_usuario ALTER COLUMN id_usuario SET DEFAULT nextval('dlk_informacional.dlk_usuario_id_usuario_seq'::regclass);
 P   ALTER TABLE dlk_informacional.dlk_usuario ALTER COLUMN id_usuario DROP DEFAULT;
       dlk_informacional          postgres    false    217    218    218            �           2604    28954    dwh_categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_categoria ALTER COLUMN id_categoria SET DEFAULT nextval('dwh_alfonshop.dwh_categoria_id_categoria_seq'::regclass);
 P   ALTER TABLE dwh_alfonshop.dwh_categoria ALTER COLUMN id_categoria DROP DEFAULT;
       dwh_alfonshop          postgres    false    219    220    220            �           2604    29009    dwh_estado id_estado    DEFAULT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_estado ALTER COLUMN id_estado SET DEFAULT nextval('dwh_alfonshop.dwh_estado_id_estado_seq'::regclass);
 J   ALTER TABLE dwh_alfonshop.dwh_estado ALTER COLUMN id_estado DROP DEFAULT;
       dwh_alfonshop          postgres    false    226    225    226            �           2604    28970    dwh_producto id_producto    DEFAULT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_producto ALTER COLUMN id_producto SET DEFAULT nextval('dwh_alfonshop.dwh_producto_id_producto_seq'::regclass);
 N   ALTER TABLE dwh_alfonshop.dwh_producto ALTER COLUMN id_producto DROP DEFAULT;
       dwh_alfonshop          postgres    false    221    222    222            �           2604    28979    dwh_sugerencia id_sugerencia    DEFAULT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_sugerencia ALTER COLUMN id_sugerencia SET DEFAULT nextval('dwh_alfonshop.dwh_sugerencia_id_sugerencia_seq'::regclass);
 R   ALTER TABLE dwh_alfonshop.dwh_sugerencia ALTER COLUMN id_sugerencia DROP DEFAULT;
       dwh_alfonshop          postgres    false    223    224    224            #          0    28933    dlk_rol_usuario 
   TABLE DATA                 dlk_informacional          postgres    false    216   >       %          0    28942    dlk_usuario 
   TABLE DATA                 dlk_informacional          postgres    false    218   �>       '          0    28951    dwh_categoria 
   TABLE DATA                 dwh_alfonshop          postgres    false    220   �?       -          0    29006 
   dwh_estado 
   TABLE DATA                 dwh_alfonshop          postgres    false    226   A       )          0    28967    dwh_producto 
   TABLE DATA                 dwh_alfonshop          postgres    false    222   �A       +          0    28976    dwh_sugerencia 
   TABLE DATA                 dwh_alfonshop          postgres    false    224   �C       :           0    0    dlk_rol_usuario_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('dlk_informacional.dlk_rol_usuario_id_seq', 1, false);
          dlk_informacional          postgres    false    215            ;           0    0    dlk_usuario_id_usuario_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('dlk_informacional.dlk_usuario_id_usuario_seq', 21, true);
          dlk_informacional          postgres    false    217            <           0    0    dwh_categoria_id_categoria_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('dwh_alfonshop.dwh_categoria_id_categoria_seq', 1, false);
          dwh_alfonshop          postgres    false    219            =           0    0    dwh_estado_id_estado_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('dwh_alfonshop.dwh_estado_id_estado_seq', 1, false);
          dwh_alfonshop          postgres    false    225            >           0    0    dwh_producto_id_producto_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('dwh_alfonshop.dwh_producto_id_producto_seq', 15, true);
          dwh_alfonshop          postgres    false    221            ?           0    0     dwh_sugerencia_id_sugerencia_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('dwh_alfonshop.dwh_sugerencia_id_sugerencia_seq', 3, true);
          dwh_alfonshop          postgres    false    223            �           2606    28940 $   dlk_rol_usuario dlk_rol_usuario_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY dlk_informacional.dlk_rol_usuario
    ADD CONSTRAINT dlk_rol_usuario_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY dlk_informacional.dlk_rol_usuario DROP CONSTRAINT dlk_rol_usuario_pkey;
       dlk_informacional            postgres    false    216            �           2606    28949    dlk_usuario dlk_usuario_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY dlk_informacional.dlk_usuario
    ADD CONSTRAINT dlk_usuario_pkey PRIMARY KEY (id_usuario);
 Q   ALTER TABLE ONLY dlk_informacional.dlk_usuario DROP CONSTRAINT dlk_usuario_pkey;
       dlk_informacional            postgres    false    218            �           2606    28958     dwh_categoria dwh_categoria_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY dwh_alfonshop.dwh_categoria
    ADD CONSTRAINT dwh_categoria_pkey PRIMARY KEY (id_categoria);
 Q   ALTER TABLE ONLY dwh_alfonshop.dwh_categoria DROP CONSTRAINT dwh_categoria_pkey;
       dwh_alfonshop            postgres    false    220            �           2606    29013    dwh_estado dwh_estado_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY dwh_alfonshop.dwh_estado
    ADD CONSTRAINT dwh_estado_pkey PRIMARY KEY (id_estado);
 K   ALTER TABLE ONLY dwh_alfonshop.dwh_estado DROP CONSTRAINT dwh_estado_pkey;
       dwh_alfonshop            postgres    false    226            �           2606    28974    dwh_producto dwh_producto_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY dwh_alfonshop.dwh_producto
    ADD CONSTRAINT dwh_producto_pkey PRIMARY KEY (id_producto);
 O   ALTER TABLE ONLY dwh_alfonshop.dwh_producto DROP CONSTRAINT dwh_producto_pkey;
       dwh_alfonshop            postgres    false    222            �           2606    28983 "   dwh_sugerencia dwh_sugerencia_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY dwh_alfonshop.dwh_sugerencia
    ADD CONSTRAINT dwh_sugerencia_pkey PRIMARY KEY (id_sugerencia);
 S   ALTER TABLE ONLY dwh_alfonshop.dwh_sugerencia DROP CONSTRAINT dwh_sugerencia_pkey;
       dwh_alfonshop            postgres    false    224            �           2606    28984 '   dlk_usuario fk9uc3el5fdm6j4hbxif1vd98fb    FK CONSTRAINT     �   ALTER TABLE ONLY dlk_informacional.dlk_usuario
    ADD CONSTRAINT fk9uc3el5fdm6j4hbxif1vd98fb FOREIGN KEY (rol_id) REFERENCES dlk_informacional.dlk_rol_usuario(id);
 \   ALTER TABLE ONLY dlk_informacional.dlk_usuario DROP CONSTRAINT fk9uc3el5fdm6j4hbxif1vd98fb;
       dlk_informacional          postgres    false    216    3206    218            �           2606    28999 (   dwh_producto fk2aytbn87o46rg04sl59v75y0g    FK CONSTRAINT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_producto
    ADD CONSTRAINT fk2aytbn87o46rg04sl59v75y0g FOREIGN KEY (categoria_id) REFERENCES dwh_alfonshop.dwh_categoria(id_categoria);
 Y   ALTER TABLE ONLY dwh_alfonshop.dwh_producto DROP CONSTRAINT fk2aytbn87o46rg04sl59v75y0g;
       dwh_alfonshop          postgres    false    222    220    3210            �           2606    29014 *   dwh_sugerencia fkc34ss6tcn6qjnxpi29p4u9ani    FK CONSTRAINT     �   ALTER TABLE ONLY dwh_alfonshop.dwh_sugerencia
    ADD CONSTRAINT fkc34ss6tcn6qjnxpi29p4u9ani FOREIGN KEY (estado_id) REFERENCES dwh_alfonshop.dwh_estado(id_estado);
 [   ALTER TABLE ONLY dwh_alfonshop.dwh_sugerencia DROP CONSTRAINT fkc34ss6tcn6qjnxpi29p4u9ani;
       dwh_alfonshop          postgres    false    3216    226    224            #   �   x���v
Q���WH�Ɏ��K�/�ML���K�����ė�&e�+hd��(��'e���(���&�j*�9���+h�(�CU�#15��<�l���Ĕ��<u8��/.-H-�[����� -�k�      %   �   x���]K�0�����m�2�G;�,8� \+ލc���|hj��7A&��ݽ�9p�C��v�Аz��e^w�:,H��<M�~���LQ�sN��Q�D[@���s��C�y������:`������]o�T�d�<5U�����zDɁAK��j5�����g˫�t~.�M�~x��EGS-��(D,<>=������?8�͡���4e�=����`G,�B��B\,cf���$������O�?�,�!      '   Z  x����N1E�|�tI��~�
�"A@$Т��l,y=+��Q��h���7��p7�k�����|��l� �}��fE֯�ڋ���
ra��O6��p���,�K���ru�<���h�q��[d-T��F����x
%'�,(k*����m/{�TǿPU�0����L�r�M����]-�IGפ��`P�9aUo�ɯ�"��_�2WI��q��Pĺ�Z.��.&F��+��"��TPV���Ě��p��a� �-�1�#�����lz��.:���ld�r����Z�c=��~���f�^P@�Lw�b������&E��;V%��?m��L��l���7.�4�      -   �   x����
�@��<�tI jie�" L���n5zw��>��;�vg�c��)7-��]C?�=��Ά��I�8\I;dFd�A���8[���A8�n�ږ�i��|g؂�g��@`)�qBpV=�N�>[�	�^�/��<������X�*CL0����=`4 I^<���      )   �  x�Œ�n�0��y
ߵ�Bb ��4Q(\(��D��&f��l�����&ޠ7���c�??����H���?U��7)L%��(�%�M���� XXN1� e�h���B
�<�4s���L4�-+��8��l��,Y���������5v��{X\X&��q�1�����sfe�2Apia|�ME�82m�6>3�ǰ��G��mj�c��F��͓^a�ӆ9���tM:w_Z駑�x�אya���Knq�~@��v�,&��<X,xc^�;/�&��gem�B@�4[N|"A�������=L�����>{D�*1��f�~�܎g�]nu�>!>�{R���X�#{E��[�pq?�;��V��T�,����'ϻ�Eq���&rOm�+؄N��a�����&z���#7A��2"5nJ4|��*����|^�d`O[�x��~ԋ�A��Z�w�N �      +   �   x����j�@D����%cp}쩇@iJ�W#,5�b�:�]���!��@��4�7j�����x~��=M_���jU�����u�O���+}K	�Dz�;|�.�ۦ��K&��������!h�����E�94�6%��s�>�����$ID��K��G�Ֆ���,�f�G;p������$fNd�����/ߛ�b     