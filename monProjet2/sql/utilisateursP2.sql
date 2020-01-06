
CREATE TABLE utilisateursp2 (
    login character varying(30) NOT NULL,
    nom character varying(100),
    prenom character varying(100),
    mail character varying(320),
    ville character varying(50),
    description character varying(1024),
    nbavis integer DEFAULT 0,
    total integer DEFAULT 0,
    nbposts integer DEFAULT 0,
    nblike integer DEFAULT 0,
    nbnolike integer DEFAULT 0,
    password character varying(100),
    avatar48x48 bytea,
    mimetype character varying(30),
    avatar256x256 bytea
);


ALTER TABLE ONLY utilisateursp2
    ADD CONSTRAINT utilisateursp2_pkey PRIMARY KEY (login);

