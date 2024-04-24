PGDMP  %    
                |            postgres %   14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)    16.2 /    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    13759    postgres    DATABASE     p   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            0           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3375                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            1           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4            2           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16397    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false    4            �            1259    16396    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212    4            �            1259    16413    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false    4            �            1259    16391    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false    4            �            1259    16390    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    210            �            1259    16403    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false    4            �            1259    16402    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    214            �            1259    16440    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false    4            �            1259    16439     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219    4            �            1259    16429    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false    4            �            1259    16428 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    217            �            1259    16451    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false    4            �            1259    16450 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221    4                       0    16397    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    212   (9       #          0    16413    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    215   �@                 0    16391    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    210   G       "          0    16403    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    214   �N       '          0    16440    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    219   �d       %          0    16429    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    217   �e       )          0    16451    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    221   Sf       3           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    211            4           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    209            5           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    213            6           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 27, true);
          public          postgres    false    218            7           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 29, true);
          public          postgres    false    216            8           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 29, true);
          public          postgres    false    220            �           2606    16417 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    215    215            �           2606    16401    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    212                       2606    16395    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    210            �           2606    16407    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    214            �           2606    16444 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    219            �           2606    16433 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    217            �           2606    16455 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    221            �           2606    16418 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    212    3201    215            �           2606    16423 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    3203    214    215            �           2606    16408 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    3199    214    210            �           2606    16445 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    3201    219    212            �           2606    16434 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    3199    217    210            �           2606    16456 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    221    214    3203                r  x�eWIv�6\��	��\J%[�,Y����"�����n���b����x��FwUuA�Or�r��}'�=�s�����L�O��̲�����+�/�g}POɥY�^�ג�O��r]ɪ�W�\Ԡ��� �������\d�er!͢G�̊�71�?-ox�>uʨY&�j����H]��}�f-gV�\���c7��D#ܚ=b��"g'���e��Ͱ�`�"��~�Ϭ�J���#+r.*�Y����OJ�P�H�k�^tjt�eH����D��{���<�1y��P�� V�<K���1�,\"�n5:y�w��O�¶��W�~D԰�<;�ǝ�0-U:+ؕ�IN'�G�h���:���QO�<��G�R�Q�;�kvfP��!������ڦW�<k]����yʾ "�e�+�]�`W5��ɇ��S��jx��,.���9{�΋<L�G4�U U��˧�tr1���ޠ��[FXP/D�s�
"��~P(˱^G���ֆ}E2�;�E���H�HQ�Y}U�3^���s=(��Rd�J��ڰP`s�Nq�#�O�՝�͸��FivS�e�%z�w�I��'�� ��|P�g��.��(�����oh��e��-{��=��e�f�� %{��}�g�K��2c��#�9�%R�� ��{B��e`�Q��2VЗ+�ފ�˃V&hG��:��R�e��f+�K=�g��e':�f�j.��J=87���4@��~T���d �r�;�>UE�2��]gׁ=�G�8�ڐ�j#Z�-��Z�h�"%VϾ���,G�-���N����;�i��u$J���p>���u���E��Z�!k� ��{Xm����%��Y��U�&V�*����f�w]���ʔ�M�aXP�n#	o�u��&�za�g�j#~�/) D=����Ylrv#m��`�8���?H������ 曊����]8�,xS��ȧ)�,�4�iثAcm+������ncsGFm��Ֆ�X�
�+�@Tm3�MsM����Ǝ�I���e)o��o�h��+nQc�t3&⵪y[��D�Cڍ27���42�@`��z��y-�4����3zOIT4:2�j�ri����4g����H�����s�6-}�=r���U��I�u�ca6�Xmh~D[@A� �ma�G4����[��g�Bd�������ܷ���d�N4ÍQau�焫���(��%���ɫyQB-�q�\��LÆ|H�i���	����sQPp%c���$#�r$��^��98h��p�l�+`.�w,���z��C�N%�9��N�ݰwWvՅ%����]mtY^@���,^ڨ�0KNթR�!�&S�k`��0c`�$�R�'��O�i��d+�W���$�mϝ �}n��Hn��+����5p	Ás��M���~3v��}I<�3���'��V�h-\�����RB����'�������,u<�b�'���9�X�.
/��̍�7LMOgf�y�#��	������(p	n�\��N=N�p	�$��:6|�`��T�7�l�i0	n\�3G������`�7Ę�q8jg�LBPKo:5����
��ͩ�D��Kp;�����o� ������mĭ��x#	��k9�hg�?LB����)��CX�/ĥ�Z�H�8��Et�tv�e�q
�$�mH��I�U�!�:��v�����J�`���F$5�����=���g��G����'��D|T����ۆ/�qd7߭��r>U����]�nͼ�r�Z؈���lD,b�0k�gQ�1�����MH��)E7"��WX�l�9���sU�Ѫ�ԁ�0����pT2x��8Go�`*���'kj�?z1 �?����i1�W      #   Q  x�5�[�,9C�Ӌ�0�����u������vb�����no~�E�/�l1�#Z���Y-b|���Z�l#��5}�q[������Ƿq����1N�7�|z��1��_,�ڷ�UN�N�l+������|�p蟊��>o�z�CSq��k}��^�yTG�ۿ�����m�7���)��t�h�~W������/�n�S&�o�v���YU��=�Ћ�] H督���#R9q%�@!��V:s
}��F�KSw��Lv}pK�h�{XX�?�R�D��`��Rq�e��T:��+�CN�*������E���b�w�?�b*@(�p����5u��Vg8���K/
�Y�ȝ&N�<{�3�(�=m�5�|�װ�T��(tF�M�X�( ��&�vS��π?�-�:��/3}���M���j81U��0[�oE�E�~5Ŋ��pMY*R��0qC\�zg��q%�0~Tef� ��3�
0�'Uu��V�L��&뉻�s�rߡ�͎yu�N�5�x��2������=�j?�n���b"����f��T�A�JA_�RX&S�[��qe?-�b�W�J��#��D��[%N��~�2p�}�"c��bE6���|,��S��|��tXZ�O�˽vi`�oI�\.q���=ֲ��{�	��,�޽.h�������弄j��]2#��ҥ0���x��t:�K:�2�7eQ�.d���Gb��"�R�GV4 vt�I�
���ŗP�		A�o��� NZ���+cU�� ��-X����4��()A�FM�A�"'�g(vf���$)Dӡ�Q��@��)j�bMS��a��k~ͫ�$��-娳� 3E�c⇃�%����_�S���2��u�Ʌ����i2���!r�;��VO`�(�Qkۆ����C�:�p8��)i�d)ד�5�~xl��e���!�pX�4ii�ue��R��/1s�0̙�cf8t��ţ�Q��JZ�7|� �5CyO����[�Ơ�g�H\Q�+R�_�����Խ}y�㑌��6���1�������9JR��.����ߥ�4��E��s� |�ڎ���Ug�e隍���uC�����j��Z���e7?���=�ȶ?��ܑ������57f\$`x�� ����+�t���8<`�tԌ)�z9���ա���i"o �4���ݽZ�z zhA�ջ�ݺQ�iqb��4��ˀ�_tB!t���Y�T�Yܬ�,c3�$k�W7����nb	�4�8��j�c�v?�<z"8$�b/Z(�#\�ص�4�i&�{>�4`hD����^�nP�I�i�q��N62�@[����¤w�M��������{����$﹖r���`��j!V1�!��r�na;�a���m�^��=QΰkML�XGT�\h!�ڱE�W��w-�����*�6�Q�'�y�F����?x���&�E�I���� J|�Re��X5��z��	_�?Z��G#v	ݎ{�㷳*��˜n)������` �bo��z��s{��߮k����ޟ�L�:�~�(�GH�~��A�6��c����̝��������/������*�o
�@Y#}կ$��d3U�3�"-�������C-         �  x�UW�V�8|���_0ǲe[~$��!� g^D�ҭ�K�m�$��|���������ܥ�VY�/��e��3Ӡ��ٱ���hf��:�b������b���.��ۙ�ՊK�8���ɓ^[V�b7z���쪳{c'M�j�N?��]����#koة�p�Q�O�FVJ�إ�;әV5�e�[3�����AI�E�nF,|Yp���T΅`����t��k�vn����ݏ;V7\�쳞u��>���E�G�L��Y�XW\T�	<gǟx�i�8d�r��ܰ����Kۛq7xH����t��2-���Mv�0Y�"gW�����q��t�@��|[mG�AQ�Ofۛ�=�'�GKv��f���e�5U���-Jn�Mvj��$�*�6��B�N�sv��͞:,xѰ�eg~d�f��=�h�Ju��/Zv�#ޔ�*x��k�a�;j:�'�"��!��𙧊#��d���>�͙G�l)ٝ�̄6\lp�"�{+vL����fz�cŁR��lp��ߋ�Y��TB����{Zw�W=P������q��z<,W\
�m�-�Q����"�5@Փ���=M m���lz���Y��Y��Ί��j��;߶Zr�����Q���]�A�=%'[,u����_�	o[`�G��5�%�D���q�ijdU8�yJ��@�9���	����U@YF[kv�^���i����j<� �f8���b�ht��FM,�Z��G�c��y��[=�E<�� �O �.����w�� ��Z�n3��V����$�SW�l6�o6�����)��f�����"D�H�ipe�1�j79Z�� ���6�80�qZa[�c��X�f�ѭ�ؖ72��k�ښ&)�W��y>+���ա���*���]S�fa��֨4?>�^k�q4�S�W9;��<�Ĵ��J�f�QLO��"��a��8̘��it�I��P\TW;Nw�j?�Ep�!-���/@a)�j���z�:���Ѡ��m�"y�]�_�p#����5��d���B�jޖ�~�m{�[GQ,��Q��P\�S�HJ�Z�s�S=l�&��'��$l�V�WZUC��t�axB_r�FOT0/����O�%si��#�_.C��fJ��c�zF��@���A�<��WDI#�JQ��jz�� >�. / �W�7S�Pw7�c�Z�"B1�`[8}��AeMd񎢦=U���%����8Xch�_���$�!1��!{�*��[R@����)/��bq�*��"}3�>���ҰS�~����]�ȥ8��Pz�M@��T��Pi �n���O��Ȼ�|JZQ~O*^CGY���典,��Q"@��'��@D���;
�t4�p	B��pps�2��GC# �g���L�/N������V���h���F�x �O�>�(�C��^W��L��
�E���q��;��A�2 -9�}P�������3`�_)�xT����>M�$�ZG��	�fW"�.��t���H�
��|�K�KJ��2$l�xbM�BI�������~o3�}n�:L�d���*iL��9�DnX�́}�A��7����a^��h�	@g�@sk2"�t�y��. �26��7�㰢����'E�pc��R���e�劾���[��$��g���� iW����(�o��;dT@�=k����
���}�%;�RA�C���U(���HW�r>�i>8������_� �+v�=
'MFU\E��y��/�-R, AFE2�
� G�*|p^$6��RWx�� �77)�/h����S�!u�u��ш�aPF����x\�� |Tyq�/*�'����9��o��s��6�g��CXJ0���-���c�2(Z�7�Lhʟp��S���      "      x��\���ȑ�ɯ��Ef��2/��u��.��:�j޾T[�����1e�!ȓ�?����hh�2q�ĉH�Fw����p��e������x~��my��͟���u���ƫFǨUxT�5�雯��2>����_Y�6����O���<����Q�Gۮ1��4_�v��y�����ۥ��qY楉�1J�ʘ�o��4�N����p�8.�t�}���]���ul����{ą���e�v.�t@Xv�/�t�?M���t���	�/Ц��߂߃����c�~���6.����Q����z��Q�~��lO4�,�>�f?���<4_d;�y�HXǵ���O���:ʺӼ̗��*4���ml�Ƶ/˔���x�>��en�g���lh�.>j�m�j,~��p~�j�׷����u:���N�]<-��������'.?OK2������`�ݙ��C����p�y`������u����\n5ҵ�G�;X���h��r��.�o�z����	��� �}����vIO�|-ߪ"މ�#j�j�8<��:\F��<�V�^��64��5�+6�^'��in��'��8b�L�.���M��WK���\N�F�/��T�f���O�)��}�o��å��X�O�<�-y�w���,���{�Z���Uw�@����R_~"y��f�h����MN���Q�9G��]���]����߇�y�6_�t��z�-\�im�Ѱ�� �
쥬���-G2~�X��xԎ>�k޴�h��wD��5�7�D�>�6t���U�]f�s͟a{��P 8��� �h�3��pN�x�� ���p��5�0��ܴ�y/�@ȧa�<���`L�O�1�CO'�OC'�H#f�q���4�������m�ח��K�@",�D��(d���	��n����j��k�9]�S_�e���>^R��h}�jƵ�:*���_
���o��Q�p��:p������
��|1ص��ȩ��U[+�|����C���>�}~�^�rX\=_���Y�-P��A<'�u����@'��S&��(7�!���:�{xZn�VK޺�<�<�j���e�^�a1El�aa��^5�Ե����'���	�<�Z�V�.�|N��N�~F��xs��e6�ӂ�I�\rJ�=0.�W5/S�\��<������ɵ�d��ACA!J�w2`ä q���-q zx@
z���:��1��uX2�by����rF~�4͗rF��˂��
��Й!�D|��#�t�^V�ׂ���bc���K�y�h�k,f��L� mH�%�h��]���ʂ+�یt�c`���;�{����1"� 8p�]��.�Ԅ(GZ�[\���dƎ7̹����׵���|���n-�r'>`"�$FF #��U3CFCf�։;������Y������ŵ��އ��8 h��(%���e��H�>\O�;���*�a��N�������vg�U]֌��r���ޘ##_M�B���9�ݎ�J�;YM��[��p� K�J *'��ֶ�y�64Z�ŉD�R$+jG���TR�U�mz��o��)�-��x����v��˹�s�д�H����f�SexP>~Z@����P8�%V���o��u���<�JV�i�Y4��m���a>}�cȹ<uI�%��ںE�v�3��p)��&]/)(`ڂ�\��x���yʁ��`U6���`Wp�@��m���'a����}�>�B�H|'�v��wc��1O�����@����L�SU�2������uOɆ
՟�PU��~�N\M? �k�����i�`�TW��Pd�pz(�용�槹B?J��޶��8�s�\���G�o��o�f,�����
���ՕQ��m�i��տf��.$���̷M���M��#��L�0�*H�^�s�<������f�"�exN�)�D�\���#m�W<�!�Դ���(w;1}���9r%ipD0F�����s�-�x���������k��&T�\��ؤpZ�d��j_�签T��d�%!$��N���g��pY"$��K���J���ĭ2,3��5���%�b��}o�=�Le H#p�~����>���P��mz A���sIA���&�~��&!I3���c�H5�wQ�H��E̐�����=�~��WQI���/���8[� �RE�z
��/��U&����)D8-��������߽��uET��n#m&ڝ���b/	B+�(����7�B�h$B����$V�/�}Y��uvގd4����5-��,nQ*W�L���Ľ�Ɠ����������\�j���[,���1a %u�Ý�H �#��22�2y��o
$7�]}R3+�5���1�k�8\�m3^��^���=Ʀ�wUf��� �F~HtQw��>��CN��A-��GJ!g�,�ɎrN����	}�YH�B+E�F@ڊ9l�ZU����3̥>~�/+~�h�KFr��Q�ď�,Xyy2n:&u7���o�����u"��M-�j����/�$)`�k ��3�ȢMC��)l��j����V��l�F�����N���ב�l�Q���O��y��Q�����=
��t���uQ'�_ �����:�k=�%b `$�_�#K�Y�-^f����ʾa;}�jq�s��$0uXF �	�Q�=�
m��lU����TEh�0����F�q�~�2����OF����NX�+��xG�����Ww?��"Yځ�҈��]���#	��=�g�)s\	쇵-%E�&e8lY��Q�5x�z���}���ZUbe  >��(~9��T��|}�ϩꅻ+t������I[*@R`��'	;����׵̮5�-D"�U|_2B�������8x0��LN�E��P�"�`�w�u�b%�S �����뒆nE�9��F�M(�`J S�̅b����PL��s-/�����uc<�gu�S���KE�A�tإ��Ӂn�dKK�D:� �&���u%]d�.'YT�U8�iUVZ:�qpA̗v]kтm:��ԩ�޻�ڸ�(DV�Ƒ>�������is��{Y�u�YJ�=U�A�J�Y���N��.���b�KB��5D��	HŮ:tN���\﫾��t��:<:�qOl���~�ģ���"i�p�֒־/�J_�x���4j��:���}�?�JS��P�B�l�c��u�1Rn�+P{���u�< �Y.[�S��H(h\,��kFE���Z+Z
͓�ڎ��˙�$���h?Д���pxBDY׊����	���.�>������R�4j�~ԬG֛sC� �d@�ox��Kk�_	3e<"xU����*�F�����Yy�[��R��
|�Q*�Kyۖ*O��l^P�������ߚ�B. ��M��~QΛ2�8����Fr�6���6$'^K��sJ[w7u%��RR�Pz�j�dN�����5K�w�`�,U�450��Eb�DQ�K�uOpsy&�F4%dX����b��G+���SG	�2���U���۔+�\'9Mu)�ᰎ_[m�2���}ч$�s5i͊��bq�U�CUm]҆�4e	ɱ�v~o�u��%���`#��߷���YF�<��2���di}��	�J:O� W�;#�s�"��ږ>�j(��>�����+��#�����+�`�ʊ;��i������t�[��rAf 4��:�o=C��EL�j�Y_��] ,��T�ݐ��XhB����RJ��qUv�N��@ULT�尖�y-ɢ��4~$��ֻI�m��(�ݥ <�z�:���Z�o�j�!�:~��Us=e�o����:�1q� x�x0.E��B�>Fy'�ȁE�˶��h]OE
�Ju�Iݭ痼dMlҚw� �)��/��+8j��>\�����NEȍ����5-b�A��G���vi�g+��|�t��<�-�wZ�����OȠ��RS0�cv�L���՝<��o��(4����^7�7�Vښq��-dn��
X"� 4� 4  � ;)	:�գ�b�j��䢗��StL��%�+*t�+�au���� ��М���N��`��ۭ�?W��J���� ��5�s�u����w4\ht�� k�e'�1X��1:7e�ڗ�êZ�7i�-��6O��r�(��q��Y04�l�����)��e)!��m��S����Air� y��{ ��j�[q��O�ɶ�9�eF��_J�<3�]0�(a1�\8�L��^��g���ظOm �VΖ��I�7H�����s\�z��՝��«?K�,��cӉr@�4�cM�w�X���hAM�>�8n�U҂�X���iifDY�Fٗ9d���/�y��':��;:P/�ҙ�"Հ?�p�}�����<��9+�Y��A�~sB��
�c'��iT"�SJ����S��b��7E\�N����8W�}�2ʰ=���PT!Q�w���c�T��MPofj���:XHsߤiO��5�ӒM�Y��z�����ݶ��"�HӞ��g�#%`;p��nK������Q;�C�.eHD �����'_9gn�;�5~�p�o�q{��F<��c���w���m5��y@�k0��a�N�M����2�BrlpT{���z��C�gO�������u����8Υ�m��v2�|0g�b����L�f�EΩV1�.���2PGI������h���Fx4BXs����T�`��C�2�Ҝ�3�^�T������p�jB�Z���ˁ_����\]��rjd�<5r��:�UK}Z=���ӎ5�Hk����i�^f&1E�� �Y���ZX/E��h$���~�Ng-G��R���lcw�v3Q2#D�!Er�CO�Y��Q&������&�o��۰�e���d��?	N]-��s� �|�*Ϲ�����p[�Z�E����2�QF��|9���rc�O>[r�gE�_�Y�`������:  C��e7p��T��$���χ\V�Rj29�[�Y���O'd����t�Α�zG�~_��q�]X|��7��:$�&N֦vH����V���p��e�09FWJ!I��ˀ;^�O�'�	i���.�
�ba�X�mQT������x�s��1=�^�ք�����Vvy�
�e>WCD�80w�+��q`�j��0D����m���$]��sR��,(���ڒ�r��7#.�R`!~;u��w��H��Z���Y]�l*,տ����8�<��+����u����G�
���ɸ�z���v�TS��u�d���<tzѨ������&�.O]a�pE�������Z����7�)�)3��<�Z
X'I�����)q�¥���@$:����*53��Tפg��Z(���1������I��j�;h5��U��H�:Yu<�5=ai�\���K�$�Ց�u��T��S�.�j�X{4����l��33y�k�=s��q<xH���3Y�cou�s5r�j�ż!�Z�~�6��Z���,�V�ҷ�Oa�v�JIJ�A�e�~�����.׺(FD�����O�_t緯x� /�>*�_�"�̧"c��ʓ�>�{�G:R�Ց��Z '"��-��m��?��/      '   �   x�-P��0{�bv,����:V8yxЀ����q-���0�z�4�#B%�J4�d^YBÝ�G���(�!�T]l�Ңۛ��j�0��N��V4�Aŝ|3��5S�V��L4��֖KY�p�˘p���p�yqX#�<���:\^�ޠ���_pE�w�����1      %   �   x�=P�q0{K�d,ls����xw����-��iȂ���8���^=-��:���F����bB>�2��ܙja��T��&�Y��3����rjmS��YF�ցF"��0�Q8�dm�_�	�GЇ�I�(M�h]7a~h�[۞����{ĺ����9�j�����C�F�2�      )   �   x�-P��0{�bv@>����:V8yY�A������Z��96.70m�P%�q�&�m���i�̂����V�@�]�!oV6&�6;j/�0�h������e�ƔRy^oǐ���#�2?eަ�G���:�����u���1u!��޵�;:-=�Zy�KV��H7%)�6ӟ=? ��5     