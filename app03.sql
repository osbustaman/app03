PGDMP         2                {            app03    15.1    15.1 �                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    32045    app03    DATABASE     g   CREATE DATABASE app03 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE app03;
             
   osbustaman    false            �            1259    32046 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 
   osbustaman    false            �            1259    32049    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       
   osbustaman    false    214            $           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       
   osbustaman    false    215            �            1259    32050    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 
   osbustaman    false            �            1259    32053    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       
   osbustaman    false    216            %           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       
   osbustaman    false    217            �            1259    32054    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 
   osbustaman    false            �            1259    32057    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       
   osbustaman    false    218            &           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       
   osbustaman    false    219            �            1259    32058 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
   osbustaman    false            �            1259    32063    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 
   osbustaman    false            �            1259    32066    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       
   osbustaman    false    221            '           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       
   osbustaman    false    222            �            1259    32067    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       
   osbustaman    false    220            (           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       
   osbustaman    false    223            �            1259    32068    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 
   osbustaman    false            �            1259    32071 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       
   osbustaman    false    224            )           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       
   osbustaman    false    225            �            1259    32072    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
   osbustaman    false            �            1259    32078    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       
   osbustaman    false    226            *           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       
   osbustaman    false    227            �            1259    32079    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 
   osbustaman    false            �            1259    32082    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       
   osbustaman    false    228            +           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       
   osbustaman    false    229                       1259    32365    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   osbustaman    false                       1259    32364    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   osbustaman    false    260            ,           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   osbustaman    false    259            �            1259    32089    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 
   osbustaman    false            �            1259    32094    web_block_home    TABLE     �  CREATE TABLE public.web_block_home (
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
   osbustaman    false            �            1259    32099    web_block_home_bh_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_bh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_block_home_bh_id_seq;
       public       
   osbustaman    false    231            -           0    0    web_block_home_bh_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_block_home_bh_id_seq OWNED BY public.web_block_home.bh_id;
          public       
   osbustaman    false    232            �            1259    32100    web_block_home_plugins    TABLE     �   CREATE TABLE public.web_block_home_plugins (
    id bigint NOT NULL,
    blockhome_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 *   DROP TABLE public.web_block_home_plugins;
       public         heap 
   osbustaman    false            �            1259    32103    web_block_home_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_block_home_plugins_id_seq;
       public       
   osbustaman    false    233            .           0    0    web_block_home_plugins_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.web_block_home_plugins_id_seq OWNED BY public.web_block_home_plugins.id;
          public       
   osbustaman    false    234            �            1259    32104    web_carrousel    TABLE     �  CREATE TABLE public.web_carrousel (
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
   osbustaman    false            �            1259    32109    web_carrousel_carr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_carrousel_carr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_carrousel_carr_id_seq;
       public       
   osbustaman    false    235            /           0    0    web_carrousel_carr_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_carrousel_carr_id_seq OWNED BY public.web_carrousel.carr_id;
          public       
   osbustaman    false    236            �            1259    32110    web_company    TABLE     �  CREATE TABLE public.web_company (
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
   osbustaman    false            �            1259    32115    web_company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_company_com_id_seq;
       public       
   osbustaman    false    237            0           0    0    web_company_com_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_company_com_id_seq OWNED BY public.web_company.com_id;
          public       
   osbustaman    false    238            �            1259    32116 	   web_items    TABLE     �  CREATE TABLE public.web_items (
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
   osbustaman    false            �            1259    32121    web_items_it_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_items_it_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_items_it_id_seq;
       public       
   osbustaman    false    239            1           0    0    web_items_it_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.web_items_it_id_seq OWNED BY public.web_items.it_id;
          public       
   osbustaman    false    240            �            1259    32122    web_menu    TABLE       CREATE TABLE public.web_menu (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    me_id integer NOT NULL,
    me_name character varying(100) NOT NULL,
    me_hasasearchengine integer NOT NULL,
    me_isactive integer NOT NULL
);
    DROP TABLE public.web_menu;
       public         heap 
   osbustaman    false            �            1259    32125    web_menu_me_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_menu_me_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_menu_me_id_seq;
       public       
   osbustaman    false    241            2           0    0    web_menu_me_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_menu_me_id_seq OWNED BY public.web_menu.me_id;
          public       
   osbustaman    false    242            �            1259    32126    web_other_links    TABLE     *  CREATE TABLE public.web_other_links (
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
   osbustaman    false            �            1259    32131    web_other_links_ol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_other_links_ol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_other_links_ol_id_seq;
       public       
   osbustaman    false    243            3           0    0    web_other_links_ol_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_other_links_ol_id_seq OWNED BY public.web_other_links.ol_id;
          public       
   osbustaman    false    244            �            1259    32132 	   web_pages    TABLE     �  CREATE TABLE public.web_pages (
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
   osbustaman    false            �            1259    32137    web_pages_pag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_pag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_pages_pag_id_seq;
       public       
   osbustaman    false    245            4           0    0    web_pages_pag_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_pages_pag_id_seq OWNED BY public.web_pages.pag_id;
          public       
   osbustaman    false    246            �            1259    32138    web_pages_plugins    TABLE     �   CREATE TABLE public.web_pages_plugins (
    id bigint NOT NULL,
    pages_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 %   DROP TABLE public.web_pages_plugins;
       public         heap 
   osbustaman    false            �            1259    32141    web_pages_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_pages_plugins_id_seq;
       public       
   osbustaman    false    247            5           0    0    web_pages_plugins_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_pages_plugins_id_seq OWNED BY public.web_pages_plugins.id;
          public       
   osbustaman    false    248            �            1259    32142    web_plugins    TABLE     �  CREATE TABLE public.web_plugins (
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
   osbustaman    false            �            1259    32147    web_plugins_plu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_plugins_plu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_plugins_plu_id_seq;
       public       
   osbustaman    false    249            6           0    0    web_plugins_plu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_plugins_plu_id_seq OWNED BY public.web_plugins.plu_id;
          public       
   osbustaman    false    250            �            1259    32148    web_social_network    TABLE     �   CREATE TABLE public.web_social_network (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    sn_id integer NOT NULL,
    sn_name character varying(100) NOT NULL,
    sn_icon integer NOT NULL
);
 &   DROP TABLE public.web_social_network;
       public         heap 
   osbustaman    false            �            1259    32151    web_social_network_company    TABLE       CREATE TABLE public.web_social_network_company (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    snc_id integer NOT NULL,
    snc_name character varying(100) NOT NULL,
    snc_icon integer NOT NULL,
    snc_link text NOT NULL
);
 .   DROP TABLE public.web_social_network_company;
       public         heap 
   osbustaman    false            �            1259    32156    web_social_network_sn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_sn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.web_social_network_sn_id_seq;
       public       
   osbustaman    false    252            7           0    0    web_social_network_sn_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.web_social_network_sn_id_seq OWNED BY public.web_social_network_company.snc_id;
          public       
   osbustaman    false    253            �            1259    32157    web_social_network_sn_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_sn_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_social_network_sn_id_seq1;
       public       
   osbustaman    false    251            8           0    0    web_social_network_sn_id_seq1    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.web_social_network_sn_id_seq1 OWNED BY public.web_social_network.sn_id;
          public       
   osbustaman    false    254            �            1259    32158    web_team    TABLE     `  CREATE TABLE public.web_team (
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
   osbustaman    false                        1259    32161    web_team_social_network    TABLE     7  CREATE TABLE public.web_team_social_network (
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
   osbustaman    false                       1259    32166 "   web_team_social_network_tsn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_social_network_tsn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.web_team_social_network_tsn_id_seq;
       public       
   osbustaman    false    256            9           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.web_team_social_network_tsn_id_seq OWNED BY public.web_team_social_network.tsn_id;
          public       
   osbustaman    false    257                       1259    32167    web_team_tm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_tm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_team_tm_id_seq;
       public       
   osbustaman    false    255            :           0    0    web_team_tm_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_team_tm_id_seq OWNED BY public.web_team.tm_id;
          public       
   osbustaman    false    258            �           2604    32168    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    215    214            �           2604    32169    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    217    216            �           2604    32170    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    219    218            �           2604    32171    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    223    220            �           2604    32172    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    222    221            �           2604    32173    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    225    224            �           2604    32174    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    227    226            �           2604    32175    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    229    228            �           2604    32368    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    260    259    260            �           2604    32177    web_block_home bh_id    DEFAULT     |   ALTER TABLE ONLY public.web_block_home ALTER COLUMN bh_id SET DEFAULT nextval('public.web_block_home_bh_id_seq'::regclass);
 C   ALTER TABLE public.web_block_home ALTER COLUMN bh_id DROP DEFAULT;
       public       
   osbustaman    false    232    231            �           2604    32178    web_block_home_plugins id    DEFAULT     �   ALTER TABLE ONLY public.web_block_home_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_block_home_plugins_id_seq'::regclass);
 H   ALTER TABLE public.web_block_home_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    234    233            �           2604    32179    web_carrousel carr_id    DEFAULT     ~   ALTER TABLE ONLY public.web_carrousel ALTER COLUMN carr_id SET DEFAULT nextval('public.web_carrousel_carr_id_seq'::regclass);
 D   ALTER TABLE public.web_carrousel ALTER COLUMN carr_id DROP DEFAULT;
       public       
   osbustaman    false    236    235            �           2604    32180    web_company com_id    DEFAULT     x   ALTER TABLE ONLY public.web_company ALTER COLUMN com_id SET DEFAULT nextval('public.web_company_com_id_seq'::regclass);
 A   ALTER TABLE public.web_company ALTER COLUMN com_id DROP DEFAULT;
       public       
   osbustaman    false    238    237            �           2604    32181    web_items it_id    DEFAULT     r   ALTER TABLE ONLY public.web_items ALTER COLUMN it_id SET DEFAULT nextval('public.web_items_it_id_seq'::regclass);
 >   ALTER TABLE public.web_items ALTER COLUMN it_id DROP DEFAULT;
       public       
   osbustaman    false    240    239            �           2604    32182    web_menu me_id    DEFAULT     p   ALTER TABLE ONLY public.web_menu ALTER COLUMN me_id SET DEFAULT nextval('public.web_menu_me_id_seq'::regclass);
 =   ALTER TABLE public.web_menu ALTER COLUMN me_id DROP DEFAULT;
       public       
   osbustaman    false    242    241            �           2604    32183    web_other_links ol_id    DEFAULT     ~   ALTER TABLE ONLY public.web_other_links ALTER COLUMN ol_id SET DEFAULT nextval('public.web_other_links_ol_id_seq'::regclass);
 D   ALTER TABLE public.web_other_links ALTER COLUMN ol_id DROP DEFAULT;
       public       
   osbustaman    false    244    243            �           2604    32184    web_pages pag_id    DEFAULT     t   ALTER TABLE ONLY public.web_pages ALTER COLUMN pag_id SET DEFAULT nextval('public.web_pages_pag_id_seq'::regclass);
 ?   ALTER TABLE public.web_pages ALTER COLUMN pag_id DROP DEFAULT;
       public       
   osbustaman    false    246    245            �           2604    32185    web_pages_plugins id    DEFAULT     |   ALTER TABLE ONLY public.web_pages_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_pages_plugins_id_seq'::regclass);
 C   ALTER TABLE public.web_pages_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    248    247            �           2604    32186    web_plugins plu_id    DEFAULT     x   ALTER TABLE ONLY public.web_plugins ALTER COLUMN plu_id SET DEFAULT nextval('public.web_plugins_plu_id_seq'::regclass);
 A   ALTER TABLE public.web_plugins ALTER COLUMN plu_id DROP DEFAULT;
       public       
   osbustaman    false    250    249            �           2604    32187    web_social_network sn_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network ALTER COLUMN sn_id SET DEFAULT nextval('public.web_social_network_sn_id_seq1'::regclass);
 G   ALTER TABLE public.web_social_network ALTER COLUMN sn_id DROP DEFAULT;
       public       
   osbustaman    false    254    251            �           2604    32188 !   web_social_network_company snc_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network_company ALTER COLUMN snc_id SET DEFAULT nextval('public.web_social_network_sn_id_seq'::regclass);
 P   ALTER TABLE public.web_social_network_company ALTER COLUMN snc_id DROP DEFAULT;
       public       
   osbustaman    false    253    252            �           2604    32189    web_team tm_id    DEFAULT     p   ALTER TABLE ONLY public.web_team ALTER COLUMN tm_id SET DEFAULT nextval('public.web_team_tm_id_seq'::regclass);
 =   ALTER TABLE public.web_team ALTER COLUMN tm_id DROP DEFAULT;
       public       
   osbustaman    false    258    255            �           2604    32190    web_team_social_network tsn_id    DEFAULT     �   ALTER TABLE ONLY public.web_team_social_network ALTER COLUMN tsn_id SET DEFAULT nextval('public.web_team_social_network_tsn_id_seq'::regclass);
 M   ALTER TABLE public.web_team_social_network ALTER COLUMN tsn_id DROP DEFAULT;
       public       
   osbustaman    false    257    256            �          0    32046 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       
   osbustaman    false    214   �"      �          0    32050    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       
   osbustaman    false    216   �"      �          0    32054    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       
   osbustaman    false    218   #      �          0    32058 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       
   osbustaman    false    220   &      �          0    32063    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       
   osbustaman    false    221   �'      �          0    32068    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       
   osbustaman    false    224   �'      �          0    32072    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       
   osbustaman    false    226   �'      �          0    32079    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       
   osbustaman    false    228   p8                0    32365    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   osbustaman    false    260   19      �          0    32089    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       
   osbustaman    false    230   �:                 0    32094    web_block_home 
   TABLE DATA           �   COPY public.web_block_home (created, modified, bh_id, bh_name, bh_order, bh_html, bh_active, bh_image, bh_defaultpage, bh_title) FROM stdin;
    public       
   osbustaman    false    231   1=                0    32100    web_block_home_plugins 
   TABLE DATA           N   COPY public.web_block_home_plugins (id, blockhome_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    233   	G                0    32104    web_carrousel 
   TABLE DATA           �   COPY public.web_carrousel (created, modified, carr_id, carr_title, carr_downloadtext, carr_isbutton, carr_nameimage, carr_image, carr_isactive, carr_buttontext, carr_linkbutton) FROM stdin;
    public       
   osbustaman    false    235   ^G                0    32110    web_company 
   TABLE DATA           �   COPY public.web_company (created, modified, com_id, com_namecompany, com_nameimagecompany, com_imagecompany, com_nameimagecompanyicon, com_imagecompanyicon, com_title, com_address, com_phone, com_mail, com_sitename, com_textfooter) FROM stdin;
    public       
   osbustaman    false    237   OH                0    32116 	   web_items 
   TABLE DATA           �   COPY public.web_items (created, modified, it_id, it_name, it_link, it_pagetype, it_order, it_active, it_menu_id, it_lincactive) FROM stdin;
    public       
   osbustaman    false    239   �I      
          0    32122    web_menu 
   TABLE DATA           g   COPY public.web_menu (created, modified, me_id, me_name, me_hasasearchengine, me_isactive) FROM stdin;
    public       
   osbustaman    false    241   �J                0    32126    web_other_links 
   TABLE DATA           j   COPY public.web_other_links (created, modified, ol_id, ol_name, ol_link, ol_order, ol_active) FROM stdin;
    public       
   osbustaman    false    243   K                0    32132 	   web_pages 
   TABLE DATA           �   COPY public.web_pages (created, modified, pag_id, pag_title, pag_backgroundimage, pag_active, pag_defaultpage, pag_html, pag_subtitle) FROM stdin;
    public       
   osbustaman    false    245   �K                0    32138    web_pages_plugins 
   TABLE DATA           E   COPY public.web_pages_plugins (id, pages_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    247   )P                0    32142    web_plugins 
   TABLE DATA           �   COPY public.web_plugins (created, modified, plu_id, plu_elementname, plu_icon, plu_title, plu_text, plu_isbox, plu_active, plu_image, plu_link, plu_linkactive, plu_page) FROM stdin;
    public       
   osbustaman    false    249   QP                0    32148    web_social_network 
   TABLE DATA           X   COPY public.web_social_network (created, modified, sn_id, sn_name, sn_icon) FROM stdin;
    public       
   osbustaman    false    251   xW                0    32151    web_social_network_company 
   TABLE DATA           m   COPY public.web_social_network_company (created, modified, snc_id, snc_name, snc_icon, snc_link) FROM stdin;
    public       
   osbustaman    false    252   X                0    32158    web_team 
   TABLE DATA           �   COPY public.web_team (created, modified, tm_id, tm_positioncompany, tm_issocialnetwork, tm_active, tm_user, tm_image) FROM stdin;
    public       
   osbustaman    false    255   �X                0    32161    web_team_social_network 
   TABLE DATA           �   COPY public.web_team_social_network (created, modified, tsn_id, tsn_link, tsn_active, tsn_social_network_id, tsn_team_id) FROM stdin;
    public       
   osbustaman    false    256   sY      ;           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       
   osbustaman    false    215            <           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       
   osbustaman    false    217            =           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public       
   osbustaman    false    219            >           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       
   osbustaman    false    222            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public       
   osbustaman    false    223            @           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       
   osbustaman    false    225            A           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 210, true);
          public       
   osbustaman    false    227            B           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public       
   osbustaman    false    229            C           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public       
   osbustaman    false    259            D           0    0    web_block_home_bh_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_block_home_bh_id_seq', 10, true);
          public       
   osbustaman    false    232            E           0    0    web_block_home_plugins_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_block_home_plugins_id_seq', 19, true);
          public       
   osbustaman    false    234            F           0    0    web_carrousel_carr_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_carrousel_carr_id_seq', 2, true);
          public       
   osbustaman    false    236            G           0    0    web_company_com_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_company_com_id_seq', 1, true);
          public       
   osbustaman    false    238            H           0    0    web_items_it_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_items_it_id_seq', 4, true);
          public       
   osbustaman    false    240            I           0    0    web_menu_me_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_menu_me_id_seq', 1, true);
          public       
   osbustaman    false    242            J           0    0    web_other_links_ol_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_other_links_ol_id_seq', 3, true);
          public       
   osbustaman    false    244            K           0    0    web_pages_pag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_pages_pag_id_seq', 5, true);
          public       
   osbustaman    false    246            L           0    0    web_pages_plugins_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_pages_plugins_id_seq', 3, true);
          public       
   osbustaman    false    248            M           0    0    web_plugins_plu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.web_plugins_plu_id_seq', 31, true);
          public       
   osbustaman    false    250            N           0    0    web_social_network_sn_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.web_social_network_sn_id_seq', 5, true);
          public       
   osbustaman    false    253            O           0    0    web_social_network_sn_id_seq1    SEQUENCE SET     K   SELECT pg_catalog.setval('public.web_social_network_sn_id_seq1', 5, true);
          public       
   osbustaman    false    254            P           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.web_team_social_network_tsn_id_seq', 7, true);
          public       
   osbustaman    false    257            Q           0    0    web_team_tm_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_team_tm_id_seq', 3, true);
          public       
   osbustaman    false    258            �           2606    32192    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         
   osbustaman    false    214                        2606    32194 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         
   osbustaman    false    216    216                       2606    32196 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         
   osbustaman    false    216            �           2606    32198    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         
   osbustaman    false    214                       2606    32200 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         
   osbustaman    false    218    218                       2606    32202 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         
   osbustaman    false    218                       2606    32204 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         
   osbustaman    false    221                       2606    32206 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         
   osbustaman    false    221    221            
           2606    32208    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         
   osbustaman    false    220                       2606    32210 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         
   osbustaman    false    224                       2606    32212 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         
   osbustaman    false    224    224                       2606    32214     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         
   osbustaman    false    220                       2606    32216 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         
   osbustaman    false    226                       2606    32218 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         
   osbustaman    false    228    228            !           2606    32220 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         
   osbustaman    false    228            O           2606    32372 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   osbustaman    false    260            $           2606    32224 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         
   osbustaman    false    230            '           2606    32226 "   web_block_home web_block_home_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_block_home
    ADD CONSTRAINT web_block_home_pkey PRIMARY KEY (bh_id);
 L   ALTER TABLE ONLY public.web_block_home DROP CONSTRAINT web_block_home_pkey;
       public         
   osbustaman    false    231            *           2606    32228 S   web_block_home_plugins web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq UNIQUE (blockhome_id, plugins_id);
 }   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq;
       public         
   osbustaman    false    233    233            ,           2606    32230 2   web_block_home_plugins web_block_home_plugins_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_pkey;
       public         
   osbustaman    false    233            /           2606    32232     web_carrousel web_carrousel_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_carrousel
    ADD CONSTRAINT web_carrousel_pkey PRIMARY KEY (carr_id);
 J   ALTER TABLE ONLY public.web_carrousel DROP CONSTRAINT web_carrousel_pkey;
       public         
   osbustaman    false    235            1           2606    32234    web_company web_company_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_company
    ADD CONSTRAINT web_company_pkey PRIMARY KEY (com_id);
 F   ALTER TABLE ONLY public.web_company DROP CONSTRAINT web_company_pkey;
       public         
   osbustaman    false    237            4           2606    32236    web_items web_items_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_pkey PRIMARY KEY (it_id);
 B   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_pkey;
       public         
   osbustaman    false    239            6           2606    32238    web_menu web_menu_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (me_id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         
   osbustaman    false    241            8           2606    32240 $   web_other_links web_other_links_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.web_other_links
    ADD CONSTRAINT web_other_links_pkey PRIMARY KEY (ol_id);
 N   ALTER TABLE ONLY public.web_other_links DROP CONSTRAINT web_other_links_pkey;
       public         
   osbustaman    false    243            :           2606    32242    web_pages web_pages_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_pages
    ADD CONSTRAINT web_pages_pkey PRIMARY KEY (pag_id);
 B   ALTER TABLE ONLY public.web_pages DROP CONSTRAINT web_pages_pkey;
       public         
   osbustaman    false    245            =           2606    32244 E   web_pages_plugins web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq UNIQUE (pages_id, plugins_id);
 o   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq;
       public         
   osbustaman    false    247    247            ?           2606    32246 (   web_pages_plugins web_pages_plugins_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pkey;
       public         
   osbustaman    false    247            B           2606    32248    web_plugins web_plugins_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_plugins
    ADD CONSTRAINT web_plugins_pkey PRIMARY KEY (plu_id);
 F   ALTER TABLE ONLY public.web_plugins DROP CONSTRAINT web_plugins_pkey;
       public         
   osbustaman    false    249            F           2606    32250 2   web_social_network_company web_social_network_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.web_social_network_company
    ADD CONSTRAINT web_social_network_pkey PRIMARY KEY (snc_id);
 \   ALTER TABLE ONLY public.web_social_network_company DROP CONSTRAINT web_social_network_pkey;
       public         
   osbustaman    false    252            D           2606    32252 +   web_social_network web_social_network_pkey1 
   CONSTRAINT     l   ALTER TABLE ONLY public.web_social_network
    ADD CONSTRAINT web_social_network_pkey1 PRIMARY KEY (sn_id);
 U   ALTER TABLE ONLY public.web_social_network DROP CONSTRAINT web_social_network_pkey1;
       public         
   osbustaman    false    251            H           2606    32254    web_team web_team_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_pkey PRIMARY KEY (tm_id);
 @   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_pkey;
       public         
   osbustaman    false    255            K           2606    32256 4   web_team_social_network web_team_social_network_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_pkey PRIMARY KEY (tsn_id);
 ^   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_pkey;
       public         
   osbustaman    false    256            �           1259    32257    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         
   osbustaman    false    214            �           1259    32258 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         
   osbustaman    false    216                       1259    32259 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         
   osbustaman    false    216                       1259    32260 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         
   osbustaman    false    218                       1259    32261 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         
   osbustaman    false    221                       1259    32262 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         
   osbustaman    false    221                       1259    32263 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         
   osbustaman    false    224                       1259    32264 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         
   osbustaman    false    224                       1259    32265     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         
   osbustaman    false    220                       1259    32266 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         
   osbustaman    false    226                       1259    32267 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         
   osbustaman    false    226            "           1259    32268 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         
   osbustaman    false    230            %           1259    32269 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         
   osbustaman    false    230            (           1259    32270 ,   web_block_home_plugins_blockhome_id_5e9ed5eb    INDEX     w   CREATE INDEX web_block_home_plugins_blockhome_id_5e9ed5eb ON public.web_block_home_plugins USING btree (blockhome_id);
 @   DROP INDEX public.web_block_home_plugins_blockhome_id_5e9ed5eb;
       public         
   osbustaman    false    233            -           1259    32271 *   web_block_home_plugins_plugins_id_9347a0b4    INDEX     s   CREATE INDEX web_block_home_plugins_plugins_id_9347a0b4 ON public.web_block_home_plugins USING btree (plugins_id);
 >   DROP INDEX public.web_block_home_plugins_plugins_id_9347a0b4;
       public         
   osbustaman    false    233            2           1259    32272    web_items_it_menu_id_40487ca7    INDEX     Y   CREATE INDEX web_items_it_menu_id_40487ca7 ON public.web_items USING btree (it_menu_id);
 1   DROP INDEX public.web_items_it_menu_id_40487ca7;
       public         
   osbustaman    false    239            ;           1259    32273 #   web_pages_plugins_pages_id_6fd9e884    INDEX     e   CREATE INDEX web_pages_plugins_pages_id_6fd9e884 ON public.web_pages_plugins USING btree (pages_id);
 7   DROP INDEX public.web_pages_plugins_pages_id_6fd9e884;
       public         
   osbustaman    false    247            @           1259    32274 %   web_pages_plugins_plugins_id_5f64dae2    INDEX     i   CREATE INDEX web_pages_plugins_plugins_id_5f64dae2 ON public.web_pages_plugins USING btree (plugins_id);
 9   DROP INDEX public.web_pages_plugins_plugins_id_5f64dae2;
       public         
   osbustaman    false    247            L           1259    32275 6   web_team_social_network_tsn_social_network_id_5e2fd632    INDEX     �   CREATE INDEX web_team_social_network_tsn_social_network_id_5e2fd632 ON public.web_team_social_network USING btree (tsn_social_network_id);
 J   DROP INDEX public.web_team_social_network_tsn_social_network_id_5e2fd632;
       public         
   osbustaman    false    256            M           1259    32276 ,   web_team_social_network_tsn_team_id_681327ee    INDEX     w   CREATE INDEX web_team_social_network_tsn_team_id_681327ee ON public.web_team_social_network USING btree (tsn_team_id);
 @   DROP INDEX public.web_team_social_network_tsn_team_id_681327ee;
       public         
   osbustaman    false    256            I           1259    32277    web_team_tm_user_9116ee8c    INDEX     Q   CREATE INDEX web_team_tm_user_9116ee8c ON public.web_team USING btree (tm_user);
 -   DROP INDEX public.web_team_tm_user_9116ee8c;
       public         
   osbustaman    false    255            P           2606    32278 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       
   osbustaman    false    3592    218    216            Q           2606    32283 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       
   osbustaman    false    216    3581    214            R           2606    32288 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       
   osbustaman    false    3617    228    218            S           2606    32293 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       
   osbustaman    false    214    3581    221            T           2606    32298 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       
   osbustaman    false    220    221    3594            U           2606    32303 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       
   osbustaman    false    218    3592    224            V           2606    32308 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       
   osbustaman    false    220    224    3594            W           2606    32313 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       
   osbustaman    false    226    3617    228            X           2606    32318 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       
   osbustaman    false    3594    226    220            Y           2606    32323 N   web_block_home_plugins web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block FOREIGN KEY (blockhome_id) REFERENCES public.web_block_home(bh_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block;
       public       
   osbustaman    false    231    233    3623            Z           2606    32328 L   web_block_home_plugins web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi;
       public       
   osbustaman    false    3650    233    249            [           2606    32333 9   web_items web_items_it_menu_id_40487ca7_fk_web_menu_me_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id FOREIGN KEY (it_menu_id) REFERENCES public.web_menu(me_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id;
       public       
   osbustaman    false    239    241    3638            \           2606    32338 I   web_pages_plugins web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id FOREIGN KEY (pages_id) REFERENCES public.web_pages(pag_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id;
       public       
   osbustaman    false    245    247    3642            ]           2606    32343 M   web_pages_plugins web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id;
       public       
   osbustaman    false    249    3650    247            _           2606    32348 W   web_team_social_network web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia FOREIGN KEY (tsn_social_network_id) REFERENCES public.web_social_network(sn_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia;
       public       
   osbustaman    false    256    251    3652            `           2606    32353 V   web_team_social_network web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id FOREIGN KEY (tsn_team_id) REFERENCES public.web_team(tm_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id;
       public       
   osbustaman    false    3656    256    255            ^           2606    32358 2   web_team web_team_tm_user_9116ee8c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id FOREIGN KEY (tm_user) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id;
       public       
   osbustaman    false    3594    220    255            �      x������ � �      �      x������ � �      �   �  x�u�[��0���U��Qõ}�miĴQ��
�u��$6�7&?�����O��-i�{��y|g���eK�r}���+
�"�x�5�[������*����f���7)H����H�[I}�%��=G�������qx=M�ٺ��q�E���!9��Q
���YP��hr�>Z���)J�#P��	��(����1X���C?/UK��ӛ�ֺc�Y
��$H��kÓ>ɧ�(sC�\ź�z�X��ʦ��!�Sn����z�@U@�ӯ��u��'�ڦ����Q�s�򯋨���E�"*�=��m�TdX���L�-aNו�PR�RYN����D�Oõ�ۤ���0~�6i�f�>��:G��G�Y�v����k>v�0?���M�=�en�� [�c3�@��K\��'��E�l`-��=��_��]�>�\5�I�g� AH�v�8h�h�f�ݢ�X�\�H H 1�7C�MA������<����v�[���$i���8���(�`�g��7��)x?���3ķ's��7's���&3����� oX�BY= �����`Ja�@��G'Ͼ��[`}��r2�I��L� $��9�c�8�_a���1~ey<�D��X�����x�ޔ�8;�ϡ�/��jg�W��o^3vgx县rM��Uz�]k���2夏�s0�&/ߺl'U�n�]l��-��.�;wr�Yu��/k��S&z      �   y  x����N�@F�ӧp���a�Jb�%TJ��T3��� 34-O/�Ƹ�xw��79�C��v���� E�*#dAg�7�21J2�0�O�iV3�R��ރV��A|]{����;w_��Ҍ���߀lA�iۦx�+	X~-��&E�薋1��_��䱤��r�.+���ɿK&���6�i6]Yk��?
���p����l{���74��f��O��]�B����Y�8K�YM������'`�s���D��'O���恻ȫ���5;�ٷ��d"$���𪟼���G�hɡ���#��U[Z}��o�`��7Q=��CIT%E�� �(�:�IEj0g{R&L�O��g$FߑX�f)��J�g%�A �T�E�F�_��      �      x������ � �      �      x������ � �      �      x��\ےI�}���4=�$q��&͎�$� �bk�U�RBufO]f0>�G���غGDugEdf]�d``�HL����k�	&����|.�\��8+�����u���f[�W�L����OU��^��{q�ԫ���/�m֛m�V����*^����������|%I��+�qZ� �ݲi�ww[�G�S-�A
X�)��s]�F�`j��w�ͺhuK[���h]�LU"�\Bi�uN�p Q�͙+�i�$��]��o�����@�  ��_/go���5�zd�I��9g�C���u���q]ݏ,��r!J!�KA0��S�����.YO7.J&���Ư�����s��\@���� 1� 䜛9S%��<Uӓ���y�H��+(��������?��vŲ.n�?U�*����d�gN��e�*��������n�b����6��0W�t�Rv\��5z�m�-7�?w?&��|����c���U���n���;��'���O�m"-xi�����t������4ۦ��b��T�<��-m鄵�����=��v�<T��AcA^g)���7��N|���C�-��r�Gk-"�\��E�g�9�Ԩ:�X������v�m�����f�t�Q0���)�;Y��V�m�N���ͅ-�f�#7?o?uC<�$� ���(�$�Lv����j��V��Nr��F����]n��9C�P%3�	1�ǭ��E������\�	��Jb\"9]��i g�R0ٻ�C��dG�%蠉��3,>��V����YH؈�S;��ڡ�$S�����7����*|,�eɝ0p6,2V��Q�����AUg5�70%g_�����2��3�X���-1�p���m�}jO�σ7)� ����>�~�MWIb[.�2��m�
��z��Ƿ��"��_r$�Rp5g�4>Z�lp��+�~�1�	�~Ij@(�U������u�ne[�GoM��@B�\*�Up)�-z8��� "(F���
��5���cq������t	ו�90F�~�Cz]��&J��?��}@?��wm31x�Lu�\��:]�E��#,�tX� -+��4����L�����1��oݢC�LO���T��q�Sjz�m��q_����T2�5s�0��t���l9�����eo�٢RK��D��,#�@
R�����4>�-K5��a��1�0�!ao}��^r�t�ʣ���T�%_�T���	/�Vp����ʡ��ҊS�1�t)&�!�}���ݛw��w�~���o^��(�y���]����dOI@�&`�lB�t�HV�5�]kcNA�T8F��X\�}>~�Vo����c�V�C�FE���9Fn�R
�G���թ#�|ޭ��
�<@RP�����1u)�b��އj]O&=j��F��t�2w_b��@�NY%8s'�����h�.�q-O��KE�\4W����s:�_*ݦ�1eDg%�hǔ����
I�S��t��h��U��,Q�'�;j�Sgq�Y,E�褢����ZJ3�4��~��@uo�r0���&�<���ͺ��7M�V�z����RI&y���)���A��9��R1S\�mլ�+'6sH4�W�5)�v�"j|䴄~��W;|�M�I�J���%�o�T0��R���.w�<zdH��w�\2�5<cx��?�(�N���{�W���Z/��7m���(�Iq�R'-��cO�	���h��JP�T�zU��Y�k��
�{��N������@��q����埈M�eY�m�c�>�fo�bSܭ�e�,�m�n?�s�,�n��H<R:6��p������έHA	���.(eϓ���
��7��x_��ϒ2up��1m��(�^o)��4&L+3����Re���d��r���4�-�x}�v�����7 +����ħ�I��[�����INɍ$;�[|��%إ̇��,���]o)Y
_ߦ�Ͼj����U�i6����Q�KIK�Ʒ528b�g��7�zݭ�>�oG�R�A$E��	�_�GU+���v<�r)�A�����Q����wŻL���V�f���R� ,`4���"/�;�2�P�h�D�.�����C�.k�-J�)�*>u�j�.R�@lc��`�}[c�Q�W[�w������4���s;:z�fU�W�S.�v�[m�u��U�v�g���.�Z�^��H+K�IΝ���ibȖZ�00t��������pB:�A�@�x'����~H��� �^`F�L�I��b���2�p4�$��9C���BR[Q��Z�ׁ�l@]������4R���و� ��(:A���B��g~�v�� *�`RMY�ľ ��dL���jV
F����g6��z�3R�z<�K!����*(4ӧ�,GP�M�$W>>�d���������H ���* �)�|�*J���J��a�t��W9<��JXx���(������
���M�ѱ9��t
!�'2���G'#��1�Ae1������`İ9��]��<���aq9Q���'�s���n�B��R�]j���x���4���=������[�_Ή�"���t�v���e�H�'#����G5B�	�
`j LS/u��]�Q�L�=���8����7�'-Sv7g��J ĪY��¥z/���kj����g���_���)BW*Ɍ���"��c��\����
YC�/vp�r���Y=��|�4u<}hĤ5��	������Hy`�4���dh����O���y��=8��~d�0% ��n��=Q�?O�J%;j�1a�H{�E�r	԰��d��Q�#$��+t��~��j�L*��3E)\��6�t�&h�}m�ǌ�<'��ҥ�r��`f�Oė��X
H�EE��y@;A+��mq���⇱����SL7$ n�$�=+���O�vS=<���T2��J�w��~db�?��)���4����J)��P��
��I�m��4�{���9� E�t�0��2>_���xQ��tW�X ��g�Ӎ4��e�����JM��Oq�:�Rǋj�|$��L#���A��ɊrX�	j��1Pe����|���k�� �&"|�9������k���ЖR��!�����)m��1� `�9� �� �	`�ˢ s �K)��� @���:�֩P� �8 � �<
�E.��F�3�� �sp�ys��z�R 8��Τ �����"@����"xL��� �{"kè9�
`G��l �i+`ԏ n�PK��8����X������żi�3k�bRɱJ�o�0"O��{r�jUL��C ��9�M�q2����1�y��tL��uZ���DW�1�/�����7��GK�\C����c��������3�Ơ�u4Z�{#ߍ����3N��D�JԾ�d�u�ĳZ|\�|���Z��m�u��K�|W�f-�S�����a#(�p�i}Fq�6c-˧�%ĵv�v�I���QA�q{�������v5Bh�ۚ�^w��LjݱΪ��J�OnR3��F��6�;�f��	S�Ŝ�A)��v��/85T���F�˞�4��%JN�'��^�xflSC��J���%}Rް*5?��:����x���Ħ�-M�~�F_�籶MYA�1$�2#+|	���Oy��m�B����Ǚ���\P��%�2|�r��OL��b:�`��nyZ\J-�bӥ3��]jJ+���?	�����B�R����&���y�(��Y��8N_���� �����\ډ\$>�8��he�y"e.�*f�t]�T�T*�!�9��<O�!i �{�#Z{!��`��<��E�c�ڄ��>x�`���췻��T-�����7�fY���t����3�T��5���RN��sd�T&�����c�g�2�	w.��uV8�u�w_��ד8�X*�����8����Iк���g=�(_J/1̌�ݳOv�4�`"l(��d�)yٍ4G��$���{��S۔�?�e��;����)cw�g�:�(N��*)���$�J4�c4g:��Wy��M�ڬ75��
 �   ��SC�ÂQ��������{}d��6�K��$E�P��2���W�'�4�z�o_�;�Ke��Li���ef7�zC��x�E��_-�j�gd&G6ПT�o��5��a��>����?m��x�T�����;���ꫯ�X���      �   �   x�e��!E��c����7�CZB!f�^�h��sOn��yDO*�C*y�I�Z�0G/�`��\T�Ge�J��-�|��`_�;�Y=���`��`���zߑ˂9xZ��MD����}�����خG}�E
�yj�8�8lp�P�D��(l�	���y��?�;З��W�v ��Qh�         �  x���]n� F��Ut�������P	�N��qI�Ɗ_x����|�Н��̔�e6�C���MV�#L���� yc⍑W�9g�����>�$�$P����N{"�'�D�-���C4\T0��4*��+}>?fĮ����9��)Y?�w�u����<fa���/]�g�uC�5��l�p/*�o���.��fFc��ը��3Ӑ�z��HЂEV��bFm�s
���#��S�R��s����� jv�p:����-n�t"��� �g�����]iIAT��~��(��ٳN>�ھ	�5���U|6��E�p⡝g�)f�j�H�}��^u��5��;1,W_1�a@-sVd�����Fn��p���f���z�a���d��D����
*�_���wOBҞ�ğ����b�e�      �   A  x���I��@ ��u<Ż �ͰC|��8b��b�Qh���T*9C��򫿚p�a:m�)���"�k��8%��yl���&��igwϭ��}(���a��y觜��b�QF��̝j*H̛0rݳ�����%^�<��������{6��$L����0'6�R�����(Y����U��� ,=�NE�{�9c�\�������e�k/)��0�%���Z�/�Y�����pDW��Kf1ܧ�[����49ܯ��\�0��\$?^9q��!�*B*s,Ȓ�U�P�Si��`<P��XySI1+B��j�e5iwǱ�z�k ٯ;�6�a?�6��RZdm.�T��U��Ӆ�>����e��\��E�Ө=��h�ejt!Z��7G7�Fy ޢO��'WU��K��i��-��	r��Q��������p)5���-���'Fɷ$u$�,oL续bۡ�8F:m� �o2E��wr��f8���� Q�y(s���o)�pj�r,�J/�m�^�c���YjR�H=:�w�ܡ,R#�S�9��Ԋl`0���p��R��	aU�<��S?���܅$+          �	  x��ZK��>˿���/qk����2�~`��u&;�,�nJ��n�I����h9���T��%���h�ر�95�,�_=X|�~y~�1��8H�q�K�h�=?�mkA0��h��G�p�Z��SUX�ZV(����й���,�K�A*�s�,d���O�x_-YFX0,�IE1�w�d�?UރgD�o;R�!=�1*���2V�� �h>����BdUa�Bɪ���se��k|U�6D-=�� �@&X�w��MYIa�Ƽ g�ќzp�\�����C���f�D�,�6(z�'�t�N����^�#;�M�X*>�^�\3+�c8+,����XG�Z!5r/��m2��$&ۺ��I4��6�qD���_+e9~O��y�~�[����8��������LV"�����ʥ����������ϱ���Qzr�v[�)�)�^�B��*<�%bu�z੫��J�t]$�����O���`�����G�=����1�I���˺ͯ��� ���~���ym��
%�qj&���|P*Yl�Z�%\
��1,T��J���;Ȕ�h��*y�P�T��v߭�|�����Ť��@H��r�o����z�w�νR��z�r!�l�"MK�UUd<낱K�u\�v��˫�hu�]�rwr�������V/^�S&%y3�Kp��i���~B'�G��h~�MCÞhr2/�}(]�q`�=S:�����;9E�t�$A@�.K����v�drxvG��9�H^=?��SU�V���٣n[�N�]	��9�"� Y�:]0Y��:
n�	�4�M4њ&Z���I+��",�F�D������;��΢��זp�D���+��"������U��]��~/��؏���}�q����A0pkv�yErk�w5�Ӳ�^�[D?������c�c�e %5��
D9�����PZ�@t`��¼�E�2��s�KBU�
���K(�6����e�@�4F�

>WH�JXeԶ��.����`_z�����-v�s�w�ƋLi*9���O��:1ګ#������-�Rz)�H�~��'���� �ρI������.��4TA�m9����£����⣨����GQ��E5j��P i,��Q/�'�Q�7�G��C�Z�״<�L�h��s������i����.0��K����)[����gb��2�Ɠc����ʮeXW��T�B�Q��GI�q	���g��Uy��ri)>\���6<��hs����)A��$�h߇R�xRc�X�����1���i5�Ƹ���9&,]س4A7�f�aݎ@2ă?@����X���X����i�����K�kR�ή6+>n�p�L_��;=~z����M�1���z<"A��[nϒB̃����&�~�Fq�u�Y�������Un>?�|�7���hm0.�f3?s�-��{.K�������Q������`�h0;���gR]z�e�X�X��޼�eȺs>����q�K::����m��ֵ�L2�{�v��������_TR^w���7�X}�V��Gj_��;-|Z��B-��`��}q���p4���ุ�z�Q���3�|'�?�?�����GF	�����B��^ph��h+R��4�U��vh�)c?�2�Q����U{��.�#�:�a_��"�r�d��<�eɦF��҅d���
��n�s8U��Vt����>)�����|��L~�S�����йy��67*�;+4!�fp��jQ�3��d�z?�X� B?Nv�ֱ�W��eL+!3`pɧ8�]/�MFo�Eo�BW���c�V�%�)3|��؟h�� }����axg�wf��7����V3<"�����O��qҧwK�Q�F�7��8��a܋���+舂��2Y�t��:v^�+7��M����`���3 ��`F�8��_�9#�%+�%�c�psz�����7����k�]P��KV,���9��dVӐ��r��
V�e%#\!�<9�k�}l�
^��k�7�)�hX��Z�J~�}.�p�������vFt>4B�uk�IJ�O�~ݹc�i٢�tg���Mw򼀢����cM;�b�/��<{@ /f*e�+����ƸUы����ڭ��w6`|�k�੪��ĝ�"����b�|���
�G�b����t���Dc﫶[}iΖU�HN�?G��F�=�����F�ZI�@0���ǂ!Cj7�ޢ���y�6-D���l��")��	�
@���?����τ���_f�!�͎%�W5Wg�2VZw�π�h��e��gp�	�!�
��A���h��B(��V�r�jQd���jB	g�M�˖��&*�p ��Yw B���Š�θ�[p-'�@�D��I���29 sRt��E��2�%�	�%��Fp�S==zh���b��/A�7�[����yo���5����ں��f(Ï\)C��K&���޽���	��s-���{ӻw�� H�         E   x�˱� ���&/��]��9��J�b�����IŌM�b�fۅ2*Ԩn�m���|ѹ����         �   x�u�QJ�0���s���4i5�d}\��k�Mj��8�ŋ�euA�ǟ���4����@�q=)�V���F�O; Z��zT�v��\�x�"������̇Rg��Cz��!fX���L[H%G$xjE(����)���&�Z6�S��u9��T�I��֑U�-��$�[5j4w�V�b}Om���*����Ϗ5��|k�p��)Z�p��C��j���m���WR�/��e>         ]  x�m�ͮ�0���)f_H�C���+U����k�h$��qi����D�Jwg�s��7UӮ�nU����f��v嶭�~���E�t�P���߯�r�i�M7�u��R<�E
��c
�a���L�>����_���w������'N�!�.��x�)��-d0ΓU���f	�LQ�h �N�p��C��l�m�i�3�A|a��tJ�5���V�'xrhL9�e�$��d	�39#N�hi�d(�<�����(��ąQS4d��(�<�)�<��"z�f,ᛀ������bX�5S��I�l��t�!A�u {����<�(�<鎤Q��P��ďt�����b���Ʈ`         �   x�u�=R�0�k���mY���CCECK��HA<�=?����Fғ�'+e݈��v�v
V�BtWe�!"E��<!��Zx)LK���i7��Y�ʃQ�f�4��|U�)�=-�Y.�T���J-�^�!��1K:�s��b��f�GG�m@�H�\T���\�������R�l�����qЇ�yNXs� �1�����:x.��._�NJ߅p7Ļ��5�[�      
   P   x�3202�50�54Q00�21�2�г42�0��p!�Z�Z���YZ�Y�d9sS�J�2�3s8�8�b���� �L         k   x�}�;
�0E�z�
�:af2��@�� �tVڈ��Mv��0���4Ʉ�%e���4
�o%(ϵ��m���m4B�cR}�����ȑh|B7t�ja�wm�m�f�R/8)*�         �  x��V[n7���ɇ���<eYIF�:Hn0`PJ��!�|��w�5t���^rF�m9�?ψ���q�"+ʃ�>�kR��GiuT泣��J�auJ�j^W�*Og��a9��ϭ3ڒ3nւ	m�ێ�ͅh����-������N��U�'U��i�a��4��~B:n�VT�[�PK:j(��(���=�o��V��;��l^�i���z/�z�fU�g��29��Q��!���Ev��Xk�*�\qB��+J�V�KG'Di�x��~j(>�R̫z^iQ��t�fԧ�Ӽ�q�N�����/��OO:~v)/�X�?����Aϒ�Ev)��yu8�fi~�V8C��:=��2/q5O~f�0�"Ac���z4E�#�m$���7� T^����N,7�_�UDE3�v��F����x��oJZވ&���5���(Y�j'^���X�l���_{ND�yiA@I��l�\��^J�u���m&�HxÓe�a�r,(󎿄����J0xã�Z���h6b��Þ�x��4? ����vyp�)-�:n\A���%4�y(��̉5����ss����"�8����H$�_G����RЅ�H�,����NHgt�b�
v>*�
3?�:F�.LJ> �.���D�`��E����e�A��"U�@C��-{0:7�=�V�\�[0���P��lo�<��OTj�F�+&h�#p<x��	���
���|�A�@;�fPA����W��6Oj��^��ְl����*_�{y��� Ȳ��(
�(uoa`lkx��Qu����퍀Xuڅ��a ��mtJ�5e;��`kd���nb�c��>/[eO<E��'!֢�TN��{���Q
�Ъ��FC����������v!����aV��e( '�Y��78i �X�pI�"v`Q��kH,�wq�H�9�8��K���v��< ?�w^?�i���c3:��e�_ �&�����3t*�8h�P������^J�y��I�����wNLH�qX4b%Xs�|g��{`�,�Q�Gg<�?�#�ݻc, ���)7��'�]#������q���Kmĭ�hO(����v|E�pDA���"2��I�|���'X�6�fB�|f��?'�ڹ
����i{3:OG��7-�            x�3�4�44�2Q\1z\\\ �z           x��YKo�6>k~��%�$5��f� Hf0X�X`�-��̨)E'�?�C����l�HI���$��nۭ"����E�Ō�b�JI����2�I�dL�b��idw�,��_����w�v���;�5��qeݮ2�C��@��:�(�u��X%���I3������xlJYN���S<�`bB%�e�P����v��iRr��t��6�l��3�-n��;ӓ���IYWuK�mv��J�QĜ&�������#w���u��]�i`Q]���mI�o��ҚX�d��7�ݶ�Qr�m���Q_g{RZ�#Ä��(y_�aw?��N���	���h�E�`�.����v��Ў$(��[?ʑ�Hko��	���|;��m]��C����l98�5V���>���Ee{M�[��]���U{O9d��m��~��)*�ۏ���������O����"�/����'.��Wp�VX���m��(��d�7�F�#���A.f��j9L	~"����>�ʘ��rR��SW��3=|��9�m�1��-�/(�&��1��{ �aE��jЄ�#@��MUoW̷��δw���e�}ǐ$��᭓���s|z�1$v�D����J���$�F;]�i�4[wc�(nM�i�[؜�c(!h��R�T�����^]�z�A�m�1�����o���\RΤ��"\�Є1�}���ڶ e�/ƀf+�<�*���dQ����kjWt��!#��Jw�	r[�zBnMS�!�Sd��MӔeK�'�DF�;l������2����z	����Y�?G@J��*�O���Z��R�4�T�}�w�A-�j	�/R��diƈ�\\���T�Q%c��\���4�B�^�d�ԉ�4��5P�#��LU7fo�$����NC�8�}U��u���P\O�!�,�"9- ���qJ����t��H���3j���y��N7�H���KX��}ӭ//uc�	B���oޥ�*�]~��0����1�����H�CIr~(I�����1DL��Si�x�<{�),|��"ޱ�!?�ǟ�9��o�0�G���<	�q���ēx�Zr��L�E�#�@4yM>��㐚A׎�ő�X*O��S����0�gK�;�*�K��O��1�'��XEϏ�\�<�y��ˣ���m[W�2��)m9�ͷ�T�oj/�����2:��G�)Zogx�c��9s��@I�F�wS��0�_�G���Sy���g
-r��b������0PA�B��'�	����B�)l�	Au����� ��rT<��|��X��k4nT��3���_Q^MHԃ2�Wң������/���1���.��?L��C杘%G�!�>ь��}��?S-?yN�?�) ���̜�GSN�8��Qŉ�3O��Ƿ7�L����f/�A=nPO�<����%<�飻p	"<�汈e�+��kpdo��_���#B�\��$
Pu)�J�!]�ܘֆ[
�5~W�=O�ĠC�k�g8��>�Л��1�
wh��L���ϐ���
g��ά�)k�Otq�\�m�2�M��l���>�ÿ�]M�`�t���z�c<:���-(mg��Kl�h�ï[@�x��m��q�0�3J�M�F�+�l��i�d�\3F���4�> S�c���3�9�m�O�-O��oz�~h-�� ~hGO�����]����y�^==�\B��S�b�̥�<�2�o(�95��b�7V�Tf�鵿C��ߊ���:(Q��-��Ͽh�f"����z̠��Mow����jt��>4�#}����aA�         �   x�}�A� @��p
/P��0t�,nZEC�4�4�ۻnK\��G��sҡ�P"a����B�<�ߊP?�ִ ��I��5P��W��4��t����=�6�Mex�2�[.�G��*��؄6�C.�:<���(�ؠ�*MiS��Z�1���5�� ��L�         �   x�}��
1E��W�	�;������&j����5��R�`w�\\0D��V6��<�`;���[��K<��Tq�Vc��s�k����!�)^S��J�Ѳ�kt>��}~�p_£r�����XO�W*%.dk�d�RoD	<h         �   x�m�K�@�5��Pg���Y�X�L�A3@����^LW$���'�ע@*�*�*$;��h!�Rp����Cm��ۘ��:�䃯��8�������Sa�����6����P<�6�v�^jcR$T���=��|Y�1)`J�N1�N
L�����Rv�����/�%!�B7���8�N�         �   x�}�1!D�z9E��X��!�Y����
Q�����'y�raV>����&�JX.~�ߪ��zvh��g�R;�Ce�SA���z*[�T<R\��5T��S�n
�*����\�]�5D�Z�*�+}Ea�ʭ��*H����mX     