-- Table: public.ratings

-- DROP TABLE public.ratings;

CREATE TABLE public.ratings
(
    index bigint,
    "userId" bigint,
    "movieId" bigint,
    rating double precision,
    "timestamp" bigint
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.ratings
    OWNER to postgres;
-- Index: ix_ratings_index

-- DROP INDEX public.ix_ratings_index;

CREATE INDEX ix_ratings_index
    ON public.ratings USING btree
    (index ASC NULLS LAST)
    TABLESPACE pg_default;