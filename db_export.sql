PGDMP         *            
    x            corona    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    corona    DATABASE     f   CREATE DATABASE corona WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Ukrainian_Ukraine.1252';
    DROP DATABASE corona;
                postgres    false            �            1259    16472 
   data_table    TABLE     S  CREATE TABLE public.data_table (
    id integer NOT NULL,
    country character varying(255),
    total_cases character varying(255),
    new_cases character varying(255),
    total_deaths character varying(255),
    new_deaths character varying(255),
    total_recovered character varying(255),
    active_cases character varying(255),
    serious_critical character varying(255),
    tot_cases_1m_pop character varying(255),
    tot_deaths_1m_pop character varying(255),
    total_tests character varying(255),
    tests_1m_pop character varying(255),
    population character varying(255)
);
    DROP TABLE public.data_table;
       public         heap    postgres    false            �            1259    16470    data_table_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_table_id_seq;
       public          postgres    false    201            �           0    0    data_table_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_table_id_seq OWNED BY public.data_table.id;
          public          postgres    false    200            �            1259    16506    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    last_name character varying(255),
    phone integer,
    countries character varying(255)[]
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16504    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            *           2604    16475    data_table id    DEFAULT     n   ALTER TABLE ONLY public.data_table ALTER COLUMN id SET DEFAULT nextval('public.data_table_id_seq'::regclass);
 <   ALTER TABLE public.data_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            +           2604    16509    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    16472 
   data_table 
   TABLE DATA           �   COPY public.data_table (id, country, total_cases, new_cases, total_deaths, new_deaths, total_recovered, active_cases, serious_critical, tot_cases_1m_pop, tot_deaths_1m_pop, total_tests, tests_1m_pop, population) FROM stdin;
    public          postgres    false    201   Y       �          0    16506    users 
   TABLE DATA           F   COPY public.users (id, name, last_name, phone, countries) FROM stdin;
    public          postgres    false    203   .6       �           0    0    data_table_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.data_table_id_seq', 32946, true);
          public          postgres    false    200            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    202            -           2606    16480    data_table data_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_table
    ADD CONSTRAINT data_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_table DROP CONSTRAINT data_table_pkey;
       public            postgres    false    201            /           2606    16514    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            �      x�]��v7�m��_����M 	$�Q�m�mK��lϺ��KR�&�EV��UVS?4�~��؜}PR���eK&��@ �ĉ�9Mi
��{b�s޶��M���ƐJ��2�MN1L�4��rؔm�%���rݎ��Ԇ'���۹�PRۦ����v*y;��OYk������C��!��2j�q;N)�a��AO+SS��\#�˹��m%i�_MY�]�y;CH�v�Y���ƶ�ɏ����x�'�)�\��XChS�g�fVizpe'u��S�Z�ʬ�o���w���j=>.���Z�"s�Lڜ�-����B�f�a�(��ϼ-:D���9UF�Zu�j9�m�����&m��11�x\��isy��R�M�0^�f��P�Ξ
����y��(�k۪�T�$#V=���C��?!����e�. դ��U����F_��m�IfmM����y�C藺��C�'����d�<��W���Χ��=��/a*���7V��4$]����bx�8���Cqd��,y��#7���){�1������~ѶC���2�Y.���!�2s��6�W2�,9-$��֯�ڂ\>��V��M��(���p�;?�R|�;)g�F�!�Y�2�z�p�%� �������5ȣ��kl���B��9����݃�!�C��<b����2'�@��$O�[:�Ԓ1O�Ф#a"�|dq��r���w����o��M�h��u�:h�#��y�@�=��4g9oJ2�P��9��[��s��-���=�קݢ#�]〙���P'B����/3)�!�8�~Z|�5nG�ۖgpeU��i��s�������H	���fm(7/��Q��1v��
���?6;Ťh����v�f=ݯG�I����I��麸������T�|�ȺYHA�s�E	�����!z�^.����v}�׾�v�6o�{
�X]�����S�:�����Se�%��,ظ��Wp�&c
����g9��r�QvͲI�>� ��"jC^�KD�&�.UV�n���w?*�d����u��f�]N��%tsr E�bHO��9E2����7�~��Vq��A��e�9iD�#؟�^La��|#@�o�.G=?�(t�\'�U`I��y�J[����a�t~檵*�⩓�s���\��!�q�@M���Lڊ$�9�n�H�-Uû�|��zq\nt��)clRـ"`P����I��-271���pP�L��4营:h�?>�������
R�GIY�57w���W���ף��ߪ"V���f��Lk]/��vq�18O�� rQ�\V	IYM�8O�֞#!(\���VF/9�ׇ���y�Z�51����i
ҫ�,��r��2+I��_��9��[v����;}�1�}D�2���>2� ,6E�2�r^$W���r�LU@zr��$i�¥�
��|�<(�Lde�ֽ9aY�T6��F��g�Q=�Ta���ypL���!�Q@���t:�CD��Y�ܐ���DN�r�X�����rǪD�Hr�ʑCL��:��!N�>u�U2x�~�r��:w��9��"Cv�9��.��t�g7�P��(�K����3�����W�
]�=!}E��A�ܚac3��|�4�=�S��,�����p�7�U b���R�f�P@�����������9m2��-��p�U�GҼa�`)���)�i`o�W����!u��,��! �W36=:)l��0������l����cgt�0��|[`�|�*��3<h K1��"M���a�~�~{�}� ���.d\�?!��|�>M��)jDX��C{Zv�=�7�*�}V�ߜZ�D���,��i������6�^�vV��`9A������q��t����!��X��C����(��@.o�|��� &}��4�nj��O�O���t�>�fA��h���T{K\�~�z��?Y�PRhFO��,�E~&��F(�B2��DV���ٵÔL$LzI/�G���L�w{����/������ g��Yޡ��N�$�.3�L�P��(��ʐ��vz��M�y}P����)�2k	�uu@���e(�t� ~��ٳ�F�bF�C�V������y�p�H�d��>;��M�C+\�5�$��>T��vH��]�Y^Wr��{���:���@��n���%���l\�@��� ��J��S����[�����oU���,�k6�0e��0v}	jU�^���Z��j������d��O
R��e�� �rF�S$vS?�L)��O��71��6���P?�~����/��"F�&�x�)�w��{u^N��� ��qZwC@�
6�l���ؽ~P�pC1=m�c�Oh��{e�� ��8�����@��xj&h=H�Py)6]JgE]����2�ww�O���Sq(���\H+�_����6�[G�5���,�þ/��\��i�{|O���NXzJ4ŭ"J06S(��s_N)k=���×l�
������6I q0!S�)���d�!X���^�+�}w��>�� #b5j8�q�9�c��f�Ir�ڎ2��3��XD����|\�l�L�I#��ķq�IP����d� �m�-���$C?�}ݯ����0w�((iq!J8�<�̘����b��b�3���^���N:#O`6s�Fy��p�D��!��4>��ڷ;�x��@G'U!���r��L��/p����^�)::��L�*�>�+Q�f8�H����p{�c��s-�{���ihf��6B�O�<��J
(��@���bx���>�\v�/Ok��!i �3�D6� ;�a���䓖M�ti�Z��'��YvC�ѷ* �?f' �s�� �6�����[��I���B�Ś�^>��G	�ْ�vL� �%��R֞�b"�7�(�����N�긮�WVK�9	m�U�3����gk'*�t�$�3]�S�e��<���~�N �1Ϧ��a�\�]8���L�ߤb�B����D�S���J�;F8/O�IW*�~X��׻���b���$�$�R���~�O&�**2���,'��Ə�Q,�AS�yw�u�����J(P~
.<ͽ���1�%�S����0u���b���������Z2�V��ݵ�:F�t�+ѕp�/�N��Yo����=�D�2�����澦�ZX�V,VQz�и~���h�d��{U{������:��a��~p�;wet���ң3ϾNB����_<ܭ$���;�Ke�,��. �[��BU*�_�
a�o�o�K��j��(��UK)ACJ�ؗ� �xEt Su)�B�l?��~<��:��'�;�#I��u$�k�����S�'�#d��7^n��֧Z���n:ՠ���6�����g���M��p�d$�<�t��=�?���K��-�T�u�lH�\:t}W����az��?d���]��,�f6�I��MS+�Q	�6��2�u�_����-
2���Sx��w�':�]�R��g���T�%TD��J:L.��N3H���JR6�9�Ig��$�u����h�߹�g�`׀6��5�ڻ�ʾ���� ��	�Q࿆�PGUA,��/e�6]J>�E=-b��!Jf�F*#A�ʼ<;K�G0�;.���E�@>�
����1�9O�W�����;��K1!�D�,�#r|
FBB��#�/TfH"��WM�սjG��D��b��*��#�.C �>�Ә��L^&���B=8G�fb2��"6|4�H���ycr)8L.�	���p�������sWS'��b�lp�Z���pfyj�S��Q�X&l<T�}��yW?�QdyH��O�m�o+w�L��n��2�	[��Kf���+W�I�������O�O���;)
 +Wq�L�|!<�.�:J��������� "���&�7Ҽ�.�M��+)����I^�(�6���\�ѡ��ԙ�Ut��}�G2^�}f�N��'Qһな18P��)���.Zk��
�`��� �Ԍ������Xo��kѳ	Ɋ��kd�$r��/`Au<��XQ�ji�9r����,$x;���30ǡ�    ���hs�4�E@�U1�E�����xPC!	@�
�TI2�0�W^��z

�h�X�%�ua?�q8>_]����nJ
(���$"K��jۻ� .���,eˋ8|��w�tpm3*��b��.#*)躝�4��Z|�-�A*�������wW?/�,��&�Ұ"�J�D_*;�g~E��w0�.�eytuF���P�U�d�9�L�9�÷<��-uJ��$<�]�(<�NN�.c�5+}h�?Y|��)c�p��@�����޻�XіlnE�wr�y�Ubr��Ւ�k��
J����6=�L.�iw�GTX�r%���[$�a����wgk��5��D������%DG��M������������(,@4
}m[[�FL'B�U��0ՙ������8��3j� ӊcr�i��l�U�hh�d�ӧ�,�;_q6Ew�ɧ����*Z�$!$�a��vI�M���������ۊ�DwXsԡ��H��B19�2�jv%A��O ��^�E���ZΖ&�@�A��C�� ��=��X��d���+
��6t!M���Cԣ�Г@���T�*�uN���x����P�S6d�
��u2�ޝO��+�y��#��^�x�����3�0���r%�N�<��q�͒k����mwa�QQ)�V{��Z����}2��zdW�B$���]R0BvKBLd�T��C�b���X��B�-�v���s�XG���A�ڕBp֋�7�������z]F���_�;y���W�����p�l5��l/��OnvJ"c�:�1Z��}p(����ܚU/(�{�1���N�0;��L����09��f׳�
fw���J��Ӻ��U�	�h�p2�bD+�7˥�՝�\��&J�����pv�j�Q��[8̆Ǣ%"w��X�>�wl��^n
�=�,7�V�C�sϐ��;�TB��"���J�7��V"�
��B+��$Z���]b?2�E�*���=G�����ft����p��jM�P��e���w�\�=m�D�>�8_�o������Y�
� �M����5AY�&��)v�*�������?�O�"��K�C�sAx�(K餀�E0wо��7)��PsE�����W�7]7x@��eϕps�;xm�� c7��UP��?9�B-GL�o��t�gN��/������<q2*�-2�u"= h�>ҥ�w�hm�t�1u����\����ގ��ְ9XeCZ�N�w���rk=����rw�
)��9\���I����hO�m��$�*�7)>-��w��g���)�R��6A�K3C�,��3��e���J�#���������S3�����z���� ��|t�U~b/�f�ȎyO�##ǝ�J�hT�3bj#n�6��P���A���@@��}+�{��Z��m'2-TBC,�D���ߪ
t�l��q�n��J�������AT��is5i0<�m���bA���'S-*��&f˦3	r�d~|�(�-�j�9G����JegnVIA;�"̟ �@o�iЋ�EE��T���[A��Pߋ���-�����,Ӏ�c�%OU���ލPÏ�BT��ܘ�`B�����j�D�����A%Xz8$v�s|���r:(J�.t�XZx^�0�0 #�T�'�,��*��v��>N'N��\�^�ѭz�N ����Ի���K,�u�>{le���p�PfAw���jf�Q���5����:?�IG[�r���D�L3:2VQ{������e�V���_���-��G#��hap�A�����q�^/G�v܇�n7��f =��Ѹ7� n�և����R^Ad�bg}��L�
F�tWr]�GF$O{z��+�����U�͝������Ia+�'�K%�v<[i��	<��(pۤ�D(�aN�^�X>A���oֺs�ә9�Cy}�܁�Ⱦ��h'����~�_vvsFE���\@�( WߨΚ��ۙF�l쒦�b�z釲�(�4u3U�a��+�lb7{��Y��E����i/��_H�.P�T������0�R.�ӗ�~�]���$n"��?��;���w��~=���~�I,���*�u�jp+��̍�ԥ�M�����A�s���t�y��G�I�l�@Y���3:������r���B�<�f��>�
ɐ͹P��a�Y[/$ܭ�\W?���
W�	���n���a�O�)�����������t}�R���Q=WZPi|��S�?�O��='&_��~b2���¸C\�Z�u�a ��~��˺teCW�-N��0n���n:�9��&�M��/(+W��_n�O�b���q�A%�si��,"v\�����m�6�[0�`�w�#dl(���-��﫬�ywc�;zN<8�ʁڀ]�C�VԬ��NhC.�+��n��u��w]߀���3�"��L^nD H�req0���ݽ���5K�"�_��:�ܢf��'���[Oʙj���a�����e�ЋV$���v}Z�O�U���{��	FƠ��ֈ��?���#�	�z��m����ՏO}�������C�������Aw��#cc�c�� ����n�����TR̎���M_С&�@ȓ��_).W6�88�Δt4�{Gtp:>��bN�ꏻ�h��%���#Uґ�� e|g�yz��+�0�`�x,4�'��:��o�~�y�UdT$�D�ӟK �Q~� <�F�?a뷻����*�։}B!Ts����Y�����X��3�0�1��K�Q��q���v�a� !������5Y�(4���L x��i��.�O4â�Ǧ�N�6�����#N4��l�Ӧ�x^���	c��� }A�p��c`��}%�+�������([[����� �{��B����_ދH{Z�&�d4�[$Hca�&�
�k��
[����kX8�o� /n�o���>���3�j����S����i���YB�� �����`� 2#�?�J.�X��E$la2��8���/��~Sp��Y4������ �=wHQ���?C��8ߝ����V��pi����pL{D7����u���ٳ�fn����E��(t�i>��sЎ׫�_��̑S4���-1���\��̓�e,s�3�E{�n�8L���`��unI%�^�G'�,��^��_�&����=s/��1OSP�R�����T^���?�,��'O�����
d�d�:z<!Z�df�� �i�\���Z�Œ Lal�5�8�Y�>��c��b�v�������8L�đ�E���&�>h���g#�?��_PZ>���|�+6S��B����Y��V���Ye�}�Y�|Շ^A�ډ�k��js4CE� ���K�к�a�\.6!$�sE��%�J,����k7�rX1��
`�؉�_�b~�7\.̂�w�o������wA��2)��DC�-���F�w`Z�u\�˭��p���L�2P4�>o�<{7L��E�V�=�k����8u0v'���ߓ��N)<@�7R��ʚ�v!,�~�k�+�{�V'p����^Li�~�{�p�_v�x�c�D�a$�*�U �ԟ0��wۙ�P|$�O���O4�G
i���4�z^/������N�NB���K��ӿ�ba�D�o��*���{�9#�a
9tt����bB�/'O_�NϽ�b�<������ϋc;\��M�Ѫ��Gx
E�ENv�����ԉ�����7���^4:6C�e���mZ)�u���k��=e��h4�t��^��,��~y������|���w�<0�i��Կ>]6���e�zM!���h_#�	�4ES(��LbWQ|wxPZ���痋���v�(ʒ/��s��'���7�>�Z�gB�f��.��E��r���ջ�~9.�Wh9�9q>�!��O�j�����,�c������������L��;#� �+RL��ߝw��I�+�f"ң˳g�.q'8�O-������t�/}]��}H�;�//�jR �3\��/��es껩���y9��~�oj�#?�#/?�0��"�$����E�G��痁��}��L0 �  ����,����/�+sS���Q^��SI�p�P����EI��Ly��W�f��c]����p��z����ь*�(�[^47p1�@L�d��c�g�ܹ�� �N��ʏ���ٵU��0P�aN�U
����JZM����Ҍ̋LBh#ޱ���q��{&7�=��\�h�w&�H(�͢	M��A�n�!����u��GF�9?њ��e7�|�[��M4$l�Ќ}��A++�!��pE��Q��I��(}@&���hM�a�7L{+u��G�B��M�R�Ȋ�4�s�̶��{HU����h��G$d�s�.�跟����>���?_z�<��)�
3�M�M�f��K�=�(Y^�@л�p�����s��xpZ�0.""z�F����q��:ݻ��K�b�ϒgo�n��,K���c����S��p�g\��7�ӟ���,6      �   /   x�3�t��M�J�H,���476153���v�	������� �Z	�     