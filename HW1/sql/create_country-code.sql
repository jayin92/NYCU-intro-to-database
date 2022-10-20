CREATE TABLE IF NOT EXISTS public."country-code"
(
    id SERIAL NOT NULL,
    "Continent_Name" character varying(100) COLLATE pg_catalog."default",
    "Continent_Code" character(2) COLLATE pg_catalog."default",
    "Country_Name" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Two_Letter_Country_Code" character(2) COLLATE pg_catalog."default",
    "Three_Letter_Country_Code" character(3) COLLATE pg_catalog."default",
    "Country_Number" integer,
    CONSTRAINT "country-code_pkey" PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."country-code"
    OWNER to postgres;