-- Table: public.movies

-- DROP TABLE public.movies;

CREATE TABLE public.movies
(
    index bigint,
    imdb_id text COLLATE pg_catalog."default",
    kaggle_id bigint,
    title text COLLATE pg_catalog."default",
    original_title text COLLATE pg_catalog."default",
    tagline text COLLATE pg_catalog."default",
    belongs_to_collection text COLLATE pg_catalog."default",
    wikipedia_url text COLLATE pg_catalog."default",
    imdb_link text COLLATE pg_catalog."default",
    runtime double precision,
    budget double precision,
    revenue double precision,
    release_date timestamp without time zone,
    popularity double precision,
    vote_average double precision,
    vote_count double precision,
    genres text COLLATE pg_catalog."default",
    original_language text COLLATE pg_catalog."default",
    overview text COLLATE pg_catalog."default",
    spoken_languages text COLLATE pg_catalog."default",
    country text COLLATE pg_catalog."default",
    production_companies text COLLATE pg_catalog."default",
    production_countries text COLLATE pg_catalog."default",
    distributor text COLLATE pg_catalog."default",
    producers text COLLATE pg_catalog."default",
    director text COLLATE pg_catalog."default",
    starring text COLLATE pg_catalog."default",
    cinematography text COLLATE pg_catalog."default",
    editors text COLLATE pg_catalog."default",
    writers text COLLATE pg_catalog."default",
    composers text COLLATE pg_catalog."default",
    based_on text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.movies
    OWNER to postgres;
-- Index: ix_movies_index

-- DROP INDEX public.ix_movies_index;

CREATE INDEX ix_movies_index
    ON public.movies USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;