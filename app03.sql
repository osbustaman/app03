PGDMP     5                    {            app03    15.1    15.1    n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    32373    app03    DATABASE     g   CREATE DATABASE app03 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE app03;
             
   osbustaman    false            �            1259    32400 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 
   osbustaman    false            �            1259    32399    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       
   osbustaman    false    221            r           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       
   osbustaman    false    220            �            1259    32409    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 
   osbustaman    false            �            1259    32408    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       
   osbustaman    false    223            s           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       
   osbustaman    false    222            �            1259    32393    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 
   osbustaman    false            �            1259    32392    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       
   osbustaman    false    219            t           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       
   osbustaman    false    218            �            1259    32416 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
   osbustaman    false            �            1259    32425    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 
   osbustaman    false            �            1259    32424    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       
   osbustaman    false    227            u           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       
   osbustaman    false    226            �            1259    32415    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       
   osbustaman    false    225            v           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       
   osbustaman    false    224            �            1259    32432    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 
   osbustaman    false            �            1259    32431 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       
   osbustaman    false    229            w           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       
   osbustaman    false    228            �            1259    32491    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
   osbustaman    false            �            1259    32490    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       
   osbustaman    false    231            x           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       
   osbustaman    false    230            �            1259    32384    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 
   osbustaman    false            �            1259    32383    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       
   osbustaman    false    217            y           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       
   osbustaman    false    216            �            1259    32375    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   osbustaman    false            �            1259    32374    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   osbustaman    false    215            z           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   osbustaman    false    214            �            1259    32520    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 
   osbustaman    false                       1259    32653    web_block_home    TABLE     n  CREATE TABLE public.web_block_home (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    bh_id integer NOT NULL,
    bh_name character varying(100) NOT NULL,
    bh_title character varying(100) NOT NULL,
    bh_html text,
    bh_active integer NOT NULL,
    bh_ishtml integer NOT NULL,
    bh_orden integer NOT NULL
);
 "   DROP TABLE public.web_block_home;
       public         heap 
   osbustaman    false                       1259    32652    web_block_home_bh_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_bh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_block_home_bh_id_seq;
       public       
   osbustaman    false    264            {           0    0    web_block_home_bh_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_block_home_bh_id_seq OWNED BY public.web_block_home.bh_id;
          public       
   osbustaman    false    263            
           1259    32662    web_block_home_images    TABLE     �   CREATE TABLE public.web_block_home_images (
    id bigint NOT NULL,
    blockhome_id integer NOT NULL,
    image_id integer NOT NULL
);
 )   DROP TABLE public.web_block_home_images;
       public         heap 
   osbustaman    false            	           1259    32661    web_block_home_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.web_block_home_images_id_seq;
       public       
   osbustaman    false    266            |           0    0    web_block_home_images_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.web_block_home_images_id_seq OWNED BY public.web_block_home_images.id;
          public       
   osbustaman    false    265                       1259    32669    web_block_home_plugins    TABLE     �   CREATE TABLE public.web_block_home_plugins (
    id bigint NOT NULL,
    blockhome_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 *   DROP TABLE public.web_block_home_plugins;
       public         heap 
   osbustaman    false                       1259    32668    web_block_home_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_block_home_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.web_block_home_plugins_id_seq;
       public       
   osbustaman    false    268            }           0    0    web_block_home_plugins_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.web_block_home_plugins_id_seq OWNED BY public.web_block_home_plugins.id;
          public       
   osbustaman    false    267            �            1259    32530    web_carrousel    TABLE     �  CREATE TABLE public.web_carrousel (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    carr_id integer NOT NULL,
    carr_title character varying(50) NOT NULL,
    carr_downloadtext text NOT NULL,
    carr_isbutton integer NOT NULL,
    carr_linkbutton text,
    carr_buttontext character varying(10),
    carr_nameimage character varying(50) NOT NULL,
    carr_image character varying(100) NOT NULL,
    carr_isactive integer NOT NULL
);
 !   DROP TABLE public.web_carrousel;
       public         heap 
   osbustaman    false            �            1259    32529    web_carrousel_carr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_carrousel_carr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_carrousel_carr_id_seq;
       public       
   osbustaman    false    234            ~           0    0    web_carrousel_carr_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_carrousel_carr_id_seq OWNED BY public.web_carrousel.carr_id;
          public       
   osbustaman    false    233            �            1259    32539    web_company    TABLE     V  CREATE TABLE public.web_company (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    com_id integer NOT NULL,
    com_namecompany character varying(100) NOT NULL,
    com_sitename character varying(100) NOT NULL,
    com_imagecompany character varying(100) NOT NULL,
    com_imagecompanyicon character varying(100) NOT NULL,
    com_title character varying(150) NOT NULL,
    com_address character varying(255) NOT NULL,
    com_phone character varying(150) NOT NULL,
    com_mail character varying(150) NOT NULL,
    com_textfooter text NOT NULL
);
    DROP TABLE public.web_company;
       public         heap 
   osbustaman    false            �            1259    32538    web_company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_company_com_id_seq;
       public       
   osbustaman    false    236                       0    0    web_company_com_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_company_com_id_seq OWNED BY public.web_company.com_id;
          public       
   osbustaman    false    235            �            1259    32548 	   web_image    TABLE     g  CREATE TABLE public.web_image (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    img_id integer NOT NULL,
    img_name character varying(100) NOT NULL,
    img_code character varying(100),
    img_image character varying(100) NOT NULL,
    img_typeimage integer NOT NULL,
    img_description text NOT NULL
);
    DROP TABLE public.web_image;
       public         heap 
   osbustaman    false            �            1259    32547    web_image_img_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_image_img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_image_img_id_seq;
       public       
   osbustaman    false    238            �           0    0    web_image_img_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_image_img_id_seq OWNED BY public.web_image.img_id;
          public       
   osbustaman    false    237                       1259    32644 	   web_items    TABLE     w  CREATE TABLE public.web_items (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    it_id integer NOT NULL,
    it_name character varying(100) NOT NULL,
    it_link text NOT NULL,
    it_order integer NOT NULL,
    it_lincactive character varying(10) NOT NULL,
    it_active integer NOT NULL,
    it_menu_id integer NOT NULL
);
    DROP TABLE public.web_items;
       public         heap 
   osbustaman    false                       1259    32643    web_items_it_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_items_it_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.web_items_it_id_seq;
       public       
   osbustaman    false    262            �           0    0    web_items_it_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.web_items_it_id_seq OWNED BY public.web_items.it_id;
          public       
   osbustaman    false    261            �            1259    32557    web_menu    TABLE       CREATE TABLE public.web_menu (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    me_id integer NOT NULL,
    me_name character varying(100) NOT NULL,
    me_hasasearchengine integer NOT NULL,
    me_isactive integer NOT NULL
);
    DROP TABLE public.web_menu;
       public         heap 
   osbustaman    false            �            1259    32556    web_menu_me_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_menu_me_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_menu_me_id_seq;
       public       
   osbustaman    false    240            �           0    0    web_menu_me_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_menu_me_id_seq OWNED BY public.web_menu.me_id;
          public       
   osbustaman    false    239            �            1259    32564    web_other_links    TABLE     *  CREATE TABLE public.web_other_links (
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
   osbustaman    false            �            1259    32563    web_other_links_ol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_other_links_ol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_other_links_ol_id_seq;
       public       
   osbustaman    false    242            �           0    0    web_other_links_ol_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_other_links_ol_id_seq OWNED BY public.web_other_links.ol_id;
          public       
   osbustaman    false    241                        1259    32621 	   web_pages    TABLE     �  CREATE TABLE public.web_pages (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    pag_id integer NOT NULL,
    pag_title character varying(100) NOT NULL,
    pag_subtitle character varying(100) NOT NULL,
    pag_backgroundimage character varying(100),
    pag_html text,
    pag_active integer NOT NULL,
    pag_type_pages_id integer NOT NULL
);
    DROP TABLE public.web_pages;
       public         heap 
   osbustaman    false                       1259    32630    web_pages_images    TABLE        CREATE TABLE public.web_pages_images (
    id bigint NOT NULL,
    pages_id integer NOT NULL,
    image_id integer NOT NULL
);
 $   DROP TABLE public.web_pages_images;
       public         heap 
   osbustaman    false                       1259    32629    web_pages_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.web_pages_images_id_seq;
       public       
   osbustaman    false    258            �           0    0    web_pages_images_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.web_pages_images_id_seq OWNED BY public.web_pages_images.id;
          public       
   osbustaman    false    257            �            1259    32620    web_pages_pag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_pag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.web_pages_pag_id_seq;
       public       
   osbustaman    false    256            �           0    0    web_pages_pag_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.web_pages_pag_id_seq OWNED BY public.web_pages.pag_id;
          public       
   osbustaman    false    255                       1259    32637    web_pages_plugins    TABLE     �   CREATE TABLE public.web_pages_plugins (
    id bigint NOT NULL,
    pages_id integer NOT NULL,
    plugins_id integer NOT NULL
);
 %   DROP TABLE public.web_pages_plugins;
       public         heap 
   osbustaman    false                       1259    32636    web_pages_plugins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_pages_plugins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_pages_plugins_id_seq;
       public       
   osbustaman    false    260            �           0    0    web_pages_plugins_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_pages_plugins_id_seq OWNED BY public.web_pages_plugins.id;
          public       
   osbustaman    false    259            �            1259    32573    web_plugins    TABLE     �  CREATE TABLE public.web_plugins (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    plu_id integer NOT NULL,
    plu_elementname character varying(100) NOT NULL,
    plu_icon character varying(100),
    plu_title character varying(100),
    plu_text text,
    plu_linkactive integer NOT NULL,
    plu_link text,
    plu_active integer NOT NULL
);
    DROP TABLE public.web_plugins;
       public         heap 
   osbustaman    false            �            1259    32572    web_plugins_plu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_plugins_plu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.web_plugins_plu_id_seq;
       public       
   osbustaman    false    244            �           0    0    web_plugins_plu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.web_plugins_plu_id_seq OWNED BY public.web_plugins.plu_id;
          public       
   osbustaman    false    243                       1259    32782    web_request_web    TABLE     U  CREATE TABLE public.web_request_web (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    rw_id integer NOT NULL,
    rw_namecontact character varying(100),
    rw_phonocontact character varying(20),
    rw_mailcontact character varying(150),
    rw_mesagge text,
    rw_services_id integer
);
 #   DROP TABLE public.web_request_web;
       public         heap 
   osbustaman    false                       1259    32781    web_request_web_rw_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_request_web_rw_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.web_request_web_rw_id_seq;
       public       
   osbustaman    false    272            �           0    0    web_request_web_rw_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.web_request_web_rw_id_seq OWNED BY public.web_request_web.rw_id;
          public       
   osbustaman    false    271                       1259    32773    web_services    TABLE     �  CREATE TABLE public.web_services (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    serv_id integer NOT NULL,
    serv_name character varying(100) NOT NULL,
    serv_title character varying(100) NOT NULL,
    serv_subtitle character varying(100) NOT NULL,
    serv_icon character varying(100),
    serv_html text,
    serv_image character varying(100),
    serv_htmlshort text,
    serv_isactive integer NOT NULL
);
     DROP TABLE public.web_services;
       public         heap 
   osbustaman    false                       1259    32772    web_services_serv_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_services_serv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_services_serv_id_seq;
       public       
   osbustaman    false    270            �           0    0    web_services_serv_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_services_serv_id_seq OWNED BY public.web_services.serv_id;
          public       
   osbustaman    false    269            �            1259    32582    web_social_network    TABLE     �   CREATE TABLE public.web_social_network (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    sn_id integer NOT NULL,
    sn_name character varying(100) NOT NULL,
    sn_icon integer NOT NULL
);
 &   DROP TABLE public.web_social_network;
       public         heap 
   osbustaman    false            �            1259    32589    web_social_network_company    TABLE     �   CREATE TABLE public.web_social_network_company (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    snc_id integer NOT NULL,
    snc_link text NOT NULL,
    snc_social_network_id integer NOT NULL
);
 .   DROP TABLE public.web_social_network_company;
       public         heap 
   osbustaman    false            �            1259    32588 %   web_social_network_company_snc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_company_snc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.web_social_network_company_snc_id_seq;
       public       
   osbustaman    false    248            �           0    0 %   web_social_network_company_snc_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.web_social_network_company_snc_id_seq OWNED BY public.web_social_network_company.snc_id;
          public       
   osbustaman    false    247            �            1259    32581    web_social_network_sn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_social_network_sn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.web_social_network_sn_id_seq;
       public       
   osbustaman    false    246            �           0    0    web_social_network_sn_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.web_social_network_sn_id_seq OWNED BY public.web_social_network.sn_id;
          public       
   osbustaman    false    245            �            1259    32598    web_team    TABLE     `  CREATE TABLE public.web_team (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    tm_id integer NOT NULL,
    tm_positioncompany character varying(100) NOT NULL,
    tm_issocialnetwork integer NOT NULL,
    tm_image character varying(100),
    tm_active integer NOT NULL,
    tm_user integer NOT NULL
);
    DROP TABLE public.web_team;
       public         heap 
   osbustaman    false            �            1259    32612    web_team_social_network    TABLE     7  CREATE TABLE public.web_team_social_network (
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
   osbustaman    false            �            1259    32611 "   web_team_social_network_tsn_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_social_network_tsn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.web_team_social_network_tsn_id_seq;
       public       
   osbustaman    false    254            �           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.web_team_social_network_tsn_id_seq OWNED BY public.web_team_social_network.tsn_id;
          public       
   osbustaman    false    253            �            1259    32597    web_team_tm_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_team_tm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.web_team_tm_id_seq;
       public       
   osbustaman    false    250            �           0    0    web_team_tm_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.web_team_tm_id_seq OWNED BY public.web_team.tm_id;
          public       
   osbustaman    false    249            �            1259    32605    web_type_pages    TABLE     �   CREATE TABLE public.web_type_pages (
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    tp_id integer NOT NULL,
    tp_shortnamepage character varying(100) NOT NULL
);
 "   DROP TABLE public.web_type_pages;
       public         heap 
   osbustaman    false            �            1259    32604    web_type_pages_tp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.web_type_pages_tp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.web_type_pages_tp_id_seq;
       public       
   osbustaman    false    252            �           0    0    web_type_pages_tp_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.web_type_pages_tp_id_seq OWNED BY public.web_type_pages.tp_id;
          public       
   osbustaman    false    251                       2604    32403    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    220    221    221                       2604    32412    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    222    223    223                       2604    32396    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    218    219    219                       2604    32419    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    225    224    225                       2604    32428    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    226    227    227                       2604    32435    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    228    229    229                       2604    32494    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    231    230    231                        2604    32387    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    217    216    217            �           2604    32378    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    215    214    215                       2604    32656    web_block_home bh_id    DEFAULT     |   ALTER TABLE ONLY public.web_block_home ALTER COLUMN bh_id SET DEFAULT nextval('public.web_block_home_bh_id_seq'::regclass);
 C   ALTER TABLE public.web_block_home ALTER COLUMN bh_id DROP DEFAULT;
       public       
   osbustaman    false    263    264    264                       2604    32665    web_block_home_images id    DEFAULT     �   ALTER TABLE ONLY public.web_block_home_images ALTER COLUMN id SET DEFAULT nextval('public.web_block_home_images_id_seq'::regclass);
 G   ALTER TABLE public.web_block_home_images ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    266    265    266                       2604    32672    web_block_home_plugins id    DEFAULT     �   ALTER TABLE ONLY public.web_block_home_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_block_home_plugins_id_seq'::regclass);
 H   ALTER TABLE public.web_block_home_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    267    268    268                       2604    32533    web_carrousel carr_id    DEFAULT     ~   ALTER TABLE ONLY public.web_carrousel ALTER COLUMN carr_id SET DEFAULT nextval('public.web_carrousel_carr_id_seq'::regclass);
 D   ALTER TABLE public.web_carrousel ALTER COLUMN carr_id DROP DEFAULT;
       public       
   osbustaman    false    234    233    234            	           2604    32542    web_company com_id    DEFAULT     x   ALTER TABLE ONLY public.web_company ALTER COLUMN com_id SET DEFAULT nextval('public.web_company_com_id_seq'::regclass);
 A   ALTER TABLE public.web_company ALTER COLUMN com_id DROP DEFAULT;
       public       
   osbustaman    false    236    235    236            
           2604    32551    web_image img_id    DEFAULT     t   ALTER TABLE ONLY public.web_image ALTER COLUMN img_id SET DEFAULT nextval('public.web_image_img_id_seq'::regclass);
 ?   ALTER TABLE public.web_image ALTER COLUMN img_id DROP DEFAULT;
       public       
   osbustaman    false    238    237    238                       2604    32647    web_items it_id    DEFAULT     r   ALTER TABLE ONLY public.web_items ALTER COLUMN it_id SET DEFAULT nextval('public.web_items_it_id_seq'::regclass);
 >   ALTER TABLE public.web_items ALTER COLUMN it_id DROP DEFAULT;
       public       
   osbustaman    false    262    261    262                       2604    32560    web_menu me_id    DEFAULT     p   ALTER TABLE ONLY public.web_menu ALTER COLUMN me_id SET DEFAULT nextval('public.web_menu_me_id_seq'::regclass);
 =   ALTER TABLE public.web_menu ALTER COLUMN me_id DROP DEFAULT;
       public       
   osbustaman    false    240    239    240                       2604    32567    web_other_links ol_id    DEFAULT     ~   ALTER TABLE ONLY public.web_other_links ALTER COLUMN ol_id SET DEFAULT nextval('public.web_other_links_ol_id_seq'::regclass);
 D   ALTER TABLE public.web_other_links ALTER COLUMN ol_id DROP DEFAULT;
       public       
   osbustaman    false    241    242    242                       2604    32624    web_pages pag_id    DEFAULT     t   ALTER TABLE ONLY public.web_pages ALTER COLUMN pag_id SET DEFAULT nextval('public.web_pages_pag_id_seq'::regclass);
 ?   ALTER TABLE public.web_pages ALTER COLUMN pag_id DROP DEFAULT;
       public       
   osbustaman    false    256    255    256                       2604    32633    web_pages_images id    DEFAULT     z   ALTER TABLE ONLY public.web_pages_images ALTER COLUMN id SET DEFAULT nextval('public.web_pages_images_id_seq'::regclass);
 B   ALTER TABLE public.web_pages_images ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    258    257    258                       2604    32640    web_pages_plugins id    DEFAULT     |   ALTER TABLE ONLY public.web_pages_plugins ALTER COLUMN id SET DEFAULT nextval('public.web_pages_plugins_id_seq'::regclass);
 C   ALTER TABLE public.web_pages_plugins ALTER COLUMN id DROP DEFAULT;
       public       
   osbustaman    false    259    260    260                       2604    32576    web_plugins plu_id    DEFAULT     x   ALTER TABLE ONLY public.web_plugins ALTER COLUMN plu_id SET DEFAULT nextval('public.web_plugins_plu_id_seq'::regclass);
 A   ALTER TABLE public.web_plugins ALTER COLUMN plu_id DROP DEFAULT;
       public       
   osbustaman    false    244    243    244                       2604    32785    web_request_web rw_id    DEFAULT     ~   ALTER TABLE ONLY public.web_request_web ALTER COLUMN rw_id SET DEFAULT nextval('public.web_request_web_rw_id_seq'::regclass);
 D   ALTER TABLE public.web_request_web ALTER COLUMN rw_id DROP DEFAULT;
       public       
   osbustaman    false    271    272    272                       2604    32776    web_services serv_id    DEFAULT     |   ALTER TABLE ONLY public.web_services ALTER COLUMN serv_id SET DEFAULT nextval('public.web_services_serv_id_seq'::regclass);
 C   ALTER TABLE public.web_services ALTER COLUMN serv_id DROP DEFAULT;
       public       
   osbustaman    false    269    270    270                       2604    32585    web_social_network sn_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network ALTER COLUMN sn_id SET DEFAULT nextval('public.web_social_network_sn_id_seq'::regclass);
 G   ALTER TABLE public.web_social_network ALTER COLUMN sn_id DROP DEFAULT;
       public       
   osbustaman    false    246    245    246                       2604    32592 !   web_social_network_company snc_id    DEFAULT     �   ALTER TABLE ONLY public.web_social_network_company ALTER COLUMN snc_id SET DEFAULT nextval('public.web_social_network_company_snc_id_seq'::regclass);
 P   ALTER TABLE public.web_social_network_company ALTER COLUMN snc_id DROP DEFAULT;
       public       
   osbustaman    false    248    247    248                       2604    32601    web_team tm_id    DEFAULT     p   ALTER TABLE ONLY public.web_team ALTER COLUMN tm_id SET DEFAULT nextval('public.web_team_tm_id_seq'::regclass);
 =   ALTER TABLE public.web_team ALTER COLUMN tm_id DROP DEFAULT;
       public       
   osbustaman    false    250    249    250                       2604    32615    web_team_social_network tsn_id    DEFAULT     �   ALTER TABLE ONLY public.web_team_social_network ALTER COLUMN tsn_id SET DEFAULT nextval('public.web_team_social_network_tsn_id_seq'::regclass);
 M   ALTER TABLE public.web_team_social_network ALTER COLUMN tsn_id DROP DEFAULT;
       public       
   osbustaman    false    253    254    254                       2604    32608    web_type_pages tp_id    DEFAULT     |   ALTER TABLE ONLY public.web_type_pages ALTER COLUMN tp_id SET DEFAULT nextval('public.web_type_pages_tp_id_seq'::regclass);
 C   ALTER TABLE public.web_type_pages ALTER COLUMN tp_id DROP DEFAULT;
       public       
   osbustaman    false    252    251    252            8          0    32400 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       
   osbustaman    false    221   �s      :          0    32409    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       
   osbustaman    false    223   �s      6          0    32393    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       
   osbustaman    false    219   �s      <          0    32416 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       
   osbustaman    false    225   3w      >          0    32425    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       
   osbustaman    false    227   �w      @          0    32432    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       
   osbustaman    false    229   x      B          0    32491    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       
   osbustaman    false    231   *x      4          0    32384    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       
   osbustaman    false    217    ~      2          0    32375    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   osbustaman    false    215   �~      C          0    32520    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       
   osbustaman    false    232   Ё      c          0    32653    web_block_home 
   TABLE DATA           ~   COPY public.web_block_home (created, modified, bh_id, bh_name, bh_title, bh_html, bh_active, bh_ishtml, bh_orden) FROM stdin;
    public       
   osbustaman    false    264   g�      e          0    32662    web_block_home_images 
   TABLE DATA           K   COPY public.web_block_home_images (id, blockhome_id, image_id) FROM stdin;
    public       
   osbustaman    false    266   ��      g          0    32669    web_block_home_plugins 
   TABLE DATA           N   COPY public.web_block_home_plugins (id, blockhome_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    268   ��      E          0    32530    web_carrousel 
   TABLE DATA           �   COPY public.web_carrousel (created, modified, carr_id, carr_title, carr_downloadtext, carr_isbutton, carr_linkbutton, carr_buttontext, carr_nameimage, carr_image, carr_isactive) FROM stdin;
    public       
   osbustaman    false    234   ю      G          0    32539    web_company 
   TABLE DATA           �   COPY public.web_company (created, modified, com_id, com_namecompany, com_sitename, com_imagecompany, com_imagecompanyicon, com_title, com_address, com_phone, com_mail, com_textfooter) FROM stdin;
    public       
   osbustaman    false    236   ��      I          0    32548 	   web_image 
   TABLE DATA           }   COPY public.web_image (created, modified, img_id, img_name, img_code, img_image, img_typeimage, img_description) FROM stdin;
    public       
   osbustaman    false    238   �      a          0    32644 	   web_items 
   TABLE DATA              COPY public.web_items (created, modified, it_id, it_name, it_link, it_order, it_lincactive, it_active, it_menu_id) FROM stdin;
    public       
   osbustaman    false    262   ��      K          0    32557    web_menu 
   TABLE DATA           g   COPY public.web_menu (created, modified, me_id, me_name, me_hasasearchengine, me_isactive) FROM stdin;
    public       
   osbustaman    false    240   Z�      M          0    32564    web_other_links 
   TABLE DATA           j   COPY public.web_other_links (created, modified, ol_id, ol_name, ol_link, ol_order, ol_active) FROM stdin;
    public       
   osbustaman    false    242   ��      [          0    32621 	   web_pages 
   TABLE DATA           �   COPY public.web_pages (created, modified, pag_id, pag_title, pag_subtitle, pag_backgroundimage, pag_html, pag_active, pag_type_pages_id) FROM stdin;
    public       
   osbustaman    false    256   !�      ]          0    32630    web_pages_images 
   TABLE DATA           B   COPY public.web_pages_images (id, pages_id, image_id) FROM stdin;
    public       
   osbustaman    false    258   g�      _          0    32637    web_pages_plugins 
   TABLE DATA           E   COPY public.web_pages_plugins (id, pages_id, plugins_id) FROM stdin;
    public       
   osbustaman    false    260   ��      O          0    32573    web_plugins 
   TABLE DATA           �   COPY public.web_plugins (created, modified, plu_id, plu_elementname, plu_icon, plu_title, plu_text, plu_linkactive, plu_link, plu_active) FROM stdin;
    public       
   osbustaman    false    244   ��      k          0    32782    web_request_web 
   TABLE DATA           �   COPY public.web_request_web (created, modified, rw_id, rw_namecontact, rw_phonocontact, rw_mailcontact, rw_mesagge, rw_services_id) FROM stdin;
    public       
   osbustaman    false    272   ��      i          0    32773    web_services 
   TABLE DATA           �   COPY public.web_services (created, modified, serv_id, serv_name, serv_title, serv_subtitle, serv_icon, serv_html, serv_image, serv_htmlshort, serv_isactive) FROM stdin;
    public       
   osbustaman    false    270   ��      Q          0    32582    web_social_network 
   TABLE DATA           X   COPY public.web_social_network (created, modified, sn_id, sn_name, sn_icon) FROM stdin;
    public       
   osbustaman    false    246   "�      S          0    32589    web_social_network_company 
   TABLE DATA           p   COPY public.web_social_network_company (created, modified, snc_id, snc_link, snc_social_network_id) FROM stdin;
    public       
   osbustaman    false    248   ��      U          0    32598    web_team 
   TABLE DATA           �   COPY public.web_team (created, modified, tm_id, tm_positioncompany, tm_issocialnetwork, tm_image, tm_active, tm_user) FROM stdin;
    public       
   osbustaman    false    250   ��      Y          0    32612    web_team_social_network 
   TABLE DATA           �   COPY public.web_team_social_network (created, modified, tsn_id, tsn_link, tsn_active, tsn_social_network_id, tsn_team_id) FROM stdin;
    public       
   osbustaman    false    254   ��      W          0    32605    web_type_pages 
   TABLE DATA           T   COPY public.web_type_pages (created, modified, tp_id, tp_shortnamepage) FROM stdin;
    public       
   osbustaman    false    252   ��      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       
   osbustaman    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       
   osbustaman    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);
          public       
   osbustaman    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       
   osbustaman    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       
   osbustaman    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       
   osbustaman    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 65, true);
          public       
   osbustaman    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);
          public       
   osbustaman    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);
          public       
   osbustaman    false    214            �           0    0    web_block_home_bh_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_block_home_bh_id_seq', 2, true);
          public       
   osbustaman    false    263            �           0    0    web_block_home_images_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.web_block_home_images_id_seq', 1, false);
          public       
   osbustaman    false    265            �           0    0    web_block_home_plugins_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.web_block_home_plugins_id_seq', 1, false);
          public       
   osbustaman    false    267            �           0    0    web_carrousel_carr_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_carrousel_carr_id_seq', 2, true);
          public       
   osbustaman    false    233            �           0    0    web_company_com_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_company_com_id_seq', 1, true);
          public       
   osbustaman    false    235            �           0    0    web_image_img_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_image_img_id_seq', 1, true);
          public       
   osbustaman    false    237            �           0    0    web_items_it_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_items_it_id_seq', 4, true);
          public       
   osbustaman    false    261            �           0    0    web_menu_me_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.web_menu_me_id_seq', 1, true);
          public       
   osbustaman    false    239            �           0    0    web_other_links_ol_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_other_links_ol_id_seq', 3, true);
          public       
   osbustaman    false    241            �           0    0    web_pages_images_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.web_pages_images_id_seq', 1, true);
          public       
   osbustaman    false    257            �           0    0    web_pages_pag_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.web_pages_pag_id_seq', 3, true);
          public       
   osbustaman    false    255            �           0    0    web_pages_plugins_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_pages_plugins_id_seq', 2, true);
          public       
   osbustaman    false    259            �           0    0    web_plugins_plu_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.web_plugins_plu_id_seq', 2, true);
          public       
   osbustaman    false    243            �           0    0    web_request_web_rw_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.web_request_web_rw_id_seq', 6, true);
          public       
   osbustaman    false    271            �           0    0    web_services_serv_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_services_serv_id_seq', 2, true);
          public       
   osbustaman    false    269            �           0    0 %   web_social_network_company_snc_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.web_social_network_company_snc_id_seq', 4, true);
          public       
   osbustaman    false    247            �           0    0    web_social_network_sn_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.web_social_network_sn_id_seq', 4, true);
          public       
   osbustaman    false    245            �           0    0 "   web_team_social_network_tsn_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.web_team_social_network_tsn_id_seq', 1, false);
          public       
   osbustaman    false    253            �           0    0    web_team_tm_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.web_team_tm_id_seq', 1, false);
          public       
   osbustaman    false    249            �           0    0    web_type_pages_tp_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.web_type_pages_tp_id_seq', 4, true);
          public       
   osbustaman    false    251            *           2606    32518    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         
   osbustaman    false    221            /           2606    32448 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         
   osbustaman    false    223    223            2           2606    32414 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         
   osbustaman    false    223            ,           2606    32405    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         
   osbustaman    false    221            %           2606    32439 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         
   osbustaman    false    219    219            '           2606    32398 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         
   osbustaman    false    219            :           2606    32430 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         
   osbustaman    false    227            =           2606    32463 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         
   osbustaman    false    227    227            4           2606    32421    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         
   osbustaman    false    225            @           2606    32437 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         
   osbustaman    false    229            C           2606    32477 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         
   osbustaman    false    229    229            7           2606    32513     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         
   osbustaman    false    225            F           2606    32499 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         
   osbustaman    false    231                        2606    32391 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         
   osbustaman    false    217    217            "           2606    32389 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         
   osbustaman    false    217                       2606    32382 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   osbustaman    false    215            J           2606    32526 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         
   osbustaman    false    232            |           2606    32734 O   web_block_home_images web_block_home_images_blockhome_id_image_id_2c298d63_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_images
    ADD CONSTRAINT web_block_home_images_blockhome_id_image_id_2c298d63_uniq UNIQUE (blockhome_id, image_id);
 y   ALTER TABLE ONLY public.web_block_home_images DROP CONSTRAINT web_block_home_images_blockhome_id_image_id_2c298d63_uniq;
       public         
   osbustaman    false    266    266                       2606    32667 0   web_block_home_images web_block_home_images_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.web_block_home_images
    ADD CONSTRAINT web_block_home_images_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.web_block_home_images DROP CONSTRAINT web_block_home_images_pkey;
       public         
   osbustaman    false    266            y           2606    32660 "   web_block_home web_block_home_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_block_home
    ADD CONSTRAINT web_block_home_pkey PRIMARY KEY (bh_id);
 L   ALTER TABLE ONLY public.web_block_home DROP CONSTRAINT web_block_home_pkey;
       public         
   osbustaman    false    264            �           2606    32748 S   web_block_home_plugins web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq UNIQUE (blockhome_id, plugins_id);
 }   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_blockhome_id_plugins_id_f28ff95a_uniq;
       public         
   osbustaman    false    268    268            �           2606    32674 2   web_block_home_plugins web_block_home_plugins_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugins_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugins_pkey;
       public         
   osbustaman    false    268            M           2606    32537     web_carrousel web_carrousel_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_carrousel
    ADD CONSTRAINT web_carrousel_pkey PRIMARY KEY (carr_id);
 J   ALTER TABLE ONLY public.web_carrousel DROP CONSTRAINT web_carrousel_pkey;
       public         
   osbustaman    false    234            O           2606    32546    web_company web_company_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_company
    ADD CONSTRAINT web_company_pkey PRIMARY KEY (com_id);
 F   ALTER TABLE ONLY public.web_company DROP CONSTRAINT web_company_pkey;
       public         
   osbustaman    false    236            Q           2606    32555    web_image web_image_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_image
    ADD CONSTRAINT web_image_pkey PRIMARY KEY (img_id);
 B   ALTER TABLE ONLY public.web_image DROP CONSTRAINT web_image_pkey;
       public         
   osbustaman    false    238            w           2606    32651    web_items web_items_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_pkey PRIMARY KEY (it_id);
 B   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_pkey;
       public         
   osbustaman    false    262            S           2606    32562    web_menu web_menu_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_menu
    ADD CONSTRAINT web_menu_pkey PRIMARY KEY (me_id);
 @   ALTER TABLE ONLY public.web_menu DROP CONSTRAINT web_menu_pkey;
       public         
   osbustaman    false    240            U           2606    32571 $   web_other_links web_other_links_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.web_other_links
    ADD CONSTRAINT web_other_links_pkey PRIMARY KEY (ol_id);
 N   ALTER TABLE ONLY public.web_other_links DROP CONSTRAINT web_other_links_pkey;
       public         
   osbustaman    false    242            l           2606    32700 A   web_pages_images web_pages_images_pages_id_image_id_8201d5d7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_images
    ADD CONSTRAINT web_pages_images_pages_id_image_id_8201d5d7_uniq UNIQUE (pages_id, image_id);
 k   ALTER TABLE ONLY public.web_pages_images DROP CONSTRAINT web_pages_images_pages_id_image_id_8201d5d7_uniq;
       public         
   osbustaman    false    258    258            n           2606    32635 &   web_pages_images web_pages_images_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.web_pages_images
    ADD CONSTRAINT web_pages_images_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.web_pages_images DROP CONSTRAINT web_pages_images_pkey;
       public         
   osbustaman    false    258            h           2606    32628    web_pages web_pages_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.web_pages
    ADD CONSTRAINT web_pages_pkey PRIMARY KEY (pag_id);
 B   ALTER TABLE ONLY public.web_pages DROP CONSTRAINT web_pages_pkey;
       public         
   osbustaman    false    256            q           2606    32714 E   web_pages_plugins web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq UNIQUE (pages_id, plugins_id);
 o   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_plugins_id_4d7f6b96_uniq;
       public         
   osbustaman    false    260    260            s           2606    32642 (   web_pages_plugins web_pages_plugins_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pkey;
       public         
   osbustaman    false    260            W           2606    32580    web_plugins web_plugins_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.web_plugins
    ADD CONSTRAINT web_plugins_pkey PRIMARY KEY (plu_id);
 F   ALTER TABLE ONLY public.web_plugins DROP CONSTRAINT web_plugins_pkey;
       public         
   osbustaman    false    244            �           2606    32789 $   web_request_web web_request_web_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.web_request_web
    ADD CONSTRAINT web_request_web_pkey PRIMARY KEY (rw_id);
 N   ALTER TABLE ONLY public.web_request_web DROP CONSTRAINT web_request_web_pkey;
       public         
   osbustaman    false    272            �           2606    32780    web_services web_services_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.web_services
    ADD CONSTRAINT web_services_pkey PRIMARY KEY (serv_id);
 H   ALTER TABLE ONLY public.web_services DROP CONSTRAINT web_services_pkey;
       public         
   osbustaman    false    270            [           2606    32596 :   web_social_network_company web_social_network_company_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.web_social_network_company
    ADD CONSTRAINT web_social_network_company_pkey PRIMARY KEY (snc_id);
 d   ALTER TABLE ONLY public.web_social_network_company DROP CONSTRAINT web_social_network_company_pkey;
       public         
   osbustaman    false    248            Y           2606    32587 *   web_social_network web_social_network_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.web_social_network
    ADD CONSTRAINT web_social_network_pkey PRIMARY KEY (sn_id);
 T   ALTER TABLE ONLY public.web_social_network DROP CONSTRAINT web_social_network_pkey;
       public         
   osbustaman    false    246            ^           2606    32603    web_team web_team_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_pkey PRIMARY KEY (tm_id);
 @   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_pkey;
       public         
   osbustaman    false    250            c           2606    32619 4   web_team_social_network web_team_social_network_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_pkey PRIMARY KEY (tsn_id);
 ^   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_pkey;
       public         
   osbustaman    false    254            a           2606    32610 "   web_type_pages web_type_pages_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.web_type_pages
    ADD CONSTRAINT web_type_pages_pkey PRIMARY KEY (tp_id);
 L   ALTER TABLE ONLY public.web_type_pages DROP CONSTRAINT web_type_pages_pkey;
       public         
   osbustaman    false    252            (           1259    32519    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         
   osbustaman    false    221            -           1259    32459 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         
   osbustaman    false    223            0           1259    32460 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         
   osbustaman    false    223            #           1259    32445 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         
   osbustaman    false    219            8           1259    32475 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         
   osbustaman    false    227            ;           1259    32474 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         
   osbustaman    false    227            >           1259    32489 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         
   osbustaman    false    229            A           1259    32488 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         
   osbustaman    false    229            5           1259    32514     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         
   osbustaman    false    225            D           1259    32510 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         
   osbustaman    false    231            G           1259    32511 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         
   osbustaman    false    231            H           1259    32528 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         
   osbustaman    false    232            K           1259    32527 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         
   osbustaman    false    232            z           1259    32745 +   web_block_home_images_blockhome_id_10678631    INDEX     u   CREATE INDEX web_block_home_images_blockhome_id_10678631 ON public.web_block_home_images USING btree (blockhome_id);
 ?   DROP INDEX public.web_block_home_images_blockhome_id_10678631;
       public         
   osbustaman    false    266            }           1259    32746 '   web_block_home_images_image_id_b5cbc234    INDEX     m   CREATE INDEX web_block_home_images_image_id_b5cbc234 ON public.web_block_home_images USING btree (image_id);
 ;   DROP INDEX public.web_block_home_images_image_id_b5cbc234;
       public         
   osbustaman    false    266            �           1259    32759 ,   web_block_home_plugins_blockhome_id_5e9ed5eb    INDEX     w   CREATE INDEX web_block_home_plugins_blockhome_id_5e9ed5eb ON public.web_block_home_plugins USING btree (blockhome_id);
 @   DROP INDEX public.web_block_home_plugins_blockhome_id_5e9ed5eb;
       public         
   osbustaman    false    268            �           1259    32760 *   web_block_home_plugins_plugins_id_9347a0b4    INDEX     s   CREATE INDEX web_block_home_plugins_plugins_id_9347a0b4 ON public.web_block_home_plugins USING btree (plugins_id);
 >   DROP INDEX public.web_block_home_plugins_plugins_id_9347a0b4;
       public         
   osbustaman    false    268            u           1259    32732    web_items_it_menu_id_40487ca7    INDEX     Y   CREATE INDEX web_items_it_menu_id_40487ca7 ON public.web_items USING btree (it_menu_id);
 1   DROP INDEX public.web_items_it_menu_id_40487ca7;
       public         
   osbustaman    false    262            i           1259    32712 "   web_pages_images_image_id_b27ec7cb    INDEX     c   CREATE INDEX web_pages_images_image_id_b27ec7cb ON public.web_pages_images USING btree (image_id);
 6   DROP INDEX public.web_pages_images_image_id_b27ec7cb;
       public         
   osbustaman    false    258            j           1259    32711 "   web_pages_images_pages_id_80036589    INDEX     c   CREATE INDEX web_pages_images_pages_id_80036589 ON public.web_pages_images USING btree (pages_id);
 6   DROP INDEX public.web_pages_images_pages_id_80036589;
       public         
   osbustaman    false    258            f           1259    32698 $   web_pages_pag_type_pages_id_7247d648    INDEX     g   CREATE INDEX web_pages_pag_type_pages_id_7247d648 ON public.web_pages USING btree (pag_type_pages_id);
 8   DROP INDEX public.web_pages_pag_type_pages_id_7247d648;
       public         
   osbustaman    false    256            o           1259    32725 #   web_pages_plugins_pages_id_6fd9e884    INDEX     e   CREATE INDEX web_pages_plugins_pages_id_6fd9e884 ON public.web_pages_plugins USING btree (pages_id);
 7   DROP INDEX public.web_pages_plugins_pages_id_6fd9e884;
       public         
   osbustaman    false    260            t           1259    32726 %   web_pages_plugins_plugins_id_5f64dae2    INDEX     i   CREATE INDEX web_pages_plugins_plugins_id_5f64dae2 ON public.web_pages_plugins USING btree (plugins_id);
 9   DROP INDEX public.web_pages_plugins_plugins_id_5f64dae2;
       public         
   osbustaman    false    260            �           1259    32795 '   web_request_web_rw_services_id_6fb368e8    INDEX     m   CREATE INDEX web_request_web_rw_services_id_6fb368e8 ON public.web_request_web USING btree (rw_services_id);
 ;   DROP INDEX public.web_request_web_rw_services_id_6fb368e8;
       public         
   osbustaman    false    272            \           1259    32768 9   web_social_network_company_snc_social_network_id_296c4451    INDEX     �   CREATE INDEX web_social_network_company_snc_social_network_id_296c4451 ON public.web_social_network_company USING btree (snc_social_network_id);
 M   DROP INDEX public.web_social_network_company_snc_social_network_id_296c4451;
       public         
   osbustaman    false    248            d           1259    32691 6   web_team_social_network_tsn_social_network_id_5e2fd632    INDEX     �   CREATE INDEX web_team_social_network_tsn_social_network_id_5e2fd632 ON public.web_team_social_network USING btree (tsn_social_network_id);
 J   DROP INDEX public.web_team_social_network_tsn_social_network_id_5e2fd632;
       public         
   osbustaman    false    254            e           1259    32692 ,   web_team_social_network_tsn_team_id_681327ee    INDEX     w   CREATE INDEX web_team_social_network_tsn_team_id_681327ee ON public.web_team_social_network USING btree (tsn_team_id);
 @   DROP INDEX public.web_team_social_network_tsn_team_id_681327ee;
       public         
   osbustaman    false    254            _           1259    32680    web_team_tm_user_9116ee8c    INDEX     Q   CREATE INDEX web_team_tm_user_9116ee8c ON public.web_team USING btree (tm_user);
 -   DROP INDEX public.web_team_tm_user_9116ee8c;
       public         
   osbustaman    false    250            �           2606    32454 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       
   osbustaman    false    219    3623    223            �           2606    32449 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       
   osbustaman    false    223    3628    221            �           2606    32440 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       
   osbustaman    false    3618    217    219            �           2606    32469 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       
   osbustaman    false    3628    227    221            �           2606    32464 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       
   osbustaman    false    3636    225    227            �           2606    32483 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       
   osbustaman    false    219    3623    229            �           2606    32478 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       
   osbustaman    false    3636    229    225            �           2606    32500 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       
   osbustaman    false    217    231    3618            �           2606    32505 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       
   osbustaman    false    3636    231    225            �           2606    32735 M   web_block_home_images web_block_home_image_blockhome_id_10678631_fk_web_block    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_images
    ADD CONSTRAINT web_block_home_image_blockhome_id_10678631_fk_web_block FOREIGN KEY (blockhome_id) REFERENCES public.web_block_home(bh_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.web_block_home_images DROP CONSTRAINT web_block_home_image_blockhome_id_10678631_fk_web_block;
       public       
   osbustaman    false    3705    264    266            �           2606    32740 Q   web_block_home_images web_block_home_images_image_id_b5cbc234_fk_web_image_img_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_images
    ADD CONSTRAINT web_block_home_images_image_id_b5cbc234_fk_web_image_img_id FOREIGN KEY (image_id) REFERENCES public.web_image(img_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.web_block_home_images DROP CONSTRAINT web_block_home_images_image_id_b5cbc234_fk_web_image_img_id;
       public       
   osbustaman    false    266    238    3665            �           2606    32749 N   web_block_home_plugins web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block FOREIGN KEY (blockhome_id) REFERENCES public.web_block_home(bh_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_blockhome_id_5e9ed5eb_fk_web_block;
       public       
   osbustaman    false    268    3705    264            �           2606    32754 L   web_block_home_plugins web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_block_home_plugins
    ADD CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.web_block_home_plugins DROP CONSTRAINT web_block_home_plugi_plugins_id_9347a0b4_fk_web_plugi;
       public       
   osbustaman    false    3671    244    268            �           2606    32727 9   web_items web_items_it_menu_id_40487ca7_fk_web_menu_me_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_items
    ADD CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id FOREIGN KEY (it_menu_id) REFERENCES public.web_menu(me_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.web_items DROP CONSTRAINT web_items_it_menu_id_40487ca7_fk_web_menu_me_id;
       public       
   osbustaman    false    240    3667    262            �           2606    32706 G   web_pages_images web_pages_images_image_id_b27ec7cb_fk_web_image_img_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_images
    ADD CONSTRAINT web_pages_images_image_id_b27ec7cb_fk_web_image_img_id FOREIGN KEY (image_id) REFERENCES public.web_image(img_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.web_pages_images DROP CONSTRAINT web_pages_images_image_id_b27ec7cb_fk_web_image_img_id;
       public       
   osbustaman    false    258    3665    238            �           2606    32701 G   web_pages_images web_pages_images_pages_id_80036589_fk_web_pages_pag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_images
    ADD CONSTRAINT web_pages_images_pages_id_80036589_fk_web_pages_pag_id FOREIGN KEY (pages_id) REFERENCES public.web_pages(pag_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.web_pages_images DROP CONSTRAINT web_pages_images_pages_id_80036589_fk_web_pages_pag_id;
       public       
   osbustaman    false    256    3688    258            �           2606    32693 F   web_pages web_pages_pag_type_pages_id_7247d648_fk_web_type_pages_tp_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages
    ADD CONSTRAINT web_pages_pag_type_pages_id_7247d648_fk_web_type_pages_tp_id FOREIGN KEY (pag_type_pages_id) REFERENCES public.web_type_pages(tp_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.web_pages DROP CONSTRAINT web_pages_pag_type_pages_id_7247d648_fk_web_type_pages_tp_id;
       public       
   osbustaman    false    252    3681    256            �           2606    32715 I   web_pages_plugins web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id FOREIGN KEY (pages_id) REFERENCES public.web_pages(pag_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_pages_id_6fd9e884_fk_web_pages_pag_id;
       public       
   osbustaman    false    260    256    3688            �           2606    32720 M   web_pages_plugins web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_pages_plugins
    ADD CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id FOREIGN KEY (plugins_id) REFERENCES public.web_plugins(plu_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.web_pages_plugins DROP CONSTRAINT web_pages_plugins_plugins_id_5f64dae2_fk_web_plugins_plu_id;
       public       
   osbustaman    false    260    244    3671            �           2606    32796 O   web_request_web web_request_web_rw_services_id_6fb368e8_fk_web_services_serv_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_request_web
    ADD CONSTRAINT web_request_web_rw_services_id_6fb368e8_fk_web_services_serv_id FOREIGN KEY (rw_services_id) REFERENCES public.web_services(serv_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.web_request_web DROP CONSTRAINT web_request_web_rw_services_id_6fb368e8_fk_web_services_serv_id;
       public       
   osbustaman    false    3719    270    272            �           2606    32763 Z   web_social_network_company web_social_network_c_snc_social_network_i_296c4451_fk_web_socia    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_social_network_company
    ADD CONSTRAINT web_social_network_c_snc_social_network_i_296c4451_fk_web_socia FOREIGN KEY (snc_social_network_id) REFERENCES public.web_social_network(sn_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_social_network_company DROP CONSTRAINT web_social_network_c_snc_social_network_i_296c4451_fk_web_socia;
       public       
   osbustaman    false    246    248    3673            �           2606    32681 W   web_team_social_network web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia FOREIGN KEY (tsn_social_network_id) REFERENCES public.web_social_network(sn_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_netw_tsn_social_network_i_5e2fd632_fk_web_socia;
       public       
   osbustaman    false    3673    246    254            �           2606    32686 V   web_team_social_network web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team_social_network
    ADD CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id FOREIGN KEY (tsn_team_id) REFERENCES public.web_team(tm_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.web_team_social_network DROP CONSTRAINT web_team_social_network_tsn_team_id_681327ee_fk_web_team_tm_id;
       public       
   osbustaman    false    250    254    3678            �           2606    32675 2   web_team web_team_tm_user_9116ee8c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.web_team
    ADD CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id FOREIGN KEY (tm_user) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.web_team DROP CONSTRAINT web_team_tm_user_9116ee8c_fk_auth_user_id;
       public       
   osbustaman    false    250    3636    225            8      x������ � �      :      x������ � �      6   d  x�u�Kr�0���)t�N$��u׽Ag:��q4�$W���պ��*�A �����O ���ݘu���e:ga\�/��m�k����޺��& ��KX-�&K ?��i�� P�]�<���O�+@�|����)���KۊDC�F����<ݮ� ���/Z�I!����!�)�
r���fW�����^���<�^� Z�Z�&7,��&�|��u;�l��W�2���ZH� ����'}�/^DfB�\��Q��TkL#_�|�tF�d�`$/b*�U�L?u�v�K����c_�D��OP����	��\�5��꤇k7~��F��b��x����\�GJX���!:IB$���;w=��&��OZ1��� D�>��ܒ�?���۪}�0���&ᣟ$ br<"$�R�u@�%���-�٥��c�X|i2:aI��Mf'8�Ӹ���U=�r;��FQGǡ/m?��9s��ǝ�9�ǅ�.Όd�2��a���w�c7G+}er�~�	;�d��$�v����)�C�Ó��2���qMU���<�`�G�|�����Q?۶�����|��5t���Bڿ}e
�ݴ#$L]2Az��UY�ԠW�r�o���,���;f���צ&-�r6iaV&��G��H+��kb�l��u�SUH��M��U��٭�����(��R���0�)�p�A��pd�� �J6�mЯ�5��.�}�{q1�72��b��.d����]�
�}�N���4W����S,�$M
6uca'p�JȢ�R���6��-�EN�5�6y�	�lL&o6!㫍I�l�nLI���-,k�~��42mߚ�IXR�qS#	NR5��"�A�B~�����i      <   �   x�E���@E��+(��x�Kb�Z�DB��113�/�a4��Ka�-Oι6i�uw�m{ȸ��O����˒�K:�NV7\8�t:�ً��æ���|f�C��f��ȧRa�E��  5���t�J����	Q�n�U�.*��/q��$��'����6�o���i�O�2�      >      x������ � �      @      x������ � �      B   �  x��XMo�8=;�B�aOk�3�֭��E�ۢ�6(d[M���V��[��;�M�j�5�����3��	3�(�\��)�TIƭ�̹���n����Y5�ٻ��OYu��������"/W-}|w��h�.��u~�{r~�m�\��y=#�3�eB�"���E�A���sq�-Z�H<�jX<�% (�
ɜ3B[��-�E] A�AZ���Bz������ �"�<�7@?B̾כn�ȏ� Ǵ�V�a����>竢:�`b:�b�Y6�b*>6F�)H��(��S{��9s��SL�� �Hh���P�l�̫Mc ��!�TH����z����/HƥRN�(��M�\�m�5��(�8�N:�y��[��ΛoŲ� ��`�⪴3C\�U�-���@�E�l*H!h�����ݧz4��b��L�
"��_T� �F=�c���2��[vt��@!H%	�;�6��O�y��i�[����������p.�C��\�s8ܓ.�Tj�qG���uS�U���z=�%�a�F ���|�zΫ	�@{R���r.�`�vJx=�8�@���Ft���]"c�=��<u�!2S��^{�-릫�U��Y�����9�U�J�U����� r'�ny"^��!�Z�h	�⽠�K|eRt�z`�fF�@�4C�
%U�f��W;R9�	m�M5Z)����+]�R�9Q�V
��]�L	�o�<3da&�nH�m��Tz1��������_��%��(��<#'ɽ�])�o����G{˃�b�#4Ny�xD��S8`ir9E�HI�	0!U��e%v�g��;k�9mVb��(�(d�F���R��Da�<�a���ZAB1p���
��C���B��փ�p��F9�=���1�L��[h}ZG�=GSk�P�E�n[50��;1ݽoHq���4��aD*�7|l�﷮�S�"Z<�<���b�����C_���)tʑ�a�߼�H�����]�=�4�y��s<-�������~ ���"�nSN$�3+3��^N7��lqg�ܙ"J�����Γ�͚�.T[�䎬M��#�C�P�:?��|[�$��|~����_��K����' ��ṣ��Y�|ɚ�LU������MV�)�IV�U����7�t}���l2fs�Qh�Ψ����=�ʄ�Q�wEW���2e������U��\�:Q����tVl���@Mm�MP�j���yu���fo[���`A�9O"n1���U@O��5c��}0��۽�麽8��C�o@�PF/u�a��>�u�7�O�]t�̠���u��_���~}���!��=��y��u_h�����ցу�}�w
��і�d.�0�J�a��DM#	̦�_Ĵ�E�>�T%J�/u�����nF�V�b��ZF�� d2�ŭ���w�=%n58���v����ٿQ���      4   �   x�e�Kn!D��a���]���5�hB���}�Q���U�J����>���Zve[]U�����t��-�8�	���T�X�3�o�Y	�iy
\ԝ������M�m��>�G���H�A롹�T�O�@�����:
;oC�z�A���K�4j�l�>O�#�~�o���l�q]�����̴��n[9̌�?t�w���W#�]���71S}      2   �  x���[r�0E��*�@\���k�*�
�ƶ<��c�Ӓ-C ���G�W���B7�n��{?nc�ꮞ�� C���+�a	�DY(.��L��:M�'F�Q�7վ��'$�i�D�%�p�B�o7�6|xG�W��w��yf�3�t��Mu��{S���9�K�Ҥ�Ս]��Y>p��U����dD��?tU3���~h�q�%E�k�/���@��(�D�YQ|A�Fz������e�ͮqI��TN�;���:le�KFS�S����N���+D���N����lwѳ;���O�T�Q5����0������q������C�+��j�#���"��J�7=���Ӆ��(`�0�S�Fp�y¨�ԓE��C�����ev�{M3�eW���l[��Љe6�_N}�*��v�q���o�F�Y�J��ѫ��rQJSH	�qC��h������㺥`-��)��DS2C���e�b&����-c%����s��gq��t:=n���P�q�]R���X��0� 2E9�����$�d�)�Z�aE�%:ͪ��~�-�CTɨZ���ժ,��t������Ѕ8�oQ
��қP:��-��,��m��L�A0#�х�����(9/hg�=˱��ȧ�?�{�f��O)*�
�9�4<oM��=�������^�Xn�-�-�,����E�?�a���J,d	�P���:�K�10��S����$�A      C   �
  x�U�G�ȱбz� ����=��� ����s����9Nd ��X�� �Ɉ{,�2y�"�G������](����	q�7������x2�����2���` [_�`/����D*S��l}�5�*?��N�;	@���I`���R�NR_�4��tٜ�w6�28�Bk�u��]��JA�O�tsO�H���;�W4����&	��>b� �_�g(v�����悜�#jB����$7�N���jUM�=>WO=�.��}�P�k�VK��[#�-�j���w�����X�6���Kp�|���h����9��e
����}�%�ڤd�Eҁ�c����5&��r�wc��~�)�lēN��6�E��$�2s��m$P�1I��Ja�p�d
:Uk�#����\��������҂1�"�|�]�|u��gX(K8�����I<̂n2�d���}�g1���;ܳy1kE���?�?�Szvw����a��Tc�&��L���;y�3=�����c��O��W(X)��%�h��Dn�q˙��nBwi�\ 1$��|��Ӎ�Y,T�0��ndM��~×&R�1�V9���҈�H��p��W��gH��&6jD4BH*�Ʉ0�qsլ�F����zb(�	㫚R�ޭb^�8���' �T��%R����w��!���<cF��X�4@��A���]ȟ}M���!^��#yVN��1�(	�I��@��z���n�y(e�Msvvo�o��ֺʯ6ħ��׺�a ���7�A�?�7�!0� ���x>�u�g�[P՞H��G5������E������۞X&W��X�AZ�, � :�c��W�دwL�6�g�4�WD��5��|�,ۓ5f�e��9�8|�Q��c����r��I]�~V��>|u_�r{~(����0����Ҟ���*�D��i�;���;v�R7|q�u�t0� �,�u�fM�o��K���Z�mPzA�R�SЭ����8��{�;գ��>�������G��l-w�<�걻�cK��Z
ٺ$��@���-��"�!�ͫ����6;i���ZS��e�i�&�1��wj��:N��I�U̘�?kU"���=@Ќ��AJ����.��4��N��}؝y�dZ��[p۠�O>X�?���(9��X�تܠ�I�O�P�������^�GLB��f� �����f2xPw��I�{��Mf?�<T����y"2Z"�*(�o�G�-B�?
+�K��dEz|�_�j(�+���EW�2�y���7z
M�]�hn�h��i�f�?���d �e$VYV�t�_nd
;)zb�鿩&G��zHT]��"u'`���qj�dW��$�T�|��f~���Z(�P�gq�,5%��Ă����[6���It�� 59caJ_J1�5`���u�4����Da���d���z�Ty�o ��8C�-Jf��� 7�j8�-��n�]�c
[^���4r��p�}���+Ⱦ�|�z�^Z_�И>��7�_�o6F�a̖Z�[&ż��0b�/�x�p�_<ȁz�%]�ʈT����)g����C�h�cA�>q�7F܆Y�R0 �!-R�H<a���ˠ��BC	�Ӵz5UKCM5#��呂��"���P��q
�1C�P�.�&S�
&�Fj��((P�+M�Ov�
��L�MY��`D�_i�W�Q��Ǵ�G�B����f��=�ŷ�(N�h��OuI1�{L���$�,�G$����7���#S?�1�.�iQphg2�.p��a�w���9���v���%�}�T
漾x�[Ԯ��\����25�|��������y^��>/��}P��[~�k s�
����
��ށ�	��X�������Ѕ`�v��@��Si?�����~��O�me(&i5�����{���j����'G�Q�԰cGlX),����%^fA�y0~���@Dy)�D��y�Y�%\�Y2�Yr\_Z��E)~�pStR] �݂����n�a��y?w;mE�f�}�T���yUj���9sf��Z��yn6���|�W F�H>����0�TP��@�+�&u���D�^~�v{�^�ۯ?0�[�[95�n�3�3hM�
'���.R�	��S��r�}��-��iIhL�Te��8v��6�4�����	�Þ�rl�l���e����8��Y떔ֳ�����y'p?s n�&_�%��Sf	��p�ģz��WN�DeJ�ϣ���_L5��i����Ӭ�KҸ[��\�no:�oKi�ɂ��m���
� �
q ��	!f���� e3~�O�J4���Ʋ;�6�E�K�]��e�=8����#�ؚ�����%u�~�n^(X��<#N�&RN�^�v�����O���ވ�C��l�s������9~>�!֬F�&،:�lO�)�
 ���U�eL��� ��¢x�{�-�D�UV��b��E`nx)�Vo%�����3�ѥ��Ze �^�nP9O����]������z�<~�,��bu�QK�r/S�)
�h'j��+��~�<zN�(��|L������[����V_��gۻ�z�-�κO�=� ����O��Ũ՟���5v�pn؁��ɣ�o{��/�����$%lK���RP����� ���������������      c      x�}S�n1>o�bNHͲ�Mh�J���^��Ll'��ڋV���x1��$�@�m�c3�5��Y-�5כe��V�j�^_/Ͳ���m��i�Y�D��c���h���	D�n��]֗��j��E �כ���.W�S�b���b����W�)������)W��$�vo3;T��)xv�;kNt�d�%�829 D�ib������O��f�}{(���Hn
��>[�͛	�7ڲGi�!���ȹ��`�R!�����4ĠLPG}�:�)/h��,Gţ�y;G�e[�
v����ha���EX���С-'�7(��H�(\��-��'��cp.���~_8�WM���8% �F}���l����0�rVO��A'������P\�,��i{y�W��m��؃%�uT�)�p�����|MB<��1�E�D*q��h����4R��63EG8|&&w����EV�*�@�:���p0b�4�xZ�i/�����2GܽUL�0��%�'���S������l�ͫ��WWu���l6�.�G�      e      x������ � �      g      x������ � �      E   �   x��ν
�0����*�nI=���V�����8J�MD�л/�����������'��	b\��ǐy��/Bzȶ�����E�/��P+����c�W�t��j�Ѷ��ր 8����]����;���R��ƺeȯ}H�Ȉ�q�}P.���+H�q�r�W�xKϜr�\�      G   k  x�]P?O�0��Oq̴!q��vb	��cEB�s����~��ox#�b\	ɶN��ߟ�)�|V,fƀ�o�ٔ�|Y��zVT���VP�7E����4S|v�쒟�%��Oa��0��\�ɉ�y�ߨ�>�snI�}�I�,J3�?�	�c�~
7�Æ���ְ:]��f���G��@r��߫n}�~�M$AH=X��ȓMqxj{P;��G�Г��Bq�TL�2$�X���F =��֬�/"
o>�Z�wT���[�I!���C���5�(�j�l}/n�9/�F�o=�j{�Z2����E�RTZ���6�	�!q�^�N��#J��G�Q��U�C}CG��Q�5Mn��d�O�q      I   m  x��QMo�0=g�� j�邠g�����U^{6�����J��NҰG�E��}M�q��?\M�0�7��f�ٍ���GC��Ov?P���𓲟��0�B�����������:��4�@�k�XRi�I�g�w
w��|�J=π���M H�s� ����E��*�,�!��Y#X>{��^�;�jN�tD�oi���U��U|wp˴�ݚ�錭mo�����A��	S'�.�!��rI���^�����5�Ѿ��3�o6	3�X	b1KC�Lƥʹ$���*���x����qB��Hb?�
�%���M��}�.Ű �le�Q	������3����HP
Y�������З5�D#�����U���?��c���v��+���      a   �   x�}���0E���@��{��tuqbauA�� M �~QCа�ܛ��<$	F"� ѳQi˅x�jq�� N)4���!��ސR@�f�5{B�Fi����:ކ�Wq����C��{����C�*�Z*�ʨT�8t���9�S�5�-�M�C�N?Z�)�-2-+�����y��k��ߕ�m}W�e�g�b2      K   ;   x�3202�50�52V00�22�22�32�4�4�50�4�+k�雚W�`�i�i����� Q��      M   l   x�}̭
�0����*�����l2y�%ŠE��E�a;�F��Y*�ΚN,#E����`��eߠΓ��$*)�w�~Mۼg��T�6i�zV�!�)C��)8�n�+�      [   6  x��V�n�8<����9��I�y$�rX��!Y${0`�P�^��I�k��r��~�l�)i�Z;��������yq<_�X���d[�Y�*7��x^N��ռؖ�mYd��u^���|��K����S��N�-/��0w�T�e�2����	ݴ�	d+'b'�~^���=�t�#��tMK��\7T��F�w]P�xq����S�}v�֓w��OV����)�!|�%5x���v�*j��J��ym+�XgU��o�D���m�� Z��}��A�pJd"	�oU��謠�5����v����	���O�
�3�_E�!���v��ܩ �pf�.;�*!ӧ[8}�,3Hb���VI�
���� �ќ!Cu{�M���A�	*�QB'$v�O;�����d�޽iߟ�3� ��W�����!��θz��I��Ԑ�L8D0�� 2�F]8ϟA�^˞QД�w��Ab`��.m�ܕ�1�+��3>fpG�p�ԁ���Qӭ�ķ�د]��uWp�O!\(����\Z�B+VT�Pm$�F�g�B�݅�%X�v},���T���'sZ^�ެ�+ź�
�6$k�H=�'�}#�,y{M����s[U�u���X��k���6�Ժ�
�X)d������['vRa�23x��%tß~�8���zw�T\���W) n�,	�����T��M2���ktp�)l2e���S5Bu6v������F=�e��1 uE`Ȣa ���4� �2����#�4�<8)�~�X���Kw ��ҩ��F���D���!���rqE���W��'��o�sP<3�a�C��� �Jp;���~^��B�8�߷�j�(���>/�3��]��*L�1t�O���F;t���R�>�=(/��C�Jm��3O0=�j��&�j�M� ���Q1TG�㡼���,�o���GC���v���l�\�Nr^-&H��i�U��@<�j.d�Z�GQu��'L�[ы�6?�����,��i��S���"ϊbS��`���f�\g��j�^���籵@�+ͭx������Ó�۫؍�u���+��7�_�ۏ��������?*�+�      ]      x�3�4�4����� �X      _      x�3�4�4�2�F\1z\\\ ?      O   �   x�}αN�0���}
�(Q��i�	��G`1�"ܤ��<+/FOw�<X�l}F�V�N�J�ڏ���9��P��B���rY��L�Q�Boo&D̟���1���A�S�3�Tr\�|$��U��_7v�l���+5�h��ޚ�_��g���!�t��;o�v��b��~����������F��_s�:��~0h[�^�/�i��la�      k   �   x���[n�0D�/��²�^��WV��ǔ�j@�i�')��}��ȯ��?�������&�(8�u���)��c?Qm����QͧЅ�i�<���z�
��Pjd���0��j-ZW������4İ�n���`���[���E�Ⱥ���8�!��A��@q��$����6Zs��+����Y��w��%K�m� �l��o]Ka�O�H�nK�8����U�/s��� ފ25�4�/ܚ��}��f�WEQ����N      i   w  x��Wˎ7<����=i�ծ7��N'�ŀњi�\P�*��>�M�hF�~ Ö�ꮮꮹ���������6W�Oon��-�V��o..�]}uuu�'�18L�&�������siCfCMh��y��M���`ǽm�n�~;���؆�J=5d�M�Dn8�\�a�ɐ�qk[23�ަ5����p���qsn��=?���x�!�l�e��Ҽ�&{�˾E$vk{rW5�#�0�ׇ�C��/��-�B��%�6����{���E���7��Lnt��������	!%M�S�}��[�//"��x`���8������b����i'q�M��9�!�!����3����� �9��'ۇ��݋w�?�*��ŝ͚R�A�R��Rx�UT��Ld�v'�k�a}����i��A.�_��t��ʋ�|���vLG��t�^=)�������,"��+���w[��[\�ϰ�`*�`G�F }O�H���l)Fb mz��YH�x�>ZШ�ı�A.!�.f��|?f��=�	u�G58DqK#��N~9�JUҝ�	�>�mv ݧ$IX��'h��JX �s�M(H%r��	AAs}��B��hm���B~j���.�3E+'�Ti+�K�7�C)E�=7>���R��8�Zщ�|Ƿ�xC��N����JEx4K� +��r�iH>���/!���ʏtQ���3%M�"ǃ�^�b��(�-�Ҁ���<jnQէ5�Bgr �@�.$+b9-�K�+�[G}_�] k�E``�g�,�Q۳~�0�K���(�޶�l�� ��zm>���nh9K3��A� ݬ#n�� �E�y9	��-*��Hs���]�>HQ���8F�QEeAS�-_lɧо
~3Q6ߕ��8�Q��4}	��89���������2�u�8�k{5�S�۬��x����g#LS9F�?��;�rzH��������m���<2�P�L��g	�,���S`��@.,[�r��4�Ճ������rusy533���c13׫���?���9{;��w�Dޡ=��=�<AOE�נmN�|��bp2�v��ظ/�����녿��**B�/*���bW���-mU�����nLں�qlb�5�x�P��`ogØf����Ќ��Oְ��R:r[(�ȰO��p���vb��L���2�G:�H���Y��$P�GW-����f ;��q"Y����ɢ���渣��"�[�:W��<L�q�5Cm���p8��ⷀ��k�,c�oY�����Y���d�ն��$2���,�3ZJ:��'n��+�O��i�����䅜��|�WBj�߫1�K9&m�R<��T�R?UO��e$�qO_��8�����x�keV���Wii���I|�Z��/��*��;'[��ԛ�>4�#�Eu��SVx�ڙNl]u��{��;���j��˜�b�h��Vq�ӧ5��� ���zg�����u��g��Pf��!�B�~ξ��/���iZj�8�8�):�X�����z̮o��pKw���P���/iR�/|���-�>����JJ����%%��`������T�
P�?;Lu���!��OaO�?����0��� L&Դc�e?�΢��u^��x�և�}'L�8��w���/      Q   �   x�}�A� ���p�^ 2�0 ��U4�J�.���m$&o��|��E�Ibbg�	V��[-\��<���;/bm�W�mY�����>��=�>��A���uHG�Ƴg	}�:��6�sm��h�R/'�=>      S   �   x�m�Mn�0��}�\������g����(�+���%H]�t�.����š:�bA)� ���5��
��UU�j����,ޯ�
���w��p���pn��#�)k@MQ��!�G1
	ɧ(\4o��]� N�<��a��a�ӆ���6���M��!T��mby{ �`8�?����~���/���n�M      U      x������ � �      Y      x������ � �      W   �   x�}�1� ��N��lcH�tA�!���:U�����g
��pCRd���#�8`C+������m������xI+p��5&O) /��ɥ%�Gu����~�=
�. ��q9_�-���}"��㵕����Z�O6�     