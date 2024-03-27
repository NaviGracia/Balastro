/*
Codigo Ejecutado

CREACIÓN DE ENUMS:

CREATE TYPE valor_carta_poker AS
ENUM ('A','K','Q','J','10','9','8','7','6','5','4','3','2');

CREATE TYPE palo_carta_poker AS
ENUM ('Diamante','Trébol','Corazón','Pica','Todos');

CREATE TYPE operadores AS
ENUM('+','-','*');


------------------------------------------------------------------------------------------------------------------

Creación de Tablas:

CREATE TABLE IF NOT EXISTS public.jokers
(
    id integer NOT NULL,
    nombre character varying(20) COLLATE pg_catalog."default",
    efecto character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT jokers_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.cartas_poker(
	carta varchar(50) PRIMARY KEY,
	mejora varchar(50)
);

CREATE TABLE mejoras (
	nombre varchar(50),
	efecto operadores,
	numero_efecto double precision,
	descripcion varchar(50),
	CONSTRAINT pk_mejoras PRIMARY KEY(nombre)
);


------------------------------------------------------------------------------------------------------------------

INSERTS:

INSERT INTO jokers VALUES(1, 'Banner', '+10 fichas a tu puntuación si juegas una mano con Escalera.');

INSERT INTO mejoras VALUES('Carta de Acero', '*', '1.5','*1.5 Multi.');


------------------------------------------------------------------------------------------------------------------

Modificaciones Hechas:

ALTER TABLE cartas_poker
DROP COLUMN carta;

ALTER TABLE cartas_poker
ADD COLUMN valor valor_carta_poker;

ALTER TABLE cartas_poker
ADD COLUMN palo palo_carta_poker;

ALTER TABLE cartas_poker
ADD CONSTRAINT pk_cartas_poker PRIMARY KEY (valor, palo);



CREATE TYPE rareza_comodines AS
ENUM('Común', 'Inusual', 'Raro', 'Legendario');

ALTER TABLE jokers
ADD COLUMN rareza rareza_comodines;

ALTER TABLE cartas_poker
ADD CONSTRAINT cf_cartas_poker_mejora FOREIGN KEY (mejora) REFERENCES mejoras(nombre);
*/


/*
Codigo no Ejecutado

CREATE TABLE IF NOT EXISTS public.tarot
(
    id integer NOT NULL,
    nombre character varying(50),
    efecto character varying(100),
    CONSTRAINT pk_tarot PRIMARY KEY (id)
);

CREATE TYPE cantidad_cartas AS
ENUM('2','3','4','5');

CREATE TABLE IF NOT EXISTS public.sobres
(
    nombre character varying(50),
    cantidad cantidad_cartas,
    CONSTRAINT pk_sobres PRIMARY KEY (nombre)
);
*/

