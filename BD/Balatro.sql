/*
Codigo Ejecutado

CREACIÓN DE ENUMS (No funcionan con JAVA):

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

ALTER TABLE jokers
ADD COLUMN rareza rareza_comodines;

ALTER TABLE cartas_poker
ADD CONSTRAINT cf_cartas_poker_mejora FOREIGN KEY (mejora) REFERENCES mejoras(nombre);

ALTER TABLE jokers
ADD CONSTRAINT pk_jokers PRIMARY KEY(nombre);
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
---------------------------------------------------------------------------------------------
//CREACIÓN DE TRIGGERS

CREATE OR REPLACE FUNCTION validar_joker_unico()
RETURNS TRIGGER AS $$
BEGIN
 IF EXISTS (SELECT 1 FROM jokers WHERE nombre = NEW.nombre) THEN
 	RAISE EXCEPTION 'Joker ya añadido a la BD.';
 END IF;
 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER validar_joker
BEFORE INSERT ON jokers
FOR EACH ROW
EXECUTE FUNCTION validar_joker_unico();
*/

INSERT INTO jokers VALUES('Banner', 'h', 'Común');

/*
EJEMPLO TRIGGERS:

//CREAMOS FUNCIÓN
CREATE OR REPLACE FUNCTION validar_joker_unico()
RETURNS TRIGGER AS $$
BEGIN
 IF EXISTS (SELECT 1 FROM clientes WHERE email = NEW.email) THEN
  RAISE EXCEPTION 'El email ya existe en la base de datos.';
 END IF;
 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

//CREAMOS TRIGGER
CREATE TRIGGER clientes_validar_email_unico
BEFORE INSERT ON clientes
FOR EACH ROW 
EXECUTE FUNCTION validar_email_unico();

//OTRO EJEMPLO

//CREAMOS FUNCIÓN
CREATE OR REPLACE FUNCTION actualizar_num_comentarios()
RETURNS TRIGGER AS $$
BEGIN
 UPDATE usuarios SET num_comentarios = num_comentarios-1
 WHERE id = OLD.usuario.id;
 RETURN OLD;
END;
$$ LANGUAGE plpgsql;

//CREAMOS TRIGGER
CREATE TRIGGER comentarios_actualizar_num_comentarios
AFTER DELETE ON comentarios
FOR EACH ROW 
EXECUTE FUNCTION actualizar_num_comentarios();
------------------------------------------------------------------------------
*/
