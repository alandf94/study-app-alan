PGDMP     &                    {           studyapp    15.2    15.2 @    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    24781    studyapp    DATABASE     {   CREATE DATABASE studyapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE studyapp;
                postgres    false            �            1259    24782    comments    TABLE     �   CREATE TABLE public.comments (
    id integer NOT NULL,
    text text NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    24788    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    214            I           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    215            �            1259    24789    shared_topics    TABLE     �   CREATE TABLE public.shared_topics (
    id integer NOT NULL,
    user_shared_id integer NOT NULL,
    topic_id integer NOT NULL,
    user_destination_id integer NOT NULL
);
 !   DROP TABLE public.shared_topics;
       public         heap    postgres    false            �            1259    24792    shared_topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shared_topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.shared_topics_id_seq;
       public          postgres    false    216            J           0    0    shared_topics_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.shared_topics_id_seq OWNED BY public.shared_topics.id;
          public          postgres    false    217            �            1259    24793    themes    TABLE       CREATE TABLE public.themes (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    description character varying,
    keywords character varying,
    owner_user_id integer,
    order_index integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.themes;
       public         heap    postgres    false            �            1259    24799    themes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.themes_id_seq;
       public          postgres    false    218            K           0    0    themes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.themes_id_seq OWNED BY public.themes.id;
          public          postgres    false    219            �            1259    24800    themes_properties    TABLE     �   CREATE TABLE public.themes_properties (
    id integer NOT NULL,
    theme_id integer,
    property_name character varying,
    property_value character varying
);
 %   DROP TABLE public.themes_properties;
       public         heap    postgres    false            �            1259    24805    themes_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.themes_properties_id_seq;
       public          postgres    false    220            L           0    0    themes_properties_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.themes_properties_id_seq OWNED BY public.themes_properties.id;
          public          postgres    false    221            �            1259    24806    topic_likes    TABLE     �   CREATE TABLE public.topic_likes (
    id integer NOT NULL,
    topic_id integer,
    user_id integer,
    like_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.topic_likes;
       public         heap    postgres    false            �            1259    24810    topic_likes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topic_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.topic_likes_id_seq;
       public          postgres    false    222            M           0    0    topic_likes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.topic_likes_id_seq OWNED BY public.topic_likes.id;
          public          postgres    false    223            �            1259    24811    topics    TABLE     5  CREATE TABLE public.topics (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    topic_id integer,
    "order" integer,
    priority integer,
    color character varying,
    owner_user_id integer,
    order_index integer DEFAULT 0 NOT NULL,
    link text
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    24817    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    224            N           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    225            �            1259    24818    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    last_name character varying,
    avatar character varying,
    email character varying,
    password character varying,
    deleted boolean,
    token character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24823    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    226            O           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    227            �           2604    24824    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    24825    shared_topics id    DEFAULT     t   ALTER TABLE ONLY public.shared_topics ALTER COLUMN id SET DEFAULT nextval('public.shared_topics_id_seq'::regclass);
 ?   ALTER TABLE public.shared_topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    24826 	   themes id    DEFAULT     f   ALTER TABLE ONLY public.themes ALTER COLUMN id SET DEFAULT nextval('public.themes_id_seq'::regclass);
 8   ALTER TABLE public.themes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    24827    themes_properties id    DEFAULT     |   ALTER TABLE ONLY public.themes_properties ALTER COLUMN id SET DEFAULT nextval('public.themes_properties_id_seq'::regclass);
 C   ALTER TABLE public.themes_properties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    24828    topic_likes id    DEFAULT     p   ALTER TABLE ONLY public.topic_likes ALTER COLUMN id SET DEFAULT nextval('public.topic_likes_id_seq'::regclass);
 =   ALTER TABLE public.topic_likes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    24829 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    24830    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            5          0    24782    comments 
   TABLE DATA           K   COPY public.comments (id, text, topic_id, user_id, created_at) FROM stdin;
    public          postgres    false    214   L       7          0    24789    shared_topics 
   TABLE DATA           Z   COPY public.shared_topics (id, user_shared_id, topic_id, user_destination_id) FROM stdin;
    public          postgres    false    216   M       9          0    24793    themes 
   TABLE DATA           j   COPY public.themes (id, create_date, name, description, keywords, owner_user_id, order_index) FROM stdin;
    public          postgres    false    218   lM       ;          0    24800    themes_properties 
   TABLE DATA           X   COPY public.themes_properties (id, theme_id, property_name, property_value) FROM stdin;
    public          postgres    false    220   sN       =          0    24806    topic_likes 
   TABLE DATA           G   COPY public.topic_likes (id, topic_id, user_id, like_date) FROM stdin;
    public          postgres    false    222   AO       ?          0    24811    topics 
   TABLE DATA           }   COPY public.topics (id, create_date, name, topic_id, "order", priority, color, owner_user_id, order_index, link) FROM stdin;
    public          postgres    false    224   �O       A          0    24818    users 
   TABLE DATA           ]   COPY public.users (id, name, last_name, avatar, email, password, deleted, token) FROM stdin;
    public          postgres    false    226   ]Q       P           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 42, true);
          public          postgres    false    215            Q           0    0    shared_topics_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.shared_topics_id_seq', 35, true);
          public          postgres    false    217            R           0    0    themes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.themes_id_seq', 8, true);
          public          postgres    false    219            S           0    0    themes_properties_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.themes_properties_id_seq', 26, true);
          public          postgres    false    221            T           0    0    topic_likes_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.topic_likes_id_seq', 49, true);
          public          postgres    false    223            U           0    0    topics_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.topics_id_seq', 28, true);
          public          postgres    false    225            V           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 16, true);
          public          postgres    false    227            �           2606    24832    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    214            �           2606    24834     shared_topics shared_topics_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_pkey;
       public            postgres    false    216            �           2606    24836    themes themes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_pkey;
       public            postgres    false    218            �           2606    24838 (   themes_properties themes_properties_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_pkey;
       public            postgres    false    220            �           2606    24840    topic_likes topic_likes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.topic_likes
    ADD CONSTRAINT topic_likes_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.topic_likes DROP CONSTRAINT topic_likes_pkey;
       public            postgres    false    222            �           2606    24842    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    224            �           2606    24844    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    226            �           2606    24845    comments comments_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_topic_id_fkey;
       public          postgres    false    214    224    3225            �           2606    24850    comments comments_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public          postgres    false    3227    226    214            �           2606    24855 )   shared_topics shared_topics_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_topic_id_fkey;
       public          postgres    false    216    224    3225            �           2606    24860 4   shared_topics shared_topics_user_destination_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_user_destination_id_fkey FOREIGN KEY (user_destination_id) REFERENCES public.users(id);
 ^   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_user_destination_id_fkey;
       public          postgres    false    226    216    3227            �           2606    24865 /   shared_topics shared_topics_user_shared_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shared_topics
    ADD CONSTRAINT shared_topics_user_shared_id_fkey FOREIGN KEY (user_shared_id) REFERENCES public.users(id);
 Y   ALTER TABLE ONLY public.shared_topics DROP CONSTRAINT shared_topics_user_shared_id_fkey;
       public          postgres    false    3227    216    226            �           2606    24870     themes themes_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_owner_user_id_fkey;
       public          postgres    false    3227    226    218            �           2606    24875 1   themes_properties themes_properties_theme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_theme_id_fkey FOREIGN KEY (theme_id) REFERENCES public.themes(id);
 [   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_theme_id_fkey;
       public          postgres    false    220    3219    218            �           2606    24880 %   topic_likes topic_likes_topic_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topic_likes
    ADD CONSTRAINT topic_likes_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.topic_likes DROP CONSTRAINT topic_likes_topic_id_fkey;
       public          postgres    false    3225    222    224            �           2606    24885 $   topic_likes topic_likes_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topic_likes
    ADD CONSTRAINT topic_likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.topic_likes DROP CONSTRAINT topic_likes_user_id_fkey;
       public          postgres    false    222    226    3227            �           2606    24890     topics topics_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_owner_user_id_fkey;
       public          postgres    false    226    224    3227            �           2606    24895    topics topics_topic_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);
 E   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_topic_id_fkey;
       public          postgres    false    224    3225    224            5     x����n� �3~
^ ��6�N�uVH��M��I{��j�Tu�$����-�ؗ5�\��$��9Ok\�f���{>_N�@'H�&n�$ڠ}Ф4��N</�k�ҕ����@�Ҏ�^��]�;<����:��Sh�%iR˘��W�%e:�V%mu��n�Y㕷��q�q��E:�3pM���ajD�*�Z`�V��;`c������۟n�w�]@�Zo����~h��2/ku5���h�����^ |tiu�      7   @   x�5�Q�0�o8�:�y�ˢ?�P�&Ttnlz}L|�����r�h@[]_����$_j��      9   �   x�}��j� �>�}�dPg����b)�2����D+���з�I�&�P�~�L�[vl�0v�y��3 �o��Iy� ��m�Hdun���h��N��	'����Q^�xS����� _����2�)�n��}�~�Gu9��������p>o����I���y��k�21�����(kч���a����Lq�r	z�S*�ރ&�?������E���]1�4�ƚ��R�њljsQ�ݿ�(�ߑ��E      ;   �   x�E�Qn�0���"'��b�ЗL6tUU����>D�?}��V�+ZJ�q�<�<uhQDׇ��{O��8}�`d�Y���=�d�/��R�'���wY�*Y����M�%�H�1���H<X[Ͳ �gO�9��s��]���{���U�i�=P2�����[��r]�������G�^9n��郈�XDz      =   z   x�e��	C1�s<E�����سt�9J�t�CHٰ�����#�O0VN-��D�B�ݰ`�~���w1�"EY��$٩r/i,(�����rt��]�T�E6�_�8���Lm{3{>&X      ?   �  x��RMo!<?~�J>�xmG��&Q"+U9D=䂁�7�������[;M{تEH��a���,�(q]p~u<:��ԞZ�-�%fMS�|��9�UU�0���o�܄C5�l�O�u߾�~,�+C�F�%�IB�b�EYXwН�@y�"��9�\ʦ�HT���V�]����+�6�t�q' -L�'�n�:�3PX ���:��V�Se}wS?4���i`ȧI�7�Ŧ�n��1O��?�$��e��m��]q�3�� �rr� 3'8���x;cb5��S�_ضӇ��,RM�w�u��]���!ͭ;e��Kg�&ЩKU֯��d�ױ�`
]��P���e��loL�R��܊��.�·t@�̌R[�r���T���W>��9c�'� ��      A   b  x�U��n�@�������;�]��*�4&fhY�ǲPO�Em�^���7g&g�	/U3�i��V����=$� j�P� �r^�TV긇R�F9�L�4M״���N)b��
�X ~!�2�&��F�!,�
K!GT�+�����\y��a�U��I�,�+��mG�˩���'tHO��n�X����'MK��v�VG�����E��[�䲶����ur:d�N�Ʌ��$A��������;fw����b׾,���^��+q�K��k�ķ��I��<�j�S=���Ѩ�`ζG{,��<���v�)bH�,
X`�uo6`���������g���w�`,�?����"V�Q�-��z���AU��-��     