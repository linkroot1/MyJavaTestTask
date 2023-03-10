PGDMP         '                {            creditservice    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24643    creditservice    DATABASE     ?   CREATE DATABASE creditservice WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE creditservice;
                postgres    false            ?            1259    24653    approved_credit_decisions    TABLE     ?   CREATE TABLE public.approved_credit_decisions (
    id bigint NOT NULL,
    credit_maturity integer,
    approved_credit_amount bigint
);
 -   DROP TABLE public.approved_credit_decisions;
       public         heap    postgres    false            ?            1259    24652     approved_credit_decisions_id_seq    SEQUENCE     ?   ALTER TABLE public.approved_credit_decisions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.approved_credit_decisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            ?            1259    24645    clients    TABLE     ?  CREATE TABLE public.clients (
    id bigint NOT NULL,
    full_name character varying(100),
    passport_serial character varying(100),
    passport_number character varying(100),
    marital_status boolean,
    registration_address character varying(100),
    contact_number character varying(100),
    company_name character varying(100),
    post character varying(100),
    work_period integer
);
    DROP TABLE public.clients;
       public         heap    postgres    false            ?            1259    24644    clients_id_seq    SEQUENCE     ?   ALTER TABLE public.clients ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            ?            1259    24665    credit_applications    TABLE     ?   CREATE TABLE public.credit_applications (
    id bigint NOT NULL,
    desired_credit_amount bigint,
    credit_decision_id bigint,
    client_id bigint
);
 '   DROP TABLE public.credit_applications;
       public         heap    postgres    false            ?            1259    24664    credit_applications_id_seq    SEQUENCE     ?   ALTER TABLE public.credit_applications ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.credit_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            ?            1259    24659    credit_contracts    TABLE     ?   CREATE TABLE public.credit_contracts (
    id bigint NOT NULL,
    credit_application_id bigint,
    signing_status boolean,
    signing_date date
);
 $   DROP TABLE public.credit_contracts;
       public         heap    postgres    false            ?            1259    24658    credit_contracts_id_seq    SEQUENCE     ?   ALTER TABLE public.credit_contracts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.credit_contracts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219                      0    24653    approved_credit_decisions 
   TABLE DATA           `   COPY public.approved_credit_decisions (id, credit_maturity, approved_credit_amount) FROM stdin;
    public          postgres    false    217   /"                 0    24645    clients 
   TABLE DATA           ?   COPY public.clients (id, full_name, passport_serial, passport_number, marital_status, registration_address, contact_number, company_name, post, work_period) FROM stdin;
    public          postgres    false    215   t"                 0    24665    credit_applications 
   TABLE DATA           g   COPY public.credit_applications (id, desired_credit_amount, credit_decision_id, client_id) FROM stdin;
    public          postgres    false    221   $                 0    24659    credit_contracts 
   TABLE DATA           c   COPY public.credit_contracts (id, credit_application_id, signing_status, signing_date) FROM stdin;
    public          postgres    false    219   N$                  0    0     approved_credit_decisions_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.approved_credit_decisions_id_seq', 6, true);
          public          postgres    false    216                       0    0    clients_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clients_id_seq', 10, true);
          public          postgres    false    214                       0    0    credit_applications_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.credit_applications_id_seq', 9, true);
          public          postgres    false    220                       0    0    credit_contracts_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.credit_contracts_id_seq', 2, true);
          public          postgres    false    218            w           2606    24657 8   approved_credit_decisions approved_credit_decisions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.approved_credit_decisions
    ADD CONSTRAINT approved_credit_decisions_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.approved_credit_decisions DROP CONSTRAINT approved_credit_decisions_pkey;
       public            postgres    false    217            u           2606    24651    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    215            {           2606    24669 ,   credit_applications credit_applications_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.credit_applications
    ADD CONSTRAINT credit_applications_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.credit_applications DROP CONSTRAINT credit_applications_pkey;
       public            postgres    false    221            y           2606    24663 &   credit_contracts credit_contracts_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.credit_contracts
    ADD CONSTRAINT credit_contracts_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.credit_contracts DROP CONSTRAINT credit_contracts_pkey;
       public            postgres    false    219            }           2606    24670 2   credit_applications fk_clients_credit_applications    FK CONSTRAINT     ?   ALTER TABLE ONLY public.credit_applications
    ADD CONSTRAINT fk_clients_credit_applications FOREIGN KEY (client_id) REFERENCES public.clients(id);
 \   ALTER TABLE ONLY public.credit_applications DROP CONSTRAINT fk_clients_credit_applications;
       public          postgres    false    221    215    3189            |           2606    24680 8   credit_contracts fk_credit_applications_credit_contracts    FK CONSTRAINT     ?   ALTER TABLE ONLY public.credit_contracts
    ADD CONSTRAINT fk_credit_applications_credit_contracts FOREIGN KEY (credit_application_id) REFERENCES public.credit_applications(id) NOT VALID;
 b   ALTER TABLE ONLY public.credit_contracts DROP CONSTRAINT fk_credit_applications_credit_contracts;
       public          postgres    false    219    3195    221            ~           2606    24675 :   credit_applications fk_credit_decision_credit_applications    FK CONSTRAINT     ?   ALTER TABLE ONLY public.credit_applications
    ADD CONSTRAINT fk_credit_decision_credit_applications FOREIGN KEY (credit_decision_id) REFERENCES public.approved_credit_decisions(id);
 d   ALTER TABLE ONLY public.credit_applications DROP CONSTRAINT fk_credit_decision_credit_applications;
       public          postgres    false    217    3191    221               5   x?3?4?4?4500?2?44??0?????	???!?i
T e?qZ?CX1z\\\ }?
?           x??T?J?0?>}?<?(M?&?x?x'N??{?m*"?W????n?nk?W8y#O?Ūf?Ki???????>c?S,????\?~`?P? ??&?8?z????#\?T?0????1???w\??+?f????*?^?<?X?0?'=8H????W,h????L΀;??vV? ?%???> 3?І??(i?
$[ɮ9???"2(???2??N(O???/?#=6???????C?`jӬ?}???P?K ??E?X?_$?I`?1*???w?"9$??%l???#??)#?.M?=ᎂ/??_???Bt΂oe??G?"?O'????w~????[??|?([?-??????ӃE???J}^??߇??z??s?:???_??         ;   x?=?? !E???????V`?u???9?+?L? ??IvSEu???z??????ܸ?-??            x?3???,?4202?50?50?????? +??     