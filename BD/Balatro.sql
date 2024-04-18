/*
Ejemplo de copiar (Ya esta en el registro de INSERTS)
INSERT INTO jokers (name, effect, rarity, cost) VALUES('', '', '', );
*/

INSERT INTO jokers (name, effect, rarity, cost) VALUES('', '', '', );




SELECT * FROM jokers;


/*

--------------------------INSERTS--------------------------
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Joker', '+4 Mult','Common',2);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Greedy Joker', 'Played cards with Diamond suit give +4 Mult when scored','Common',5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Lusty Joker', 'Played cards with Heart suit give +4 Mult when scored','Common',5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Wrathful Joker', 'Played cards with Club suit give +4 Mult when scored','Common',5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Gluttonous Joker', 'Played cards with Spade suit give +4 Mult when scored','Common',5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Jolly Joker', '+8 Mult if played hand contains a Pair','Common',3);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Zany Joker', '+12 Mult if played hand contains a Three of a Kind','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Mad Joker', '+20 Mult if played hand contains a Four of a kind','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Crazy Joker', '+12 Mult if played hand contains a Straight','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Droll Joker', '+10 Mult if played hand contains a Flush','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Sly Joker', '+50 Chips if played hand contains a Pair','Common',3);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Wily Joker', '+100 Chips if played hand contains a Three of a Kind','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Clever Joker', '+150 Chips if played hand contains a Four of a Kind','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Devious Joker', '+100 Chips if played hand contains a Straight','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Droll Crafty Joker', '+80 Chips if played hand contains a Flush','Common',4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Droll Half Joker', '+20 Mult if played hand contains 3 or fewer cards','Common',5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Joker Stencil', 'X1 Mult for each empty Joker slot. Joker Stencil included (Currently X1 Mult)','Uncommon',8);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Four Fingers', 'All flushes and Straights can be made with 4 cards','Uncommon',7);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Mime', 'Retrigger all card held in hand abilities', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Credit Card', 'Go up to -$20 in debt', 'Common', 1);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Ceremonial Dagger', 'When Blind is selected, destroy Joker to the right and permanently add double its sell value to this Mult (Currently +0 Mult)', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Banner', '+40 Chips for each remaining discard', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Mystic Summit', '+15 Mult when 0 discards remaining', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Marble Joker', 'Adds one Stone card to deck when Blind is selected', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Loyalty Card', 'X4 Mult every 6 hands played (5 remaining)', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('8 Ball', 'Create a Planet card if played hand contains 2 or more 8s (Must have room)', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Misprint', '+? Mult', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Dusk', 'Retrigger all played cards in final hand of the round', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Raised Fist', 'Adds double the rank of lowest card held in hand to Mult', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Chaos the Clown', '1 free Reroll per shop', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Fibonacci', 'Each played Ace, 2, 3, 5 or 8 gives +8 Mult when scored', 'Uncommon', 7);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Steel Joker', 'This joker gains X0.25 Mult for each Steel Card in your full deck (Currently X1 Mult)', 'Uncommon', 7);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Scary Face', 'Played face cards give +30 Chips when Scored', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Abstract Joker', '+3 Mult for each Joker card (Currently +0 Mult)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Delayed Gratifcation', 'Earn $2 per discard if no discards are used by end of the round', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Hack', 'Retrigger each played 2, 3, 4 or 5', 'Uncommon', 6);

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
	id SERIAL,
    name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    effect character varying(50) COLLATE pg_catalog."default",
    rarity character varying(25) COLLATE pg_catalog."default",
    cost money,
    CONSTRAINT pk_jokers PRIMARY KEY (id)
);

END;

------------------------UPDATES------------------------

UPDATE jokers SET effect = '+50 Chips if played hand contains a Pair', cost = 3 WHERE name = 'Sly Joker';
*/