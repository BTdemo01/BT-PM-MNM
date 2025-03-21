PGDMP                      }            CHTL    17.4    17.4 -    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            ^           1262    16673    CHTL    DATABASE     l   CREATE DATABASE "CHTL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE "CHTL";
                     postgres    false            �            1259    16829    chitiethoadon    TABLE       CREATE TABLE public.chitiethoadon (
    mahoadon character varying(10) NOT NULL,
    macuahang character varying(10),
    makhachhang character varying(10),
    manhanvien character varying(10),
    ngaygiaodich timestamp without time zone,
    tongtien numeric(10,2)
);
 !   DROP TABLE public.chitiethoadon;
       public         heap r       postgres    false            �            1259    16849    chitiethoadon_detail    TABLE     �   CREATE TABLE public.chitiethoadon_detail (
    machitiethoadon integer NOT NULL,
    mahoadon character varying(10),
    masanpham character varying(10),
    soluong integer,
    giaban numeric(10,2),
    thanhtien numeric(10,2)
);
 (   DROP TABLE public.chitiethoadon_detail;
       public         heap r       postgres    false            �            1259    16799    chitietnhaphang    TABLE     �   CREATE TABLE public.chitietnhaphang (
    machitietnhap integer NOT NULL,
    manhahang character varying(10),
    masanpham character varying(10),
    soluong integer,
    gianhap numeric(10,2),
    thanhtien numeric(10,2)
);
 #   DROP TABLE public.chitietnhaphang;
       public         heap r       postgres    false            �            1259    16779    cuahang    TABLE     �   CREATE TABLE public.cuahang (
    macuahang character varying(10) NOT NULL,
    tencuahang character varying(50),
    diachi character varying(100),
    sodienthoai character varying(15),
    maquanly character varying(10)
);
    DROP TABLE public.cuahang;
       public         heap r       postgres    false            �            1259    16784 	   khachhang    TABLE        CREATE TABLE public.khachhang (
    makhachhang character varying(10) NOT NULL,
    hoten character varying(50),
    sodienthoai character varying(15),
    diachi character varying(100),
    ngaysinh timestamp without time zone,
    diemtichluy integer
);
    DROP TABLE public.khachhang;
       public         heap r       postgres    false            �            1259    16774    nhahang    TABLE     �   CREATE TABLE public.nhahang (
    manhahang character varying(10) NOT NULL,
    macuahang character varying(10),
    manhanvien character varying(10),
    ngaynhap timestamp without time zone,
    tongchiphi numeric(10,2)
);
    DROP TABLE public.nhahang;
       public         heap r       postgres    false            �            1259    16759    nhancungcap    TABLE     �   CREATE TABLE public.nhancungcap (
    manhancungcap character varying(10) NOT NULL,
    tennhancungcap character varying(50),
    sodienthoai character varying(15),
    diachi character varying(100)
);
    DROP TABLE public.nhancungcap;
       public         heap r       postgres    false            �            1259    16789    nhanvien    TABLE     �   CREATE TABLE public.nhanvien (
    manhanvien character varying(10) NOT NULL,
    hoten character varying(50),
    sodienthoai character varying(15),
    macuahang character varying(10),
    chucvu character varying(50),
    luong numeric(10,2)
);
    DROP TABLE public.nhanvien;
       public         heap r       postgres    false            �            1259    16764    sanpham    TABLE     �   CREATE TABLE public.sanpham (
    masanpham character varying(10) NOT NULL,
    tensanpham character varying(50),
    giaban numeric(10,2),
    donmuc character varying(20),
    manhancungcap character varying(10)
);
    DROP TABLE public.sanpham;
       public         heap r       postgres    false            �            1259    16814    tonkho    TABLE     �   CREATE TABLE public.tonkho (
    matonkho character varying(10) NOT NULL,
    macuahang character varying(10),
    masanpham character varying(10),
    soluong integer,
    ngaycapnhat timestamp without time zone
);
    DROP TABLE public.tonkho;
       public         heap r       postgres    false            W          0    16829    chitiethoadon 
   TABLE DATA           m   COPY public.chitiethoadon (mahoadon, macuahang, makhachhang, manhanvien, ngaygiaodich, tongtien) FROM stdin;
    public               postgres    false    225   <       X          0    16849    chitiethoadon_detail 
   TABLE DATA           p   COPY public.chitiethoadon_detail (machitiethoadon, mahoadon, masanpham, soluong, giaban, thanhtien) FROM stdin;
    public               postgres    false    226   �<       U          0    16799    chitietnhaphang 
   TABLE DATA           k   COPY public.chitietnhaphang (machitietnhap, manhahang, masanpham, soluong, gianhap, thanhtien) FROM stdin;
    public               postgres    false    223   u=       R          0    16779    cuahang 
   TABLE DATA           W   COPY public.cuahang (macuahang, tencuahang, diachi, sodienthoai, maquanly) FROM stdin;
    public               postgres    false    220   >       S          0    16784 	   khachhang 
   TABLE DATA           c   COPY public.khachhang (makhachhang, hoten, sodienthoai, diachi, ngaysinh, diemtichluy) FROM stdin;
    public               postgres    false    221   z?       Q          0    16774    nhahang 
   TABLE DATA           Y   COPY public.nhahang (manhahang, macuahang, manhanvien, ngaynhap, tongchiphi) FROM stdin;
    public               postgres    false    219   "A       O          0    16759    nhancungcap 
   TABLE DATA           Y   COPY public.nhancungcap (manhancungcap, tennhancungcap, sodienthoai, diachi) FROM stdin;
    public               postgres    false    217   �A       T          0    16789    nhanvien 
   TABLE DATA           \   COPY public.nhanvien (manhanvien, hoten, sodienthoai, macuahang, chucvu, luong) FROM stdin;
    public               postgres    false    222   C       P          0    16764    sanpham 
   TABLE DATA           W   COPY public.sanpham (masanpham, tensanpham, giaban, donmuc, manhancungcap) FROM stdin;
    public               postgres    false    218   �C       V          0    16814    tonkho 
   TABLE DATA           V   COPY public.tonkho (matonkho, macuahang, masanpham, soluong, ngaycapnhat) FROM stdin;
    public               postgres    false    224   �D       �           2606    16853 .   chitiethoadon_detail chitiethoadon_detail_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.chitiethoadon_detail
    ADD CONSTRAINT chitiethoadon_detail_pkey PRIMARY KEY (machitiethoadon);
 X   ALTER TABLE ONLY public.chitiethoadon_detail DROP CONSTRAINT chitiethoadon_detail_pkey;
       public                 postgres    false    226            �           2606    16833     chitiethoadon chitiethoadon_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.chitiethoadon
    ADD CONSTRAINT chitiethoadon_pkey PRIMARY KEY (mahoadon);
 J   ALTER TABLE ONLY public.chitiethoadon DROP CONSTRAINT chitiethoadon_pkey;
       public                 postgres    false    225            �           2606    16803 $   chitietnhaphang chitietnhaphang_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.chitietnhaphang
    ADD CONSTRAINT chitietnhaphang_pkey PRIMARY KEY (machitietnhap);
 N   ALTER TABLE ONLY public.chitietnhaphang DROP CONSTRAINT chitietnhaphang_pkey;
       public                 postgres    false    223            �           2606    16783    cuahang cuahang_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cuahang
    ADD CONSTRAINT cuahang_pkey PRIMARY KEY (macuahang);
 >   ALTER TABLE ONLY public.cuahang DROP CONSTRAINT cuahang_pkey;
       public                 postgres    false    220            �           2606    16788    khachhang khachhang_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.khachhang
    ADD CONSTRAINT khachhang_pkey PRIMARY KEY (makhachhang);
 B   ALTER TABLE ONLY public.khachhang DROP CONSTRAINT khachhang_pkey;
       public                 postgres    false    221            �           2606    16778    nhahang nhahang_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.nhahang
    ADD CONSTRAINT nhahang_pkey PRIMARY KEY (manhahang);
 >   ALTER TABLE ONLY public.nhahang DROP CONSTRAINT nhahang_pkey;
       public                 postgres    false    219            �           2606    16763    nhancungcap nhancungcap_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.nhancungcap
    ADD CONSTRAINT nhancungcap_pkey PRIMARY KEY (manhancungcap);
 F   ALTER TABLE ONLY public.nhancungcap DROP CONSTRAINT nhancungcap_pkey;
       public                 postgres    false    217            �           2606    16793    nhanvien nhanvien_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.nhanvien
    ADD CONSTRAINT nhanvien_pkey PRIMARY KEY (manhanvien);
 @   ALTER TABLE ONLY public.nhanvien DROP CONSTRAINT nhanvien_pkey;
       public                 postgres    false    222            �           2606    16768    sanpham sanpham_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.sanpham
    ADD CONSTRAINT sanpham_pkey PRIMARY KEY (masanpham);
 >   ALTER TABLE ONLY public.sanpham DROP CONSTRAINT sanpham_pkey;
       public                 postgres    false    218            �           2606    16818    tonkho tonkho_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_pkey PRIMARY KEY (matonkho);
 <   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_pkey;
       public                 postgres    false    224            �           2606    16854 7   chitiethoadon_detail chitiethoadon_detail_mahoadon_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiethoadon_detail
    ADD CONSTRAINT chitiethoadon_detail_mahoadon_fkey FOREIGN KEY (mahoadon) REFERENCES public.chitiethoadon(mahoadon);
 a   ALTER TABLE ONLY public.chitiethoadon_detail DROP CONSTRAINT chitiethoadon_detail_mahoadon_fkey;
       public               postgres    false    4784    226    225            �           2606    16859 8   chitiethoadon_detail chitiethoadon_detail_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiethoadon_detail
    ADD CONSTRAINT chitiethoadon_detail_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.sanpham(masanpham);
 b   ALTER TABLE ONLY public.chitiethoadon_detail DROP CONSTRAINT chitiethoadon_detail_masanpham_fkey;
       public               postgres    false    226    218    4770            �           2606    16834 *   chitiethoadon chitiethoadon_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiethoadon
    ADD CONSTRAINT chitiethoadon_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES public.cuahang(macuahang);
 T   ALTER TABLE ONLY public.chitiethoadon DROP CONSTRAINT chitiethoadon_macuahang_fkey;
       public               postgres    false    225    4774    220            �           2606    16839 ,   chitiethoadon chitiethoadon_makhachhang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiethoadon
    ADD CONSTRAINT chitiethoadon_makhachhang_fkey FOREIGN KEY (makhachhang) REFERENCES public.khachhang(makhachhang);
 V   ALTER TABLE ONLY public.chitiethoadon DROP CONSTRAINT chitiethoadon_makhachhang_fkey;
       public               postgres    false    4776    225    221            �           2606    16844 +   chitiethoadon chitiethoadon_manhanvien_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitiethoadon
    ADD CONSTRAINT chitiethoadon_manhanvien_fkey FOREIGN KEY (manhanvien) REFERENCES public.nhanvien(manhanvien);
 U   ALTER TABLE ONLY public.chitiethoadon DROP CONSTRAINT chitiethoadon_manhanvien_fkey;
       public               postgres    false    225    222    4778            �           2606    16804 .   chitietnhaphang chitietnhaphang_manhahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitietnhaphang
    ADD CONSTRAINT chitietnhaphang_manhahang_fkey FOREIGN KEY (manhahang) REFERENCES public.nhahang(manhahang);
 X   ALTER TABLE ONLY public.chitietnhaphang DROP CONSTRAINT chitietnhaphang_manhahang_fkey;
       public               postgres    false    223    4772    219            �           2606    16809 .   chitietnhaphang chitietnhaphang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chitietnhaphang
    ADD CONSTRAINT chitietnhaphang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.sanpham(masanpham);
 X   ALTER TABLE ONLY public.chitietnhaphang DROP CONSTRAINT chitietnhaphang_masanpham_fkey;
       public               postgres    false    218    223    4770            �           2606    16794     nhanvien nhanvien_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nhanvien
    ADD CONSTRAINT nhanvien_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES public.cuahang(macuahang);
 J   ALTER TABLE ONLY public.nhanvien DROP CONSTRAINT nhanvien_macuahang_fkey;
       public               postgres    false    4774    222    220            �           2606    16769 "   sanpham sanpham_manhancungcap_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sanpham
    ADD CONSTRAINT sanpham_manhancungcap_fkey FOREIGN KEY (manhancungcap) REFERENCES public.nhancungcap(manhancungcap);
 L   ALTER TABLE ONLY public.sanpham DROP CONSTRAINT sanpham_manhancungcap_fkey;
       public               postgres    false    218    217    4768            �           2606    16819    tonkho tonkho_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES public.cuahang(macuahang);
 F   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_macuahang_fkey;
       public               postgres    false    224    220    4774            �           2606    16824    tonkho tonkho_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tonkho
    ADD CONSTRAINT tonkho_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.sanpham(masanpham);
 F   ALTER TABLE ONLY public.tonkho DROP CONSTRAINT tonkho_masanpham_fkey;
       public               postgres    false    218    4770    224            W   �   x�U�;
1E�:^E60�>�l�M�������u�~�a$���x��y�=���X!эic�3=h�Mi�N���J�J�⩲]�B)�BiP2��V��P*�S��2(�2(*O�Bˡʡ<(��)�
X+`%0_LB��U�
V+�i�5���Z`u1�֘�{b;�{em1�׾{J��gK      X   �   x�e�;!�z8��ؘO�"e����9bF�R�XzC��%���̙�E�{�[R�Q8Lb$Fb�(+��"�����
]1̣q�� 
�FSi*MEV�9���4�`}w�N�����3h͈�]g��(f��u����J)�wL?�      U   �   x�M�A!���0PQ�AW�$�������	/�*�/��^�"�,"W,S��T&ȶ�*D�����Ay&U�JT�� �I⁌ȈC�� ���4�yQ,Ӻ�u�Nԗ�I�6N�4>���d�A4�Ԟ��ORYj�T3˱�P�+���B|      R   P  x�U��n�0���~��2��Z��!*���x@�p U��޾�/�S����ش=bjZ�=k�㹛4ˡs���~�[�|���eU��*X�
����b$��p��	|��F�L�<���4uC�W�X�Y���c�� u��(^ǻ��Y=���"p�*�K�`T�P��t�Ǽ��*����-a�[��H����TM��>mj��W��v�̑�%SM��:jƍ��R�Q�E"o���%HA���VSMW!fv&+� ҩ싳�3�!R0�hTAQ����l�޻�$͐��TyC���|7u�3m|�s��_E��c��wyE���G�$�÷~      S   �  x�U��n�@���� P���g{L|@2���:m��������o�o�X�H�����7�s�-���6���"�l���MKx7���W3��9�17}0�m!�=lQ���^d��#���뗰��VGxUl�̰-�Ϧ�&TY�T�J�*&��HO����p�֫p��
��J9G�9�#�+@��ii��b���^�j�Dk
��T������w����v�Fof����2}��C�MЮ���Zц�₄?A�X����-#Z��=�x*��i h��F����#D+����h{4�	n�9�a$�쐲E%�U��ˆ�?@�訬;%�.��"��`��KX��Ǿ���;@�j��6�Ú��xC�m��Q��w�27�{���ej��ed�f�v�5C��,,�>�3go_�,���ş      Q   �   x�U˻�0��ښ���Q�iR�L���|�@� ��������ߧ�O��K�?��.�p���90&(;�� :���� $�� 	�m� dY�&�;(��8(�<t��RTUP��.E�h.��.a�����肶D���C�.�%���B�+�]�      O   "  x�U��N�0���� �i�|ݲ���Ɠ�p�M6�o� C��i�����#��d�G��Ti���c���y�(�u؇%�7�2�bS��������� C�E�1駸�~+G��R�O���$d�bغ/�`����rVWR��>�h�}���w����s8l���,����J���0�3k��$��.�>fKA�� ���~ĸb�f�!�+�{��H���n�.�f�B�UYQ�΢����+U~WJ�z%u�J}��0��Q춠4��ݓ��$I~ ]5�"      T   �   x�u�=�0����0rQ��X�f���S���Pp����5
M�\~��b:fEfX��u�m�+VI�鼠m�]�ڕ�f91sd��=���S�E)$	����-�_	HC ��hh�@�`!�Ѻn���FS3[7���F	�A�S�L�@�H��AR��9�x��)���nF��� QE�-/�tNPiQUH)�vE���ͷ��?q��(z��{�      P   �   x�e�?�0����C���gHL�	�KC�:��o=0X�y{��B$�X��("�}@[Ua,��
�w��OĴ�iY�E���ӌD�=fOP{7P�;�0k�&Ƚj��[��-P��C��H��`�&��1����}t�Us���G�w�����H����%�k$�x�H�      V   �   x�]�;
�A��:�
7�K�y��6����\!|��B^wf��m���u&e�C�9	_x_y-��
�dJ�h�F5C�V��T��:�S˰� `#�=��;	�����$O� '��4���A�W\����W�ϥ�]xNU     