PGDMP         -                {            app03    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    34055    app03    DATABASE     x   CREATE DATABASE app03 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE app03;
             
   osbustaman    false            �            1259    34082 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 
   osbustaman    false            �            1259    34081    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       
   osbustaman    false    221                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       
   osbustaman    false    220            �            1259    34091    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 
   osbustaman    false            �            1259    34090    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       
   osbustaman    false    223                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       
   osbustaman    false    222            �            1259    34075    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 
   osbustaman    false            �            1259    34074    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       
   osbustaman    false    219                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       
   osbustaman    false    218            �            1259    34098 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 
   osbustaman    false            �            1259    34107    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 
   osbustaman    false            �            1259    34106    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       
   osbustaman    false    227                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       
   osbustaman    false    226            �            1259    34097    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       
   osbustaman    false    225                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       
   osbustaman    false    224            �            1259    34114    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 
   osbustaman    false            �            1259    34113 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       
   osbustaman    false    229                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       
   osbustaman    false    228            �            1259    34173    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 
   osbustaman    false            �            1259    34172    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       
   osbustaman    false    231                        0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       
   osbustaman    false    230            �            1259    34066    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 
   osbustaman    false            �            1259    34065    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       
   osbustaman    false    217            !           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       
   osbustaman    false    216            �            1259    34057    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   osbustaman    false            �            1259    34056    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   osbustaman    false    215            "           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   osbustaman    false    214            �            1259    34202    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 
   osbustaman    false            �            1259    34284    web_block_home    TABLE     �  CREATE TABLE public.web_block_home (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    bh_id integer NOT NULL,
    bh_name character varying(100) NOT NULL,
    bh_order integer NOT NULL,
    bh_html text,
    bh_active integer NOT NULL,
    bh_image character varying(100),
    bh_defaultpage integer,
    bh_title character varying(100) NOT NULL
);
 "   DROP TABLE public.web_block_home;
       public         heap 
   osbustaman    false            �            1259    34283    web_block_home_bh_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_bh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_block_home_bh_id_seq;
       public       
   osbustaman    false    246            #           0    0    web_block_home_bh_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_block_home_bh_id_seq OWNED BY public.web_block_home.bh_id;
          public       
   osbustaman    false    245            �            1259    34304    web_block_home_plugins    TABLE     �   CREATE TABLE public.web_block_home_plugins (
    id bigint NOT NULL,
    blockhome_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 *   DROP TABLE public.web_block_home_plugins;
       public         heap 
   osbustaman    false            �            1259    34303    web_block_home_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_block_home_plugins_id_seq;
       public       
   osbustaman    false    250            $           0    0    web_block_home_plugins_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.web_block_home_plugins_id_seq OWNED BY public.web_block_home_plugins.id;
          public       
   osbustaman    false    249            �            1259    34212    web_carrousel    TABLE     �  CREATE TABLE public.web_carrousel (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    carr_id integer NOT NULL,
    carr_title character varying(50) NOT NULL,
    carr_downloadtext text NOT NULL,
    carr_isbutton integer NOT NULL,
    carr_nameimage character varying(50) NOT NULL,
    carr_image character varying(100) NOT NULL,
    carr_isactive integer NOT NULL,
    carr_buttontext character varying(10),
    carr_linkbutton text
);
 !   DROP TABLE public.web_carrousel;
       public         heap 
   osbustaman    false            �            1259    34211    web_carrousel_carr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_carrousel_carr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_carrousel_carr_id_seq;
       public       
   osbustaman    false    234            %           0    0    web_carrousel_carr_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_carrousel_carr_id_seq OWNED BY public.web_carrousel.carr_id;
          public       
   osbustaman    false    233            �            1259    34221    web_company    TABLE     �  CREATE TABLE public.web_company (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    com_id integer NOT NULL,
    com_namecompany character varying(100) NOT NULL,
    com_nameimagecompany character varying(100) NOT NULL,
    com_imagecompany character varying(100) NOT NULL,
    com_nameimagecompanyicon character varying(100) NOT NULL,
    com_imagecompanyicon character varying(100) NOT NULL,
    com_title character varying(150) NOT NULL,
    com_address character varying(255) NOT NULL,
    com_phone character varying(150) NOT NULL,
    com_mail character varying(150) NOT NULL,
    com_sitename character varying(100) NOT NULL,
    com_textfooter text NOT NULL
);
    DROP TABLE public.web_company;
       public         heap 
   osbustaman    false            �            1259    34220    web_company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_company_com_id_seq;
       public       
   osbustaman    false    236            &           0    0    web_company_com_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_company_com_id_seq OWNED BY public.web_company.com_id;
          public       
   osbustaman    false    235            �            1259    34268 	   web_items    TABLE     �  CREATE TABLE public.web_items (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    it_id integer NOT NULL,
    it_name character varying(100) NOT NULL,
    it_link text NOT NULL,
    it_pagetype integer,
    it_order integer NOT NULL,
    it_active integer NOT NULL,
    it_menu_id integer NOT NULL,
    it_lincactive character varying(10) NOT NULL
);
    DROP TABLE public.web_items;
       public         heap 
   osbustaman    false            �            1259    34267    web_items_it_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_items_it_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_items_it_id_seq;
       public       
   osbustaman    false    244            '           0    0    web_items_it_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.web_items_it_id_seq OWNED BY public.web_items.it_id;
          public       
   osbustaman    false    243            �            1259    34252    web_menu    TABLE       CREATE TABLE public.web_menu (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    me_id integer NOT NULL,
    me_name character varying(100) NOT NULL,
    me_hasasearchengine integer NOT NULL,
    me_isactive integer NOT NULL
);
    DROP TABLE public.web_menu;
       public         heap 
   osbustaman    false            �            1259    34251    web_menu_me_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_menu_me_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_menu_me_id_seq;
       public       
   osbustaman    false    240            (           0    0    web_menu_me_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_menu_me_id_seq OWNED BY public.web_menu.me_id;
          public       
   osbustaman    false    239            �            1259    34259    web_other_links    TABLE     *  CREATE TABLE public.web_other_links (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ol_id integer NOT NULL,
    ol_name character varying(100) NOT NULL,
    ol_link text NOT NULL,
    ol_order integer NOT NULL,
    ol_active integer NOT NULL
);
 #   DROP TABLE public.web_other_links;
       public         heap 
   osbustaman    false            �            1259    34258    web_other_links_ol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_other_links_ol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_other_links_ol_id_seq;
       public       
   osbustaman    false    242            )           0    0    web_other_links_ol_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_other_links_ol_id_seq OWNED BY public.web_other_links.ol_id;
          public       
   osbustaman    false    241            �            1259    42415 	   web_pages    TABLE     �  CREATE TABLE public.web_pages (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    pag_id integer NOT NULL,
    pag_title character varying(100) NOT NULL,
    pag_backgroundimage character varying(100),
    pag_active integer NOT NULL,
    pag_defaultpage integer,
    pag_html text,
    pag_subtitle character varying(100) NOT NULL
);
    DROP TABLE public.web_pages;
       public         heap 
   osbustaman    false            �            1259    42414    web_pages_pag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_pag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_pages_pag_id_seq;
       public       
   osbustaman    false    252            *           0    0    web_pages_pag_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_pages_pag_id_seq OWNED BY public.web_pages.pag_id;
          public       
   osbustaman    false    251            �            1259    42422    web_pages_plugins    TABLE     �   CREATE TABLE public.web_pages_plugins (
    id bigint NOT NULL,
    pages_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 %   DROP TABLE public.web_pages_plugins;
       public         heap 
   osbustaman    false            �            1259    42421    web_pages_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_pages_plugins_id_seq;
       public       
   osbustaman    false    254            +           0    0    web_pages_plugins_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_pages_plugins_id_seq OWNED BY public.web_pages_plugins.id;
          public       
   osbustaman    false    253            �            1259    34294    web_plugins    TABLE     �  CREATE TABLE public.web_plugins (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    plu_id integer NOT NULL,
    plu_elementname character varying(100) NOT NULL,
    plu_icon character varying(100),
    plu_title character varying(100),
    plu_text text,
    plu_isbox integer NOT NULL,
    plu_active integer NOT NULL,
    plu_image character varying(100),
    plu_link text,
    plu_linkactive integer NOT NULL,
    plu_page integer
);
    DROP TABLE public.web_plugins;
       public         heap 
   osbustaman    false            �            1259    34293    web_plugins_plu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_plugins_plu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_plugins_plu_id_seq;
       public       
   osbustaman    false    248            ,           0    0    web_plugins_plu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_plugins_plu_id_seq OWNED BY public.web_plugins.plu_id;
          public       
   osbustaman    false    247                       1259    42477    web_social_network    TABLE     �   CREATE TABLE public.web_social_network (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    sn_id integer NOT NULL,
    sn_name character varying(100) NOT NULL,
    sn_icon integer NOT NULL
);
 &   DROP TABLE public.web_social_network;
       public         heap 
   osbustaman    false            �            1259    34230    web_social_network_company    TABLE       CREATE TABLE public.web_social_network_company (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    snc_id integer NOT NULL,
    snc_name character varying(100) NOT NULL,
    snc_icon integer NOT NULL,
    snc_link text NOT NULL
);
 .   DROP TABLE public.web_social_network_company;
       public         heap 
   osbustaman    false            �            1259    34229    web_social_network_sn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_sn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.web_social_network_sn_id_seq;
       public       
   osbustaman    false    238            -           0    0    web_social_network_sn_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.web_social_network_sn_id_seq OWNED BY public.web_social_network_company.snc_id;
          public       
   osbustaman    false    237                       1259    42476    web_social_network_sn_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_sn_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_social_network_sn_id_seq1;
       public       
   osbustaman    false    258            .           0    0    web_social_network_sn_id_seq1    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.web_social_network_sn_id_seq1 OWNED BY public.web_social_network.sn_id;
          public       
   osbustaman    false    257                        1259    42464    web_team    TABLE     `  CREATE TABLE public.web_team (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    tm_id integer NOT NULL,
    tm_positioncompany character varying(100) NOT NULL,
    tm_issocialnetwork integer NOT NULL,
    tm_active integer NOT NULL,
    tm_user integer NOT NULL,
    tm_image character varying(100)
);
    DROP TABLE public.web_team;
       public         heap 
   osbustaman    false                       1259    42484    web_team_social_network    TABLE     7  CREATE TABLE public.web_team_social_network (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    tsn_id integer NOT NULL,
    tsn_link text NOT NULL,
    tsn_active integer NOT NULL,
    tsn_social_network_id integer NOT NULL,
    tsn_team_id integer NOT NULL
);
 +   DROP TABLE public.web_team_social_network;
       public         heap 
   osbustaman    false                       1259    42483 "   web_team_social_network_tsn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_social_network_tsn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.web_team_social_network_tsn_id_seq;
       public       
   osbustaman    false    260            /           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.web_team_social_network_tsn_id_seq OWNED BY public.web_team_social_network.tsn_id;
          public       
   osbustaman    false    259            �            1259    42463    web_team_tm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_tm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_team_tm_id_seq;
       public       
   osbustaman    false    256            0           0    0    web_team_tm_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_team_tm_id_seq OWNED BY public.web_team.tm_id;
          public       
   osbustaman    false    255            �           2604    34085    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    221    220    221            �           2604    34094    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    222    223    223            �           2604    34078    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    219    218    219            �           2604    34101    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    224    225    225            �           2604    34110    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    226    227    227            �           2604    34117    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    228    229    229            �           2604    34176    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    230    231    231            �           2604    34069    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    217    216    217            �           2604    34060    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    214    215    215            �           2604    34287    web_block_home bh_id    DEFAULT     |   ALTER TABLE ONLY public.web_block_home ALTER COLUMN bh_id SET DEFAULT nextval('public.web_block_home_bh_id_seq'::regclass);
 C   ALTER TABLE public.web_block_home ALTER COLUMN bh_id DROP DEFAULT;
       public       
   osbustaman    false    246    245    246            �           2604    34307    web_block_home_plugins id    DEFAULT     �   ALTER TABLE ONLY public.web_block_home_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_block_home_plugins_id_seq'::regclass);
 H   ALTER TABLE public.web_block_home_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    250    249    250            �           2604    34215    web_carrousel carr_id    DEFAULT     ~   ALTER TABLE ONLY public.web_carrousel ALTER COLUMN carr_id SET DEFAULT nextval('public.web_carrousel_carr_id_seq'::regclass);
 D   ALTER TABLE public.web_carrousel ALTER COLUMN carr_id DROP DEFAULT;
       public       
   osbustaman    false    234    233    234            �           2604    34224    web_company com_id    DEFAULT     x   ALTER TABLE ONLY public.web_company ALTER COLUMN com_id SET DEFAULT nextval('public.web_company_com_id_seq'::regclass);
 A   ALTER TABLE public.web_company ALTER COLUMN com_id DROP DEFAULT;
       public       
   osbustaman    false    235    236    236            �           2604    34271    web_items it_id    DEFAULT     r   ALTER TABLE ONLY public.web_items ALTER COLUMN it_id SET DEFAULT nextval('public.web_items_it_id_seq'::regclass);
 >   ALTER TABLE public.web_items ALTER COLUMN it_id DROP DEFAULT;
       public       
   osbustaman    false    244    243    244            �           2604    34255    web_menu me_id    DEFAULT     p   ALTER TABLE ONLY public.web_menu ALTER COLUMN me_id SET DEFAULT nextval('public.web_menu_me_id_seq'::regclass);
 =   ALTER TABLE public.web_menu ALTER COLUMN me_id DROP DEFAULT;
       public       
   osbustaman    false    239    240    240            �           2604    34262    web_other_links ol_id    DEFAULT     ~   ALTER TABLE ONLY public.web_other_links ALTER COLUMN ol_id SET DEFAULT nextval('public.web_other_links_ol_id_seq'::regclass);
 D   ALTER TABLE public.web_other_links ALTER COLUMN ol_id DROP DEFAULT;
       public       
   osbustaman    false    241    242    242            �           2604    42418    web_pages pag_id    DEFAULT     t   ALTER TABLE ONLY public.web_pages ALTER COLUMN pag_id SET DEFAULT nextval('public.web_pages_pag_id_seq'::regclass);
 ?   ALTER TABLE public.web_pages ALTER COLUMN pag_id DROP DEFAULT;
       public       
   osbustaman    false    252    251    252            �           2604    42425    web_pages_plugins id    DEFAULT     |   ALTER TABLE ONLY public.web_pages_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_pages_plugins_id_seq'::regclass);
 C   ALTER TABLE public.web_pages_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    254    253    254            �           2604    34297    web_plugins plu_id    DEFAULT     x   ALTER TABLE ONLY public.web_plugins ALTER COLUMN plu_id SET DEFAULT nextval('public.web_plugins_plu_id_seq'::regclass);
 A   ALTER TABLE public.web_plugins ALTER COLUMN plu_id DROP DEFAULT;
       public       
   osbustaman    false    248    247    248            �           2604    42480    web_social_network sn_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network ALTER COLUMN sn_id SET DEFAULT nextval('public.web_social_network_sn_id_seq1'::regclass);
 G   ALTER TABLE public.web_social_network ALTER COLUMN sn_id DROP DEFAULT;
       public       
   osbustaman    false    258    257    258            �           2604    34233 !   web_social_network_company snc_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network_company ALTER COLUMN snc_id SET DEFAULT nextval('public.web_social_network_sn_id_seq'::regclass);
 P   ALTER TABLE public.web_social_network_company ALTER COLUMN snc_id DROP DEFAULT;
       public       
   osbustaman    false    238    237    238            �           2604    42467    web_team tm_id    DEFAULT     p   ALTER TABLE ONLY public.web_team ALTER COLUMN tm_id SET DEFAULT nextval('public.web_team_tm_id_seq'::regclass);
 =   ALTER TABLE public.web_team ALTER COLUMN tm_id DROP DEFAULT;
       public       
   osbustaman    false    256    255    256            �           2604    42487    web_team_social_network tsn_id    DEFAULT     �   ALTER TABLE ONLY public.web_team_social_network ALTER COLUMN tsn_id SET DEFAULT nextval('public.web_team_social_network_tsn_id_seq'::regclass);
 M   ALTER TABLE public.web_team_social_network ALTER COLUMN tsn_id DROP DEFAULT;
       public       
   osbustaman    false    260    259    260            �          0    34082 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       
   osbustaman    false    221   �#      �          0    34091    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       
   osbustaman    false    223   �#      �          0    34075    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       
   osbustaman    false    219   �#      �          0    34098 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       
   osbustaman    false    225   �&      �          0    34107    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       
   osbustaman    false    227   [(      �          0    34114    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       
   osbustaman    false    229   x(      �          0    34173    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       
   osbustaman    false    231   �(      �          0    34066    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       
   osbustaman    false    217   {7      �          0    34057    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   osbustaman    false    215   <8      �          0    34202    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       
   osbustaman    false    232   u;                0    34284    web_block_home 
   TABLE DATA           �   COPY public.web_block_home (created, modified, bh_id, bh_name, bh_order, bh_html, bh_active, bh_image, bh_defaultpage, bh_title) FROM stdin;
    public       
   osbustaman    false    246   s=      	          0    34304    web_block_home_plugins 
   TABLE DATA           N   COPY public.web_block_home_plugins (id, blockhome_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    250   F      �          0    34212    web_carrousel 
   TABLE DATA           �   COPY public.web_carrousel (created, modified, carr_id, carr_title, carr_downloadtext, carr_isbutton, carr_nameimage, carr_image, carr_isactive, carr_buttontext, carr_linkbutton) FROM stdin;
    public       
   osbustaman    false    234   kF      �          0    34221    web_company 
   TABLE DATA           �   COPY public.web_company (created, modified, com_id, com_namecompany, com_nameimagecompany, com_imagecompany, com_nameimagecompanyicon, com_imagecompanyicon, com_title, com_address, com_phone, com_mail, com_sitename, com_textfooter) FROM stdin;
    public       
   osbustaman    false    236   VG                0    34268 	   web_items 
   TABLE DATA           �   COPY public.web_items (created, modified, it_id, it_name, it_link, it_pagetype, it_order, it_active, it_menu_id, it_lincactive) FROM stdin;
    public       
   osbustaman    false    244   �H      �          0    34252    web_menu 
   TABLE DATA           g   COPY public.web_menu (created, modified, me_id, me_name, me_hasasearchengine, me_isactive) FROM stdin;
    public       
   osbustaman    false    240   �I                0    34259    web_other_links 
   TABLE DATA           j   COPY public.web_other_links (created, modified, ol_id, ol_name, ol_link, ol_order, ol_active) FROM stdin;
    public       
   osbustaman    false    242   J                0    42415 	   web_pages 
   TABLE DATA           �   COPY public.web_pages (created, modified, pag_id, pag_title, pag_backgroundimage, pag_active, pag_defaultpage, pag_html, pag_subtitle) FROM stdin;
    public       
   osbustaman    false    252   �J                0    42422    web_pages_plugins 
   TABLE DATA           E   COPY public.web_pages_plugins (id, pages_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    254   �N                0    34294    web_plugins 
   TABLE DATA           �   COPY public.web_plugins (created, modified, plu_id, plu_elementname, plu_icon, plu_title, plu_text, plu_isbox, plu_active, plu_image, plu_link, plu_linkactive, plu_page) FROM stdin;
    public       
   osbustaman    false    248   �N                0    42477    web_social_network 
   TABLE DATA           X   COPY public.web_social_network (created, modified, sn_id, sn_name, sn_icon) FROM stdin;
    public       
   osbustaman    false    258   KU      �          0    34230    web_social_network_company 
   TABLE DATA           m   COPY public.web_social_network_company (created, modified, snc_id, snc_name, snc_icon, snc_link) FROM stdin;
    public       
   osbustaman    false    238   �U                0    42464    web_team 
   TABLE DATA           �   COPY public.web_team (created, modified, tm_id, tm_positioncompany, tm_issocialnetwork, tm_active, tm_user, tm_image) FROM stdin;
    public       
   osbustaman    false    256   �V                0    42484    web_team_social_network 
   TABLE DATA           �   COPY public.web_team_social_network (created, modified, tsn_id, tsn_link, tsn_active, tsn_social_network_id, tsn_team_id) FROM stdin;
    public       
   osbustaman    false    260   FW      1           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       
   osbustaman    false    220            2           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       
   osbustaman    false    222            3           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public       
   osbustaman    false    218            4           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       
   osbustaman    false    226            5           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public       
   osbustaman    false    224            6           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       
   osbustaman    false    228            7           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 190, true);
          public       
   osbustaman    false    230            8           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public       
   osbustaman    false    216            9           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 76, true);
          public       
   osbustaman    false    214            :           0    0    web_block_home_bh_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_block_home_bh_id_seq', 10, true);
          public       
   osbustaman    false    245            ;           0    0    web_block_home_plugins_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_block_home_plugins_id_seq', 19, true);
          public       
   osbustaman    false    249            <           0    0    web_carrousel_carr_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_carrousel_carr_id_seq', 2, true);
          public       
   osbustaman    false    233            =           0    0    web_company_com_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_company_com_id_seq', 1, true);
          public       
   osbustaman    false    235            >           0    0    web_items_it_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_items_it_id_seq', 4, true);
          public       
   osbustaman    false    243            ?           0    0    web_menu_me_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_menu_me_id_seq', 1, true);
          public       
   osbustaman    false    239            @           0    0    web_other_links_ol_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_other_links_ol_id_seq', 3, true);
          public       
   osbustaman    false    241            A           0    0    web_pages_pag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_pages_pag_id_seq', 5, true);
          public       
   osbustaman    false    251            B           0    0    web_pages_plugins_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_pages_plugins_id_seq', 3, true);
          public       
   osbustaman    false    253            C           0    0    web_plugins_plu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.web_plugins_plu_id_seq', 31, true);
          public       
   osbustaman    false    247            D           0    0    web_social_network_sn_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.web_social_network_sn_id_seq', 5, true);
          public       
   osbustaman    false    237            E           0    0    web_social_network_sn_id_seq1    SEQUENCE SET     K   SELECT pg_catalog.setval('public.web_social_network_sn_id_seq1', 5, true);
          public       
   osbustaman    false    257            F           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.web_team_social_network_tsn_id_seq', 7, true);
          public       
   osbustaman    false    259            G           0    0    web_team_tm_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_team_tm_id_seq', 3, true);
          public       
   osbustaman    false    255            �           2606    34200    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         
   osbustaman    false    221                       2606    34130 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         
   osbustaman    false    223    223                       2606    34096 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         
   osbustaman    false    223            �           2606    34087    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         
   osbustaman    false    221            �           2606    34121 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         
   osbustaman    false    219    219            �           2606    34080 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         
   osbustaman    false    219                       2606    34112 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         
   osbustaman    false    227                       2606    34145 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         
   osbustaman    false    227    227                       2606    34103    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         
   osbustaman    false    225                       2606    34119 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         
   osbustaman    false    229                       2606    34159 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         
   osbustaman    false    229    229            	           2606    34195     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         
   osbustaman    false    225                       2606    34181 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         
   osbustaman    false    231            �           2606    34073 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         
   osbustaman    false    217    217            �           2606    34071 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         
   osbustaman    false    217            �           2606    34064 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   osbustaman    false    215                       2606    34208 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         
   osbustaman    false    232            ,           2606    34291 "   web_block_home web_block_home_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_block_home
    ADD CONSTRAINT web_block_home_pkey PRIMARY KEY (bh_id);
 L   ALTER TABLE ONLY public.web_block_home DROP CONSTRAINT web_block_home_pkey;
       public         
   osbustaman    false    246            1           2606    34311 S   web_block_home_plugins web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq UNIQUE (blockhome_id, plugins_id);
 }   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq;
       public         
   osbustaman    false    250    250            3           2606    34309 2   web_block_home_plugins web_block_home_plugins_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_pkey;
       public         
   osbustaman    false    250                       2606    34219     web_carrousel web_carrousel_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_carrousel
    ADD CONSTRAINT web_carrousel_pkey PRIMARY KEY (carr_id);
 J   ALTER TABLE ONLY public.web_carrousel DROP CONSTRAINT web_carrousel_pkey;
       public         
   osbustaman    false    234            !           2606    34228    web_company web_company_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_company
    ADD CONSTRAINT web_company_pkey PRIMARY KEY (com_id);
 F   ALTER TABLE ONLY public.web_company DROP CONSTRAINT web_company_pkey;
       public         
   osbustaman    false    236            *           2606    34275    web_items web_items_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_pkey PRIMARY KEY (it_id);
 B   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_pkey;
       public         
   osbustaman    false    244            %           2606    34257    web_menu web_menu_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (me_id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         
   osbustaman    false    240            '           2606    34266 $   web_other_links web_other_links_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.web_other_links
    ADD CONSTRAINT web_other_links_pkey PRIMARY KEY (ol_id);
 N   ALTER TABLE ONLY public.web_other_links DROP CONSTRAINT web_other_links_pkey;
       public         
   osbustaman    false    242            6           2606    42420    web_pages web_pages_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_pages
    ADD CONSTRAINT web_pages_pkey PRIMARY KEY (pag_id);
 B   ALTER TABLE ONLY public.web_pages DROP CONSTRAINT web_pages_pkey;
       public         
   osbustaman    false    252            9           2606    42429 E   web_pages_plugins web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq UNIQUE (pages_id, plugins_id);
 o   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq;
       public         
   osbustaman    false    254    254            ;           2606    42427 (   web_pages_plugins web_pages_plugins_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pkey;
       public         
   osbustaman    false    254            .           2606    34301    web_plugins web_plugins_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_plugins
    ADD CONSTRAINT web_plugins_pkey PRIMARY KEY (plu_id);
 F   ALTER TABLE ONLY public.web_plugins DROP CONSTRAINT web_plugins_pkey;
       public         
   osbustaman    false    248            #           2606    34235 2   web_social_network_company web_social_network_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.web_social_network_company
    ADD CONSTRAINT web_social_network_pkey PRIMARY KEY (snc_id);
 \   ALTER TABLE ONLY public.web_social_network_company DROP CONSTRAINT web_social_network_pkey;
       public         
   osbustaman    false    238            A           2606    42482 +   web_social_network web_social_network_pkey1 
   CONSTRAINT     l   ALTER TABLE ONLY public.web_social_network
    ADD CONSTRAINT web_social_network_pkey1 PRIMARY KEY (sn_id);
 U   ALTER TABLE ONLY public.web_social_network DROP CONSTRAINT web_social_network_pkey1;
       public         
   osbustaman    false    258            >           2606    42469    web_team web_team_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_pkey PRIMARY KEY (tm_id);
 @   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_pkey;
       public         
   osbustaman    false    256            C           2606    42491 4   web_team_social_network web_team_social_network_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_pkey PRIMARY KEY (tsn_id);
 ^   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_pkey;
       public         
   osbustaman    false    260            �           1259    34201    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         
   osbustaman    false    221            �           1259    34141 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         
   osbustaman    false    223                       1259    34142 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         
   osbustaman    false    223            �           1259    34127 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         
   osbustaman    false    219            
           1259    34157 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         
   osbustaman    false    227                       1259    34156 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         
   osbustaman    false    227                       1259    34171 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         
   osbustaman    false    229                       1259    34170 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         
   osbustaman    false    229                       1259    34196     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         
   osbustaman    false    225                       1259    34192 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         
   osbustaman    false    231                       1259    34193 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         
   osbustaman    false    231                       1259    34210 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         
   osbustaman    false    232                       1259    34209 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         
   osbustaman    false    232            /           1259    34322 ,   web_block_home_plugins_blockhome_id_5e9ed5eb    INDEX     w   CREATE INDEX web_block_home_plugins_blockhome_id_5e9ed5eb ON public.web_block_home_plugins USING btree (blockhome_id);
 @   DROP INDEX public.web_block_home_plugins_blockhome_id_5e9ed5eb;
       public         
   osbustaman    false    250            4           1259    34323 *   web_block_home_plugins_plugins_id_9347a0b4    INDEX     s   CREATE INDEX web_block_home_plugins_plugins_id_9347a0b4 ON public.web_block_home_plugins USING btree (plugins_id);
 >   DROP INDEX public.web_block_home_plugins_plugins_id_9347a0b4;
       public         
   osbustaman    false    250            (           1259    34281    web_items_it_menu_id_40487ca7    INDEX     Y   CREATE INDEX web_items_it_menu_id_40487ca7 ON public.web_items USING btree (it_menu_id);
 1   DROP INDEX public.web_items_it_menu_id_40487ca7;
       public         
   osbustaman    false    244            7           1259    42440 #   web_pages_plugins_pages_id_6fd9e884    INDEX     e   CREATE INDEX web_pages_plugins_pages_id_6fd9e884 ON public.web_pages_plugins USING btree (pages_id);
 7   DROP INDEX public.web_pages_plugins_pages_id_6fd9e884;
       public         
   osbustaman    false    254            <           1259    42441 %   web_pages_plugins_plugins_id_5f64dae2    INDEX     i   CREATE INDEX web_pages_plugins_plugins_id_5f64dae2 ON public.web_pages_plugins USING btree (plugins_id);
 9   DROP INDEX public.web_pages_plugins_plugins_id_5f64dae2;
       public         
   osbustaman    false    254            D           1259    42502 6   web_team_social_network_tsn_social_network_id_5e2fd632    INDEX     �   CREATE INDEX web_team_social_network_tsn_social_network_id_5e2fd632 ON public.web_team_social_network USING btree (tsn_social_network_id);
 J   DROP INDEX public.web_team_social_network_tsn_social_network_id_5e2fd632;
       public         
   osbustaman    false    260            E           1259    42503 ,   web_team_social_network_tsn_team_id_681327ee    INDEX     w   CREATE INDEX web_team_social_network_tsn_team_id_681327ee ON public.web_team_social_network USING btree (tsn_team_id);
 @   DROP INDEX public.web_team_social_network_tsn_team_id_681327ee;
       public         
   osbustaman    false    260            ?           1259    42475    web_team_tm_user_9116ee8c    INDEX     Q   CREATE INDEX web_team_tm_user_9116ee8c ON public.web_team USING btree (tm_user);
 -   DROP INDEX public.web_team_tm_user_9116ee8c;
       public         
   osbustaman    false    256            G           2606    34136 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       
   osbustaman    false    219    3321    223            H           2606    34131 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       
   osbustaman    false    3326    223    221            F           2606    34122 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       
   osbustaman    false    3316    217    219            I           2606    34151 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       
   osbustaman    false    221    3326    227            J           2606    34146 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       
   osbustaman    false    225    227    3334            K           2606    34165 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       
   osbustaman    false    219    229    3321            L           2606    34160 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       
   osbustaman    false    3334    229    225            M           2606    34182 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       
   osbustaman    false    3316    231    217            N           2606    34187 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       
   osbustaman    false    225    3334    231            P           2606    34312 N   web_block_home_plugins web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block FOREIGN KEY (blockhome_id) REFERENCES public.web_block_home(bh_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block;
       public       
   osbustaman    false    3372    246    250            Q           2606    34317 L   web_block_home_plugins web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi;
       public       
   osbustaman    false    248    250    3374            O           2606    34276 9   web_items web_items_it_menu_id_40487ca7_fk_web_menu_me_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id FOREIGN KEY (it_menu_id) REFERENCES public.web_menu(me_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id;
       public       
   osbustaman    false    244    240    3365            R           2606    42430 I   web_pages_plugins web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id FOREIGN KEY (pages_id) REFERENCES public.web_pages(pag_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id;
       public       
   osbustaman    false    254    252    3382            S           2606    42435 M   web_pages_plugins web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id;
       public       
   osbustaman    false    3374    254    248            U           2606    42492 W   web_team_social_network web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia FOREIGN KEY (tsn_social_network_id) REFERENCES public.web_social_network(sn_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia;
       public       
   osbustaman    false    260    258    3393            V           2606    42497 V   web_team_social_network web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id FOREIGN KEY (tsn_team_id) REFERENCES public.web_team(tm_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id;
       public       
   osbustaman    false    3390    256    260            T           2606    42470 2   web_team web_team_tm_user_9116ee8c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id FOREIGN KEY (tm_user) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id;
       public       
   osbustaman    false    256    225    3334            �      x������ � �      �      x������ � �      �   �  x�u�[��0���U��Qõ}�miĴQ��
�u��$6�7&?�����O��-i�{��y|g���eK�r}���+
�"�x�5�[������*����f���7)H����H�[I}�%��=G�������qx=M�ٺ��q�E���!9��Q
���YP��hr�>Z���)J�#P��	��(����1X���C?/UK��ӛ�ֺc�Y
��$H��kÓ>ɧ�(sC�\ź�z�X��ʦ��!�Sn����z�@U@�ӯ��u��'�ڦ����Q�s�򯋨���E�"*�=��m�TdX���L�-aNו�PR�RYN����D�Oõ�ۤ���0~�6i�f�>��:G��G�Y�v����k>v�0?���M�=�en�� [�c3�@��K\��'��E�l`-��=��_��]�>�\5�I�g� AH�v�8h�h�f�ݢ�X�\�H H 1�7C�MA������<����v�[���$i���8���(�`�g��7��)x?���3ķ's��7's���&3����� oX�BY= �����`Ja�@��G'Ͼ��[`}��r2�I��L� $��9�c�8�_a���1~ey<�D��X�����x�ޔ�8;�ϡ�/��jg�W��o^3vgx县rM��Uz�]k���2夏�s0�&/ߺl'U�n�]l��-��.�;wr�Yu��/k��S&z      �   ~  x����n�0F��Sd��
�Ɔi�6�D� IHU�� `�(��v������s�tχ@�����&!MG���|l�Ma��6�OQ!�%˪���r,���s���a�փpZ�����ܪ�=�^=p �`]�q�Ӿ�`�7\�=Kˆ���V�� �3�� �Bl�� x�����d���b��}�勭��>ς����Jw�X�-����S�x�����~��hw�~�J�WI'ohR2�4�����`��������s�$<���Q�Y��8�s:�ҊĻ6��o�d�م�zz.����綫�!Ԋ7l����6���ĀXV4�}|<1�\К6`�O�JX\������O$7�yM�꣒�ZI�"h ̀�{�Wy2���ե�      �      x������ � �      �      x������ � �      �   �  x��[ɒ��=7���ז��EAQ�E)�E�u�t�Lc��z�Q/�e�>�G��	�1gV�g�* �L3���e-�/W�`B~��3.3��Bϥɍ�ҺϘ��Y��ܮ7�mQ���ߞ^}(�r�t�����*��5����/��z���m��O�����~����<�$����8�l��vQ������E�B d �\�`��.����e�ʪ�⦬i�ݟ�ꪩÖI��$��K����O#z�М�\J�H��]W�e��4pIt
 � \��r���*q�#�M���9�-Z�f�jT��Uq;�ܦ˅ȅ.!���/�fS�Fֻh=ݸș ��7~寍�7��� �r�%.0 �1 ��sn�L� B�XM~����"BW|� wR���M��/��i�E�]?�"����d�gN���4|�����Fx~U�e�DM���16̕ʝ�T�ݮ��=�6����b�@�Q��ñ���*��e����-c�ғ�����A����% ϭc�z�us{�*��u����.vlMe�x���NX+!H�-��ݪ����b9`0h,��,��70��C�_5���rA�y��x��Z���]����0�!R�Qu4��@{_o��fլ�w��cuU5�Q0���)��nY�ySo��MQO���ͅ��f�#�n>4C<�$� ���(�$k��⫋��:]�l���Í���X�.7��|�P7TΌeB��~�� �X4����T�	�^��ĸHr�2�� ���`��M�����$��AogX��_,���e6䳐���v.���Ce� �����7��c{ؾU�X�˜;a�hXd����W����AUg5�70%g_�����2��#�"X����1�p���m�}jG���71� ����.�n��WIb[.��e��f;���.]�o--zE�?�H���j�dn0|����<W�c�#�ݒ؀8P,(��$��,6�U�neS�FoM��@B�\*�Up)�-z8�� "(F�i�f+tk�Mv�,���It	��90F���Ez]��&J��?���G?[�6u51x�Du�\��:Ѻ6�(�)FX���A4ZVBi����D�����1����ч�!@���߂e*x�v�SjzѬ�vq_���vT�5s�0��t�u�h9�����e�7�hQ�%�E"]�	�R ���
t��haDv�ŚN�0�T�ѐ��>�t\/9j�vL�Q`ga���/�+m�x+�)=���r�d���Pn�1]�	dH9ew�{��m��헯^�z��,{�������e�dI@ZM�0"ڄf�&4��k�;�&Ɯ��p���4�||��^x�/�MU�]�BE�.�6=9=#�f)ł#��p��ԐZ>�V;vF )(ei�D�O]�&�����XكIOăZ���`-ݩL�ħ��;P�SV	�܁}�h= ��s\�9�T�&�U�- �N�J��tL�Y	��c��|Yi������p����6�e��,��O�w�:����X���I�΃��RԔf�i�V��H=��ކ�`�j�Mxb�x}MP��\WM],�q@:��r%5���+ԟM�n{��J=�Ha$����:x��E��(���L�h��XkR:��I�6��q	}ߣ/����Γ�ӧK
�4T�`��R����[~=2�Pһb.���1�c�wK�X�Ba���Ձ+��R�ٷU]ct?�cb��I)���t¦0D!�b�T���\�?V+|���`��>�=<�KDYN��{�[�i��,���q�C ԇ��u��˛��Z�쪺,W���TW�u7�SH$)lr8j��qhz�VD��KQE���AE�l��AM�-���ČD$oL�C�3ʷ��BL6�����0����D�)Ϲ j�}N?�ܘƸ�c�3���s�F`e0�AB>���3I<�c�4C~>�1��dG���AnG	v1�`)sB71E}��EL��׷�鳫Z<���ײZWk�\��(�Ť%B��1�/�u�Z5K��_��Q��Iѫ8aB�Wt�pc��/����\L)BP�*��?U�޽x����Ī�g���[K+f	�� FcʭN�2�p1#E�6N��E5��\�5��$?P�����L��C�*��"6x�6�
Ѿ̞�oJL8
�j������xǇ���� 9�ܶ={�,n��)��z�]n�Uv�-�?o+:�v1��]l��7�7.�W����;g���Đ͵ta`���O��+01sC�t�����N|�)o������	/0�K��eq��y]	C8�d��O�!a� }����V�:�����@N6�����l��:$��(#l2"6��=��P$��P)��3�m��j��G01����rbW ��2��?��-�e��c�0�ƙM+�^�T��ޞ���S�sH�(Tӧ�,EP�M�Dg>>�d����|���� ���* �)�t��� S	R�B3����1
�RxL#��64���Q������
���M�ѱ9��t!�'2���{'[�bp�6��@ZΖ�Ӄ-�M1��5�!��&f[���X�PLp2�6���r�Q�!�!,uߥ�����#�,�&�0��S@<�\B�v�s �H%�1���]�n�@D�"R���p��!�e05 �)�����\�^�D�=���vGwoo�OZ��n�DΕ h�fݫ�뽔�f��:�/��~U�-ES�.W�'IEz�6�"��\����
YC�Ovp�R���Y=�|�8u��1ieyB��~~t){�M��a.L�&�X��p��;��a'�#����0�w���q�U,�Q;�	�E�#8-���J��H�&��'��q��4��I2���ʳ�2�(b:��pm�谱֠�6B#��k�����c�Z.]�/�\Pa��@|9k�)���s?hg!h����d׫��~�_
�<�ts@ඝ��Уc�¾�Pl����8��@%#O�z����L�R2����&���8U)�"�Q�A���t��6��{�����W��L:g�p�>_Y���m�
�N��,�Ȍ�3��F�v2_�[fl��&Tɧ�P�R��E�>���%�ȼE&gB3y���<Ac;���R0c�8�އN�/��z� 6q�+�9��euL_S�E����U1e�no����w�����(L� '��/�Z ��K)��A r@� �y�N�"0f �� ��Q0.r��npd�u
4o�T�@S
��ݙ���S�v���� 6🴀0� . ����0j���Q��4� FG`��@�#��k���b�+�N� 9���7�7Mxf-bL*9�B���6���Q��և�/�+�*&�d��!�D��&�8V�prq����m<&��:���H�+�m�/�����sO����!FB����|��hl�_aPԌ:�ӽ��F��n����G��%j_T�܁:Q�Q->�m�A�|�C�6����%\�+�y�Ʃ}����ְh�p�a}B�zm�Z�kJh�����&�NB-����%V'�k�B��֜����fb�n�Zp�����&6S
k4:imw����=al��31ȥ��NQ��ǆ��1w�~�S&6�Dɩ��$=Ë�όml��xAx���B�V��'���Z�"�'u���Н�ض�	����Su�8ֶ1+H?��Qf�
�����c^�v���~{w��L_{L.(T��W>T9�ڧ�DC1� L��I�<-.�j�������.5�J�y����RcB!�x�Z�Hc��\�<
�CF�����K_��O�<�/6f�      �   �   x�e��!E��c����7�CZB!f�^�h��sOn��yDO*�C*y�I�Z�0G/�`��\T�Ge�J��-�|��`_�;�Y=���`��`���zߑ˂9xZ��MD����}�����خG}�E
�yj�8�8lp�P�D��(l�	���y��?�;З��W�v ��Qh�      �   )  x���[��0E��Ud�R��z�%U*h�?���#	d�@���u_ݖ��l�����u
Æs�>�c]5�(�9�� p �L*��߹|vSM�a�ĢJ
�7ծ��+$�L��U�������������|�۽���+D\!Q��XwG��T{�=t�6���
L<X�������cՆ,�d3K����1�����TT����p��UOYPAf���4�Gh���#
F�y�I�\Pw_Xd�0�̠[FSc����M͋�7�P�LQ���S��g�}��9�FWD�\S�/����zW�]?����z߆a��������3O���g�
	f�}�h*%3

����
C<ZE#f��-
��w��n2���XJ�x��gݯl�8�zh3�ˮ���5�|ː��k�y#]�O��9��?�@,��"'�%S�"/��J��-?��e����m��ƿ]��N/׎S�Bd/z*w�*�u`X̞��c���v��2C�ͫ����7�����{��9�F�ץEl�1-�b�ic�B�l��El����S>͐@�|�*���T�&_��NZ�u��-!����5=�.|VS3>䂜@'41CY_"��?��}U*Z�(�<�UbٱB�#OvAT��KV%] �G�m�8p?Lc=6a��&)����+n���X��C�ƕ본d
ԃX�XD�M�
���%b�o�zQ�0����6�.	�r%�b��XƔjf����uIؕ �b�G�ϭ��!_@Ǎ����-��!�y�<��B,�+f9�����������      �   �  x�=�˒k@  ���+��<�[؉$D�n�BěТ���3U���,O3�
�l��g�e$�H�
�m�'DE�F_�Ę����)U.����-O��	�H��8̘�� �\��?Fa7s5lܽ��C�^~yǯ?��E�����7���ӹJ�l��.�1��p�Y��$�޹�<ܛ���˙j���~��ӧ���o���&�Z|�o��"z)z7}-soZՍ�u�TдӶ��&�ɸa7���QV��c�z��i�L�x�2���2�2���_�ҏ�E)%"�(�d$(iǩ���Z�ܿ���լ�ޑ�ϛ�+�j����L��^+�ƺClD���@iq�$?v��=rW[�T��yR^N?Ya�iC�¥E��D]���5��0�ꅧ]��a��*��Z��5�vWP���:bA��[�y�hm~}�G�i���w��<�c �;U�� YVl۶��-*�}.�w���U������oN�YV�%P���ԟ�b��#��A         �  x��Z[s�6~f~ũ�eC�w]*+�&�4�֛��vv&3;	IHH�!@��?ڇ}���L��z �������d��<��� 8߹��Ϸ��vp���]��z���X^3��g�D�h�FC3k�Ŵ�	$r.�,���I1��Y�K�%�@S&K(�� �1vI�1�A�S�JT��i�
&�p�����'���R. %3^�><U��Nkȕ�ry�& $�r^��	��$�e%̹ �8����[G���xY�����ԙ&'��r��g�WgHE�	�R���b�S���ku%�V1{��\����<���W��ۂ���1#��]X�q��C��Q/��~�á���<�$�A����\AI����@%��Z�+���$(͘�xCDbD��i�(Q�i$!�B���Ïk!D�P�����,�r	�(�BV��Q ״�X������ TMP|��􅐕ֶͽj��t���QWQ|���@6�-�~�c��]И
�+�d�Au�:���d�����������5 %"��6�Nû�:��A'��W���c�%���W����X�mO_���I®Q���=�-�ii�ӊ%0'	}��\@��C��7��K4M{~���S;]؃�L6�5�����(8�s��)��q���L��^��?ѷ��''8��̼;��������'�2�DP8�45�~���9���	�l�k�f�xW�)��;γ��Q�t7L.Y^ K^�b}���e���m5�Œ�(��@��{���������/��En3��c����͊�B&m���񥳅]��y�j�(!���V�4aɫ<�I#�*���%e��GNq�5j]"��ݛ�)������V;�(�S���B�x�@��K�v\� �h0�lpP���:��=ޤ�d���8Phǣ������WuĞoS��z�	�T�]�!
��!IoeN��o׉�K;�h���Nx�Pӥ�i�i�����^��,F'i�׋�IZᶮ"����64�!C�i`r���K)Y�Q���밾���F�����&�>�O1�u�W�ӎ�N��=w�������Q8������ʑ��5S��	��)��r[3~�`��ڤB���A!T��e��n���>�_i�Б0uG�m)��鹡�	�g=�d<����?� %�%�B⒪QAN<f\��=UF�f�m����n�;8F�zc���Ww�s���P��ENmr���`�X��5���Q�o]�au݃U��9��w$!� ���XLޅ*�i�?���@��`�
�u���<�j飙���$�{1�hv���֞�7��h�?1R�[�U0�@Ry�C���������Uv����:Q����NTa'��ՠհը���A�1G#:�H�g���F{�2�N�s�p��k�\�x�^ ,i�D�Z�R0ɱ�U����������0y{�D4����H��+��e<GǇ=}�������覶��*Yb��T�D��6Y��z�ѣ������[]�ĵ<v�Wnΰ�+,��J![�T�ש$�[����q)y��ȅr!��U h{�y`�FsSL4&�}�گ�Sh�+-���5\��n��a�1}Y�9B�f�K�Ph�*�����t��y�3�����՜yg�/��g�5�~Ol��5]kv9ӧ�����������c���A;$b�y�}uy4�0�|���J	X���uu66�,�d�So����7}�h6�[��Mb�Q�V󹀟(IV�M�[��7�	�7���N���|@�����̈_�r��{ɒ���G?�:`�w��ig��ʪe�7�qǌqٺ޺���\�.��_�؝qQ,�&~^�鮁�o�Ϩ@E�m�?�~�(x(|(��!
�b:���K���a0�W�cp�#׍t�Yߤ|�?��jI��{�}�VlQq��j��R�8��%�U����xɅ��qe��j�9dU{��%h#��q[ڲ"�r���-�aIf�E���]�B�Z��[��4T�Y�9�MQw3i�!=��=X�t����Bg`�frr�;K��6��o��B곔N.����q�$�P�;.|G���9A�ND���ߨ,cV�47t�o[y;=���B�΁l|ʭ*
�?K�n�5��î�>�K����{P�5�߫������vH�vS�Mr����ѣ? h'H�      	   E   x�˱� ���&/��]��9��J�b�����IŌM�b�fۅ2*Ԩn�m���|ѹ����      �   �   x���Oj� ���4F�1�ޠP���X���,��͔,Zh7����{|@���b Fk��b�0������$ͤ��RZ�_��$���4�X��'��X�ЙM�?1W2z�}��k�]��1�V߀�������x������� ��nD���8
?��Q���b���F���<�<��?PyB�PyBñ#��+�q��u=�w�]q�=wq��a��SJ?Pzqj      �   ]  x�m�ͮ�0���)f_H�C���+U����k�h$��qi����D�Jwg�s��7UӮ�nU����f��v嶭�~���E�t�P���߯�r�i�M7�u��R<�E
��c
�a���L�>����_���w������'N�!�.��x�)��-d0ΓU���f	�LQ�h �N�p��C��l�m�i�3�A|a��tJ�5���V�'xrhL9�e�$��d	�39#N�hi�d(�<�����(��ąQS4d��(�<�)�<��"z�f,ᛀ������bX�5S��I�l��t�!A�u {����<�(�<鎤Q��P��ďt�����b���Ʈ`         �   x�u�=R�0�k���mY���CCECK��HA<�=?����Fғ�'+e݈��v�v
V�BtWe�!"E��<!��Zx)LK���i7��Y�ʃQ�f�4��|U�)�=-�Y.�T���J-�^�!��1K:�s��b��f�GG�m@�H�\T���\�������R�l�����qЇ�yNXs� �1�����:x.��._�NJ߅p7Ļ��5�[�      �   P   x�3202�50�54Q00�21�2�г42�0��p!�Z�Z���YZ�Y�d9sS�J�2�3s8�8�b���� �L         k   x�}�;
�0E�z�
�:af2��@�� �tVڈ��Mv��0���4Ʉ�%e���4
�o%(ϵ��m���m4B�cR}�����ȑh|B7t�ja�wm�m�f�R/8)*�         +  x��U�n7}��b��x#�E��4�[���I�@��4��zI
v�*�'��z�]\�il�H���9g��8͎���I��O�,���'yq<�G���t��y�d��l:���ѩ�F
*��u�7֍��jaoT%���H���XOn.��_����^#4����G�?������Vk��Ϋ��wl��څ�J�mCNy��$�q,=�А(U��TfM�6� V�U�$�U�`e�*U���I�%��.5�A�pDB��F��pS�$�6j�M#p�%�HH*'RI�۰N�ccr�F����&�"L�ZP}�M��UB��%���達�ց[���یK�dS���JF�u��^ÒV�Jx��Ϧb�Aam]`���Ѕr���-��Ri������H(9ɚ�=^R��/�Yk��v�z�P��jBg�		@�����=���]	}E
p�¡<P⧍�t<A���霈j'�{��<�OЁM�j����N�A��r��p�l����m��u@�j4 ��Po!^�pdVӿ�n��8��m��+Dn��A#����J�:j���X�5U�a��TL�����-,�19��m��ua9Q+6m	�B�,�Z|��{��Z���n������7�����Ŀ����3�`������)����h��	]�}aĢ�^�8���ʇR4RՋ	d�R��� L��-�qP[��-�v+�&�������F�]��R�f��@�{-�ߞ(�c&mGM?���=sz�d]n��]�y����Q����������
���������3��C�Zę9n�����ֈ����b#Z�������gQ&��I|�b]\� BH%��^�4[��E:O�y6�͟����.��U�Kn6����1�q�WW�������F�-Nk��@�Y���)P� �.�ⵕ�7��3�s6^dE��g��'�E�(&�,O�q���`s/��`���������s�
�Å��� K����k)4cd�������Ni�.���4�����gw�����ܜ�>��}r6�]'GGG� k�"�            x�3�4�44�2Q\1z\\\ �z         O  x��X�n�6}����ݥś.m��A�$(j�y1P�w�DKmuq���'��:CRڋeo�Р����sf�̐\s��Ւ%����W*�,c��XF�ikU�M]��O�#�v�����VoLwyglٴˌ~�m"0��U�b)�&D��5C��<^>��W��������$�Ȩ�J9ZE]U]o�������`�^GkM�z���ы���ǡ�R6u���-����h�1�	�&�'��ȝi����u�ֿi`Q]���ݐZ��S�57����nL�i���5<��mS]Փ��[2����������w�yt��Ѝ8}x�_�`��AH�(�0��vlCHP�>ؑL���]��lzJ~��O��Ԡ}q��SPٻ��s����އ�(���5%�0���zr�2e]f������WStJ��k��ߚz���v���'Pa�<QC$�U���k�x��8;�i���޿�G�U�A�|��H>�9�.� ���~��r���D��歗J+�89��q��=��Ú��}��	�B��?�2ꙸ����@Y��V����s��n6K���egڻ�����e����a�XLe.>=�
'KVJ�,aJ:+��h�K̢!;�j�0/�[S|��'�JJ�&"I��t�K��5���z�@����tUcum� ._1E�`*��p	�q�H7)E��eJ��ݮi�/�
�d�̂0F�B8
2�QW-�S�8���J	*���\ "�
C]E?��~��)A3����!лib���,EU-���<�n�]����DW����Rg�lJ�ހ�)Z��Wח�����[��k���q&R��#�AJY���i��nK��}����� �4�SJ��B$�SK6'��mc�R��W���J�4I%�3�=�2�j�]cK�C��05aԺ#\�ۦ�c�fW�5�:EV�i��l���T����-*MzS��_ڪ�s�G	|��R��I��N<]�;7Q�k�Dok��R��9�oTBr��'��<.x���&*٩B����B��YY�����6�5�U�ޙ�ٙ%|-���i�6k��]��)l@��uL9��n2ȇ�│�s_�<����E��jɇ[�wz��>�Φ�G�m�����Ut\�a+��w.�ߪ$Ƿ�KG��U�m|pT���Y������c	;��1TL��S+C<~�?��ܷ�x�V�x�<�x7ȷ����/�I�||��y<�(^�{&˹�pGF�h�<�z-ǋ\'�8��;�*�K��%O����ds�;�&����K�V�X�8�fyP=w�	��X�n��<ze:ݶM]�(��Iޙ�*���me����������z���^��zup��A��T,O�SC�!��n�vo������Ky��K�g,-r��b�f���B2t�?ҺL���B|ڱl.	޵�������>rt4r ��}����:S#,���rn�P�|�MH��7��z��Q���WA~����ϐ�MT�Q��__]'4�hcB�{���ˏ�TĞ��ȟ� S83g��)���gF�!'� ��U@B�����)������<��G%/f%M/..�Y,         �   x�}�A� @��p
/P��0t�,nZEC�4�4�ۻnK\��G��sҡ�P"a����B�<�ߊP?�ִ ��I��5P��W��4��t����=�6�Mex�2�[.�G��*��؄6�C.�:<���(�ؠ�*MiS��Z�1���5�� ��L�      �   �   x�}��
1E��W�	�;������&j����5��R�`w�\\0D��V6��<�`;���[��K<��Tq�Vc��s�k����!�)^S��J�Ѳ�kt>��}~�p_£r�����XO�W*%.dk�d�RoD	<h         �   x�m�K�@�5��Pg���Y�X�L�A3@����^LW$���'�ע@*�*�*$;��h!�Rp����Cm��ۘ��:�䃯��8�������Sa�����6����P<�6�v�^jcR$T���=��|Y�1)`J�N1�N
L�����Rv�����/�%!�B7���8�N�         �   x�}�1!D�z9E��X��!�Y����
Q�����'y�raV>����&�JX.~�ߪ��zvh��g�R;�Ce�SA���z*[�T<R\��5T��S�n
�*����\�]�5D�Z�*�+}Ea�ʭ��*H����mX     