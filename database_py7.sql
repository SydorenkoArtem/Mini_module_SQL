PGDMP                         y            py7    13.2    13.2 -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    py7    DATABASE     `   CREATE DATABASE py7 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE py7;
                postgres    false            ?            1259    16530    authors    TABLE     ?   CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(200) DEFAULT 'lore'::character varying NOT NULL,
    year date DEFAULT '1970-01-01'::date NOT NULL
);
    DROP TABLE public.authors;
       public         heap    postgres    false            ?            1259    16497    authors_books    TABLE     x   CREATE TABLE public.authors_books (
    author_id integer DEFAULT 0 NOT NULL,
    book_id integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.authors_books;
       public         heap    postgres    false            ?            1259    16528    authors_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          postgres    false    208            ?           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          postgres    false    207            ?            1259    16520    books    TABLE     ?   CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    genre_id integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.books;
       public         heap    postgres    false            ?            1259    16518    books_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.books_id_seq;
       public          postgres    false    206            ?           0    0    books_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;
          public          postgres    false    205            ?            1259    16397    cars    TABLE     ?   CREATE TABLE public.cars (
    id integer NOT NULL,
    brand text DEFAULT 'Tesla'::text NOT NULL,
    model character varying(100) NOT NULL
);
    DROP TABLE public.cars;
       public         heap    postgres    false            ?            1259    16395    cars_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cars_id_seq;
       public          postgres    false    201            ?           0    0    cars_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cars_id_seq OWNED BY public.cars.id;
          public          postgres    false    200            ?            1259    16490    genres    TABLE     ?   CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre character varying(100) DEFAULT 'unknown'::character varying NOT NULL
);
    DROP TABLE public.genres;
       public         heap    postgres    false            ?            1259    16488    genres_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genres_id_seq;
       public          postgres    false    203            ?           0    0    genres_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.genre_id;
          public          postgres    false    202            ?            1259    16540    persons    TABLE     ?   CREATE TABLE public.persons (
    id integer NOT NULL,
    pid integer DEFAULT 0 NOT NULL,
    fullname character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.persons;
       public         heap    postgres    false            ?            1259    16538    persons_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.persons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persons_id_seq;
       public          postgres    false    210            ?           0    0    persons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persons_id_seq OWNED BY public.persons.id;
          public          postgres    false    209            ?            1259    16551    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    gender character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    mail character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16549    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            P           2604    16533 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            M           2604    16523    books id    DEFAULT     d   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            G           2604    16400    cars id    DEFAULT     b   ALTER TABLE ONLY public.cars ALTER COLUMN id SET DEFAULT nextval('public.cars_id_seq'::regclass);
 6   ALTER TABLE public.cars ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            I           2604    16493    genres genre_id    DEFAULT     l   ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_id_seq'::regclass);
 >   ALTER TABLE public.genres ALTER COLUMN genre_id DROP DEFAULT;
       public          postgres    false    203    202    203            S           2604    16543 
   persons id    DEFAULT     h   ALTER TABLE ONLY public.persons ALTER COLUMN id SET DEFAULT nextval('public.persons_id_seq'::regclass);
 9   ALTER TABLE public.persons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            V           2604    16554    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?          0    16530    authors 
   TABLE DATA           1   COPY public.authors (id, name, year) FROM stdin;
    public          postgres    false    208   -       ?          0    16497    authors_books 
   TABLE DATA           ;   COPY public.authors_books (author_id, book_id) FROM stdin;
    public          postgres    false    204   ?-       ?          0    16520    books 
   TABLE DATA           4   COPY public.books (id, title, genre_id) FROM stdin;
    public          postgres    false    206   ?-       ?          0    16397    cars 
   TABLE DATA           0   COPY public.cars (id, brand, model) FROM stdin;
    public          postgres    false    201   .       ?          0    16490    genres 
   TABLE DATA           1   COPY public.genres (genre_id, genre) FROM stdin;
    public          postgres    false    203   ?.       ?          0    16540    persons 
   TABLE DATA           4   COPY public.persons (id, pid, fullname) FROM stdin;
    public          postgres    false    210   ?.       ?          0    16551    users 
   TABLE DATA           7   COPY public.users (id, gender, name, mail) FROM stdin;
    public          postgres    false    212   3/       ?           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 5, true);
          public          postgres    false    207            ?           0    0    books_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.books_id_seq', 5, true);
          public          postgres    false    205            ?           0    0    cars_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cars_id_seq', 11, true);
          public          postgres    false    200            ?           0    0    genres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genres_id_seq', 4, true);
          public          postgres    false    202            ?           0    0    persons_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.persons_id_seq', 4, true);
          public          postgres    false    209            ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    211            ^           2606    16537    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    208            \           2606    16527    books books_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    206            Z           2606    16496    genres genres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public            postgres    false    203            ?   j   x?3?t+J??V?H-JJ-*?4?47?50".#N???????Ҝ????2dYcΨ???l?????<dN???ļ<??Ԓ?Td)SΠ|?5@?2?r?Y2F??? %?      ?      x?3?4?2?4?2?4?2?4?????? ??      ?   W   x?3??HU?M,.I-RH?K2???2K9???8?K?K8??9?32KR???9??L8]J?R9?L9?!?R?S?zb???? JH?      ?   i   x?3??I?(-???015?2???,.N???O/M?2????..OLO??tv?2$E?	?bST?fh??Q[?*?Dw??ojQrjJj1???????!B??dD? '???      ?   +   x?3?v?2???/K??2?,.?/??2???/*?/?????? ?e	Y      ?   U   x?3?4?????N,*P?L-+.I??L-?L??2?4?K??L???S???Ksq?gg?)??@dL8??2?
P?=... ӊ$      ?   k   x?3???K,?L????u?M???K???2
;??V?E????P??J?D0?$g?鑚??Ǚ????$a
??J?˫?LML?(-@?2J??%r?d&g#???qqq ?Y2K     