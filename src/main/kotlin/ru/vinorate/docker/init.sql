CREATE TABLE IF NOT EXISTS public.perekrestok (
    id SERIAL PRIMARY KEY,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150)
);
