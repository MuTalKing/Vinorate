CREATE TABLE IF NOT EXISTS public.perekrestok (
    id SERIAL PRIMARY KEY,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150),
    shop_logo character varying(150),
    color character varying(150),
    sugar character varying(150)
);

CREATE TABLE IF NOT EXISTS public.globus (
    id SERIAL PRIMARY KEY,
    name character varying(150) NOT NULL,
    rate character varying(150),
    price character varying(150),
    picture character varying(150),
    shop_logo character varying(150),
    color character varying(150),
    sugar character varying(150)
);

CREATE TABLE IF NOT EXISTS public.vivino (
    id SERIAL PRIMARY KEY,
    name character varying(150) NOT NULL,
    rate character varying(150)
);
