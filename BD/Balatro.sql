/*
Ejemplo de copiar (Ya esta en el registro de INSERTS)
INSERT INTO jokers VALUES('Droll Joker', '+10 Mult if played hand contains a Flush','Common',4);
*/






SELECT * FROM jokers;


/*

--------------------------INSERTS--------------------------
INSERT INTO jokers VALUES('Joker', '+4 Mult','Common',2);
INSERT INTO jokers VALUES('Greedy Joker', 'Played cards with Diamond suit give +4 Mult when scored','Common',5);
INSERT INTO jokers VALUES('Lusty Joker', 'Played cards with Heart suit give +4 Mult when scored','Common',5);
INSERT INTO jokers VALUES('Wrathful Joker', 'Played cards with Club suit give +4 Mult when scored','Common',5);
INSERT INTO jokers VALUES('Gluttonous Joker', 'Played cards with Spade suit give +4 Mult when scored','Common',5);
INSERT INTO jokers VALUES('Jolly Joker', '+8 Mult if played hand contains a Pair','Common',3);
INSERT INTO jokers VALUES('Zany Joker', '+12 Mult if played hand contains a Three of a Kind','Common',4);
INSERT INTO jokers VALUES('Mad Joker', '+20 Mult if played hand contains a Four of a kind','Common',4);
INSERT INTO jokers VALUES('Crazy Joker', '+12 Mult if played hand contains a Straight','Common',4);
INSERT INTO jokers VALUES('Droll Joker', '+10 Mult if played hand contains a Flush','Common',4);
INSERT INTO jokers VALUES('Sly Joker', '+50 Chips if played hand contains a Pair','Common',3);
INSERT INTO jokers VALUES('Wily Joker', '+100 Chips if played hand contains a Three of a Kind','Common',4);
INSERT INTO jokers VALUES('Clever Joker', '+150 Chips if played hand contains a Four of a Kind','Common',4);


------------------------FUNCTIONS AND TRIGGERS------------------------

CREATE OR REPLACE FUNCTION validar_coste()
RETURNS TRIGGER AS $$
BEGIN
 IF NEW.cost::numeric::int < 0 THEN
  RAISE EXCEPTION 'The card cant have a negative cost';
 END IF;
 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER jokers_validar_coste
BEFORE INSERT OR UPDATE ON jokers
FOR EACH ROW
EXECUTE FUNCTION validar_coste();

------------------------ALTER TABLE------------------------

ALTER TABLE jokers ALTER COLUMN effect TYPE varchar(150);

------------------------TABLES------------------------

BEGIN;


CREATE TABLE IF NOT EXISTS public.jokers
(
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    effect character varying(50) COLLATE pg_catalog."default",
    rarity character varying(25) COLLATE pg_catalog."default",
    cost money,
    CONSTRAINT pk_jokers PRIMARY KEY (name)
);

END;

------------------------UPDATES------------------------

UPDATE jokers SET effect = '+50 Chips if played hand contains a Pair', cost = 3 WHERE name = 'Sly Joker';
*/