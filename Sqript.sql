PGDMP                         {            Shop4    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    25607    Shop4    DATABASE     {   CREATE DATABASE "Shop4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop4";
                postgres    false            �            1259    25609    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    25608    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    25616    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    25615    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    25623    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    25622    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    25630    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    25629    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    25639    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    25649    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    25648    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    25638    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            ~           2604    25612    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    25619    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    25626 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    25633 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    25642 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    25652    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    25609    category 
   TABLE DATA                 public          postgres    false    215   s9       *          0    25616    image 
   TABLE DATA                 public          postgres    false    217   :       ,          0    25623    orders 
   TABLE DATA                 public          postgres    false    219   :=       .          0    25630    person 
   TABLE DATA                 public          postgres    false    221   �=       0          0    25639    product 
   TABLE DATA                 public          postgres    false    223   U?       2          0    25649    product_cart 
   TABLE DATA                 public          postgres    false    225   3E       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 4, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 50, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    218            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 4, true);
          public          postgres    false    220            C           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 10, true);
          public          postgres    false    222            �           2606    25614    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    25621    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    25628    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    25637    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    25654    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    25647    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    25656 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    25662 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3212            �           2606    25672 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3206    215            �           2606    25667 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    219    223            �           2606    25657 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3214    223            �           2606    25682 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3214            �           2606    25677 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3212            (   �   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0���.6]�د�i��I�� #�]�xaׅdh7i_r��bЈ}@��g�1Ș)�]�qa��Ƌ� #�� +bc      *   '  x�����7E�������"E
�\�X p��IkH�h��vA���,��3���H�������=}�������v���{��no��x�����G��o���m?�_������_����������ih%l���&�\����v�-o=��oo��/O��L�TQ�A�F@"m��٤,jm��L���S����i|�Kp1��$��u��TlzU��@��L��P��.+��.c���[�!$�h&��U�M���U�m|3�������^����'�Î�i&3gO#M�⺀:е�iQG���g�`:Q<)�2Gt%heT�ٍ�� �G��3)��4��K?�1�Ir��(��葡�L޻�J��*d�
Ԕ@��tj��\G��3w%$m������ ����c��������C-�b���I�]1&X�\x15�M�c��Ć���#CUZ-�*iP�Z7���{)G!`�*�>^Г"��q�Fb��eL�=$�*i�b�}�7�ڌEQrI�W�u�]D�Kr�1��1U��s�Z��pMI�u���f�"��f�0l��$��8r���G��3w�LiuHe*P"���B���_��<sQ�Jl3��H=�F$+�����y�.�9�kV�`!
��&��������&򰻋g�	S@=�<s��f�V�.�G�r:�UT}������L�WV�S�dm�H���E�⇱�j��H/�8C�s
+�)���]F�)�"
!�&m�%bT�W�:���y(�6��fp���0`�I`(G�F������ �P�UE�      ,   �   x��;�0EwŷU!���Q;up��j�JB}��ߴ�=�{n��s��p�YL�;;���"0{�<��<�e�laճCp��D<����}�~��v��9����jH����0�
��a��$/%#�]b[�K(6��0��Jj�cm��ViZ�]����8�]�$���6�      .   M  x���Ɏ�@��O��DML+����"J��˄�e_�A���LL��ԩRI����s�A@�P��v��*q��ЛI�ٔ(l����e��	qފ&�crJ�l/�Q�){H·N	q̯�²��2ͤ���ij�ph�����q�	��_SD�{���<�|�[0��!�z���4��s�Mq�h�N@):�n�z��U(�1滫�Xg�Wf���a�>�uUPuq�Bo<�m�o��w�l1�[5,@f��y���q#R��9�.Z���}?��e,����[�i��Ug��qP���v���8U�'Q-g,��5� 2��|      0   �  x��W[OG~�W�KE"-����OQ�)��1���Zrjd���a;��PL��I!j+����ŗ�/�����~����Ɩ�D%�fggΜ��}svn����bn��X^�&������j<'��H,��s��I�+�lj9��|g��l*���d:��Z"�ʥ��j)��6���a_d��?O%��?�y"�LYb����%��lJGԖ�	ْ�������TE�&�ңy,�U�����ȓ����5U�N@����i,�L6KBm����<&��z�x0T�M���;����v�z�&x%�bҷ��z�5v{��_Gm��+�-�J�'��~��+!��J�<����UQ bޛW?H#vUm�z��N�<Y�U��}������Xv�+��*����K�����~�MJ�`/J(s0���
��o�ө ���*,��p(0n�ht�FEC/3��J.�M�f}y�!9c쭇�ɻ_���*,��};��''B�c�t,��MF�)v�lʖGW�.�k�Q�T5�,G#��k �q��h��'�J��Q$TrKm�GH׍`^�ta�2ZT^_��y_ZY]J���a% Z;(�o(pCӊ ��i'�@1bj�������!��o����5&טul h.���TupC��3�9�
U�r�Z�����A��]B�@����l�q��N�0�Y��N\Fk�B�P�~�g�T��r�;D�r_~@Yv�;��#�{���xs���<��e�'^��,��;�;#@�u�Go��h 8	OG��=H��Ҳ�)Ff	����
�N� ��M����_/�x��U^G ��2@�Zgx�G�7��7�H��A��A��rz�kl��*Y}ʪ5���%0 ��A�a�t�Z�-�Pj�v��l��#��$�[�ɟ���x�����I#�G���@�gwo�N$1zbV�������]���ģ��}1rc��b2��B4((��tl�)V�V���У�ŇD��p���_A����'�����E�`6l�@{���~��i���"l�hl�p)�k�@�O�ع)ts�΀�C�7�db����F��L�ᠿ	O*_�I�N���܇�.,}G�y�cH9�S8�#+w������W� l�ܰP6.{���G!n�����*fި� u�����:+�LN�K��Dж� -"���4�����O�$H7��W����Eԓ���1>�_�=��3����D~����~�y�[^䫲�?� h���P,bB�t4ݨq�BR��Fj>�[�r7�_[~�#��W�\P�z�m��C���"�Ը��Z��F>�ş'O��^4���nY�~T����e�F����45�;�ʽѕ4Ň5g����|ش���|�p�}���cm-�d]�?'t���wI������k���C�Zx*�}p��bq�H/�q�D�Y�pz�ʿ�>9r 0k�w���S�����\�M�w��:�flHK5H.�j�n��_      2   
   x���         