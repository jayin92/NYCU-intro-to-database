CREATE TABLE IF NOT EXISTS public."10-01-2022"
(
    "FIPS" character varying(5) COLLATE pg_catalog."default",
    "Admin2" character varying(100) COLLATE pg_catalog."default",
    "Province_State" character varying(100) COLLATE pg_catalog."default",
    "Country_Region" character varying(100) COLLATE pg_catalog."default",
    "Last_Update" timestamp without time zone,
    "Lat" double precision,
    "Long_" double precision,
    "Confirmed" integer,
    "Deaths" integer,
    "Recovered" integer,
    "Active" integer,
    "Combined_Key" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "Incident_Rate" double precision,
    "Case_Fatality_Ratio" double precision,
    CONSTRAINT "10-01-2022_pkey" PRIMARY KEY ("Combined_Key")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."10-01-2022"
    OWNER to postgres;