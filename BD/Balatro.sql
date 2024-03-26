/*BEGIN;


CREATE TABLE IF NOT EXISTS public.jokers
(
    id integer NOT NULL,
    nombre character varying(20) COLLATE pg_catalog."default",
    efecto character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT jokers_pkey PRIMARY KEY (id)
);
END;

INSERT INTO jokers 
VALUES(1, 'Banner', '+10 fichas a tu puntuación si juegas una mano con Escalera.'
);
*/

