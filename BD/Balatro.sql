/*
Ejemplo de copiar (Ya esta en el registro de INSERTS)
INSERT INTO jokers (name, effect, rarity, cost) VALUES('', '', '', );
*/


INSERT INTO jokers (name, effect, rarity, cost) VALUES('', '', '', );
INSERT INTO jokers (name, effect, rarity, cost) VALUES('', '', '', );
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
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Pareidolia', 'All cards are considered face cards', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Gros Michel', '+15 Mult 1 in 4 chance this is destroyed at the end of round', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Even Steven', 'Played cards with even rank give +4 when scored (10, 8, 6, 4, 2)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Odd Todd', 'Played cards with odd rank give +30 Chips when scored (A, 9, 7, 5, 3)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Scholar', 'Played Aces give +20 Chips and +4 Mult when scored', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Business Card', 'Played face cards have a 1 in 2 chance to give 2$ when scored', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Supernova', 'Adds the number of times poker hand has been played to Mult', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Ride the Bus', '+1 Mult per consecutive hand played without a scoring face card (Currently +0 Mult)', 'Common', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Space Joker', '1 in 4 chance to upgrade level of played poker hand', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Egg', 'Gains $3 of sell value at end of round', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Burglar', 'When Blind is selected, gain +3 Hands and lose all discards', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Blackboard', 'X3 Mult if all cards held in hand are Spades or Clubs', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Runner', 'Gains +10 Chips if played hand contains a Staright (Currently +20 Chips)', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Ice Cream', '+100 Chips -5 Chips for every hand played', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('DNA', 'If first hand of round has only 1 card, add a permanent copy to deck and draw it to hand', 'Rare', 8);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Splash', 'Every played card counts in scoring', 'Common', 3);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Blue Joker', '+2 Chips for each remaining card in deck (Currently +104 Chips)', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Sixth Sense', 'If first hand of round is a single 6, destroy it and create a Spectral card (Must have room)', 'Rare', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Constellation', 'Gains X0.1 Mult per Planet card used (Currently X1 Mult)', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Hiker', 'Every playe dcarad permanently gains +4 Chips when scored', 'Uncommon', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Faceless Joker', 'Earn $5 if 3 or more face cards are discarded at the same time', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Green Joker', '+1 Mult per hand played -1 Mult per discard (Currently +0 Mult)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Superposition', 'Create a Tarot card if poker hand contains an Ace and a Straight (Must have room)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('To Do List', 'Earn $5 if poker hand is a [Poker Hand], poker hand changes on every payout', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Cavendish', 'X3 Mult 1 in 1000 chance this card is destroyed at the end of round', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Card Shap', 'X3 Mult if played poker hand has already been played this round', 'Uncommon', 6);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Red Card', 'Gains +3 Mult when any Booster Pack is skipped (Currently +0 Mult)', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Madness', 'When Blind is selected, gain X0.5 Mult and destroy a random Joker (Currently X1 Mult)', 'Uncommon', 7);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Square Joker', 'Gains +4 Chips if played hand has exactly 4 cards (Currently 16 Chips)', 'Common', 5);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Séance', 'If poker hand is a Straight Flush, create a random Spectral card (Must have room)', 'Rare', 7);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Riff-Raff', 'When Blind is selected, create 2 Common Jokers (Must have room)', 'Common', 4);
INSERT INTO jokers (name, effect, rarity, cost) VALUES('Vampire', 'Gains X0.2 Mult per Enhanced card played, removes card Enhancement (Currently X1 Mult)', 'Uncommon', 7);

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
    effect character varying(150) COLLATE pg_catalog."default",
    rarity character varying(25) COLLATE pg_catalog."default",
    cost integer,
    CONSTRAINT pk_jokers PRIMARY KEY (id)
);

END;

------------------------UPDATES------------------------

UPDATE jokers SET effect = '+50 Chips if played hand contains a Pair', cost = 3 WHERE name = 'Sly Joker';
*/