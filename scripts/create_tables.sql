------------------------------------
-- Team Tables
------------------------------------

create table team (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name TEXT NOT NULL,
	tag TEXT NOT NULL,	
	roster_type TEXT NOT NULL,
	tier INTEGER,
	reroll_cost INTEGER NOT NULL, 
	apo_cost INTEGER,
	additional_rules TEXT,
	notes TEXT
);

create table team_category (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	category TEXT NOT NULL
);

create table team_category_assignment (
	team_id INTEGER REFERENCES team(id),
	category_id INTEGER REFERENCES team_category(id),
	PRIMARY KEY(team_id, category_id)
);

------------------------------------
-- Player Tables
------------------------------------

create table player (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	race TEXT NOT NULL,
	name TEXT NOT NULL,
	cost INTEGER NOT NULL,
	movement INTEGER NOT NULL,
	strength INTEGER NOT NULL, 
	agility INTEGER NOT NULL,
	armor INTEGER NOT NULL,
	singles TEXT NOT NULL,
	doubles TEXT NOT NULL
);

create table team_player_assignment (
	team_id INTEGER REFERENCES team(id),
	player_id INTEGER REFERENCES player(id),
	max_count INTEGER,
	PRIMARY KEY(team_id, player_id)
);

------------------------------------
-- Populate Tables
------------------------------------

INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Amazon', '', 'Core', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Bretonnian', '', 'Core', '3', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Chaos', '', 'Core', '4', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Chaos Dwarf', '', 'Core', '1', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Dark Elf', '', 'Core', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Dwarf', '', 'Core', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Elven Union', '', 'Core', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Goblin', '', 'Core', '6', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Halfling', '', 'Core', '6', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('High Elf', '', 'Core', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Human', '', 'Core', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Khemri', '', 'Core', '3', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Kislev', '', 'Core', '5', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Lizardmen', '', 'Core', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Necromantic', '', 'Core', '2', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Norse', '', 'Core', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Nurgle', '', 'Core', '4', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Ogre', '', 'Core', '7', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Orc', '', 'Core', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Skaven', '', 'Core', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Undead', '', 'Core', '1', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Underworld', '', 'Core', '5', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Vampire', '', 'Core', '5', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Wood Elf', '', 'Core', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Alliance of Goodness', '', 'Mixed', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Chaotic Player Pact', '', 'Mixed', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Afterlife United', '', 'Mixed', '2', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Superior Being Ring', '', 'Mixed', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Union of Small People', '', 'Mixed', '6', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Violence Together', '', 'Mixed', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Elfic Grand Coalition', '', 'Mixed', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Chaos Gods Selection', '', 'Mixed', '4', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Far East Association', '', 'Mixed', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Anti-Fur Society', '', 'Mixed', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('x Human League', '', 'Mixed', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (Aow) Alliance of Woodness', '', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AoP) Alliance of Plunder', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AoS) Alliance of Swiftness', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AoL) Alliance of the Lady', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AoE) Alliance of Enmity', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AoI) Alliance of Insurgency', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (WPP) Wily Player Pact', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (SPP) Slaaneshi Player Pact', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (BPP) Bestial Player Pact', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (VPP) Villainous Player Pact', '', 'Alternative', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (PEP) Player Elimination Pact', '', 'Alternative', '4', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (BSP) Beast Subjugation Pact', '', 'Alternative', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (EPP) Exiled Player Pact', '', 'Alternative', '5', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (TU) Twilight United', '', 'Alternative', '2', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (NU) Numas United', '', 'Alternative', '2', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (RU) Resurgents United', '', 'Alternative', '1', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (BGR) Black Grail Ring', '', 'Alternative', '3', '70', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (LMR) Lothern Mercantile Ring', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (ESR) Elven Slavery Ring', '', 'Alternative', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (CT) Chukkas Togevva!', '', 'Alternative', '5', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (HT) Halfwits Together', '', 'Alternative', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (NT) Numbskulls Together', '', 'Retired', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (OT) Oafs Together', '', 'Alternative', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (UUC) United Ulthuan Coalition', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (TKC) True King''s Coalition', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (PLS) Plague Lord''s Selection', '', 'Alternative', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (ESA) Exotic Slavery Association', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (SGA) Sneaky Git Association', '', 'Alternative', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (VMA) Vagrant Monster Association', '', 'Alternative', '5', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (GSA) Greenskin Association', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (DEA) Dwarf Extermination Association', '', 'Alternative', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (DDS) Daredevil Society', '', 'Alternative', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (HGS) Hunter Gatherer Society', '', 'Alternative', '2', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (CSS) Certainly Stunty Society', '', 'Alternative', '5', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (CL) Circus League', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (LL) Lionheart League', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (SL) Sigmar League', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (VL) Valkyrie League', '', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('z (AL) Aspirant League', '', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('The Buddy System', '(<3)', 'Alternative', '7', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Chaos Chosen of Nuffle', 'ARAC', 'Alternative', '4', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Noxious Nurgle', '', 'Alternative', '4', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Chosen of Tzeentch', '(CoT)', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Numbskulls', '(?)', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Khorne Norse', '(KN)', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Von Carstein Host', '(VCH)', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Lahmian High Society', '(LHS)', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Knights of Khorne', '(KoK)', 'Alternative', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('The Short and the Stout', '(S&S)', 'Special', '3', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Gather the Herd!', '(GtH)', 'Special', '2', '50', '50');


INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Clan Eshin Pact', '(CEP)', 'Alternative', '1', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Avelorn Sisterhood Coalition', '(ASC)', 'Alternative', '1', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Alliance of Crusaders', '(AoC)', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Arkhan''s United', '(AU)', 'Alternative', '2', '70', NULL);
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Kislev League', '(KL)', 'Alternative', '2', '50', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Savage Orcs', '(SO)', 'Special', '3', '60', '50');
INSERT INTO team(name, tag, roster_type, tier, reroll_cost, apo_cost) VALUES('Tasty Morsels', '(nom)', 'Special', '2', '60', '50');

------------------------------------
-- Fix tags
------------------------------------

UPDATE team 
SET tag = new_tag,
		name = SUBSTRING(t.name from trim_position)
FROM (		
	SELECT 	
		SUBSTRING(name from '\(.*?\)') as new_tag,
		CASE WHEN roster_type = 'Mixed' THEN 3
				 ELSE POSITION(')' IN name) + 2
		END as trim_position,
		*
	FROM team where roster_type <> 'Core'
) as t
Where new_tag IS NOT NULL;

------------------------------------
-- Add Players
------------------------------------

INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Amazon', 'Amazon Thrower', '70', '6', '3', '3', '7', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Amazon', 'Amazon Blitzer', '90', '6', '3', '3', '7', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Amazon', 'Amazon Catcher', '70', '6', '3', '3', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Amazon', 'Amazon Linewoman', '50', '6', '3', '3', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Bretonnian', 'Bretonnian Blitzer', '110', '7', '3', '3', '8', 'GAP', 'S');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Bretonnian', 'Bretonnian Lineman', '40', '6', '3', '2', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Bretonnian', 'Bretonnian Blocker', '70', '6', '3', '3', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos', 'Chaos Beastman', '60', '6', '3', '3', '8', 'GSM', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos', 'Chaos Warrior', '100', '5', '4', '3', '9', 'GSM', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos', 'Chaos Minotaur', '150', '5', '5', '2', '8', 'SM', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos Dwarf', 'Chaos Dwarf Bull Centaur', '130', '6', '4', '2', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos Dwarf', 'Chaos Dwarf Blocker', '70', '4', '3', '2', '9', 'GS', 'APM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos Dwarf', 'Chaos Dwarf Minotaur', '150', '5', '5', '2', '8', 'S', 'GAPM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Chaos Dwarf', 'Chaos Dwarf Hobgoblin', '40', '6', '3', '3', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dark Elf', 'Dark Elf Assassin', '90', '6', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dark Elf', 'Dark Elf Blitzer', '100', '7', '3', '4', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dark Elf', 'Dark Elf Lineman', '70', '6', '3', '4', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dark Elf', 'Dark Elf Runner', '80', '7', '3', '4', '7', 'GAP', 'S');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dark Elf', 'Dark Elf Witch Elf', '110', '7', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dwarf', 'Dwarf Blitzer', '80', '5', '3', '3', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dwarf', 'Dwarf Longbeard', '70', '4', '3', '2', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dwarf', 'Dwarf Deathroller', '160', '4', '7', '1', '10', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dwarf', 'Dwarf Runner', '80', '6', '3', '3', '8', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Dwarf', 'Dwarf Troll Slayer', '90', '5', '3', '2', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Elven Union', 'Elven Union Blitzer', '110', '7', '3', '4', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Elven Union', 'Elven Union Catcher', '100', '8', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Elven Union', 'Elven Union Lineman', '60', '6', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Elven Union', 'Elven Union Thrower', '70', '6', '3', '4', '7', 'GAP', 'S');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin Bombardier', '40', '6', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin Fanatic', '70', '3', '7', '3', '7', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin', '40', '6', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin Looney', '40', '6', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin Pogoer', '70', '7', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Goblin', 'Goblin Troll', '110', '4', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Halfling', 'Halfling', '30', '5', '2', '3', '6', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Halfling', 'Halfling Treeman', '120', '2', '6', '1', '10', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('High Elf', 'High Elf Blitzer', '100', '7', '3', '4', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('High Elf', 'High Elf Catcher', '90', '8', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('High Elf', 'High Elf Lineman', '70', '6', '3', '4', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('High Elf', 'High Elf Thrower', '90', '6', '3', '4', '8', 'GAP', 'S');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Human', 'Human Blitzer', '90', '7', '3', '3', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Human', 'Human Catcher', '70', '8', '2', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Human', 'Human Lineman', '50', '6', '3', '3', '8', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Human', 'Human Ogre', '140', '5', '5', '2', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Human', 'Human Thrower', '70', '6', '3', '3', '8', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Khemri', 'Khemri Blitz-Ra', '90', '6', '3', '2', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Khemri', 'Khemri Thro-Ra', '70', '6', '3', '2', '7', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Khemri', 'Khemri Skeleton', '40', '5', '3', '2', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Khemri', 'Khemri Tomb Guardian', '100', '4', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Kislev', 'Kislev Blitzer', '110', '7', '3', '3', '8', 'GAS', 'P');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Kislev', 'Kislev Catcher', '80', '7', '2', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Kislev', 'Kislev Lineman', '60', '6', '3', '3', '8', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Kislev', 'Kislev Tame Bear', '140', '6', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Lizardmen', 'Lizardmen Kroxigor', '140', '6', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Lizardmen', 'Lizardmen Saurus', '80', '6', '4', '1', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Lizardmen', 'Lizardmen Skink', '60', '8', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Necromantic', 'Necromantic Flesh Golem', '110', '4', '4', '2', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Necromantic', 'Necromantic Ghoul', '70', '7', '3', '3', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Necromantic', 'Necromantic Werewolf', '120', '8', '3', '3', '8', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Necromantic', 'Necromantic Wight', '90', '6', '3', '3', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Necromantic', 'Necromantic Zombie', '40', '4', '3', '2', '8', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Berserker', '90', '6', '3', '3', '7', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Runner', '90', '7', '3', '3', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Lineman', '50', '6', '3', '3', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Thrower', '70', '6', '3', '3', '7', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Ulfwerener', '110', '6', '4', '2', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Norse', 'Norse Yhetee', '140', '5', '5', '1', '8', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Nurgle', 'Nurgle Warrior', '110', '4', '4', '2', '9', 'GSM', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Nurgle', 'Nurgle Pestigor', '80', '6', '3', '3', '8', 'GSM', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Nurgle', 'Nurgle Beast', '140', '4', '5', '1', '9', 'S', 'GAPM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Nurgle', 'Nurgle Rotter', '40', '5', '3', '3', '8', 'GM', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Ogre', 'Ogre Gnoblar', '20', '5', '1', '3', '5', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Ogre', 'Ogre', '140', '5', '5', '2', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Black Orc', '80', '4', '4', '2', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Blitzer', '80', '6', '3', '3', '9', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Goblin', '40', '6', '2', '3', '7', 'A', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Lineman', '50', '5', '3', '3', '9', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Thrower', '70', '5', '3', '3', '8', 'GP', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Orc', 'Orc Troll', '110', '4', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Skaven', 'Skaven Storm Vermin', '90', '7', '3', '3', '8', 'GS', 'APM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Skaven', 'Skaven Gutter Runner', '80', '9', '2', '4', '7', 'GA', 'SPM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Skaven', 'Skaven Lineman', '50', '7', '3', '3', '7', 'G', 'ASPM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Skaven', 'Skaven Rat Ogre', '150', '6', '5', '2', '8', 'S', 'GAPM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Skaven', 'Skaven Thrower', '70', '7', '3', '3', '7', 'GP', 'ASM');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Underworld', 'Underworld Goblin', '40', '6', '2', '3', '7', 'AM', 'GSP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Underworld', 'Underworld Skaven Blitzer', '90', '7', '3', '3', '8', 'GSM', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Underworld', 'Underworld Skaven Lineman', '50', '7', '3', '3', '7', 'GM', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Underworld', 'Underworld Skaven Thrower', '70', '7', '3', '3', '7', 'GPM', 'AS');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Underworld', 'Underworld Warpstone Troll', '110', '4', '5', '1', '9', 'SM', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Vampire', 'Vampire Thrall', '40', '6', '3', '3', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Vampire', 'Vampire', '110', '6', '4', '4', '8', 'GAS', 'P');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Wood Elf', 'Wood Elf Catcher', '90', '8', '2', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Wood Elf', 'Wood Elf Lineman', '70', '7', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Wood Elf', 'Wood Elf Thrower', '90', '7', '3', '4', '7', 'GAP', 'S');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Wood Elf', 'Wood Elf Treeman', '120', '2', '6', '1', '10', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Wood Elf', 'Wood Elf Wardancer', '120', '8', '3', '4', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Undead', 'Undead Ghoul', '70', '7', '3', '3', '7', 'GA', 'SP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Undead', 'Undead Mummy', '120', '3', '5', '1', '9', 'S', 'GAP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Undead', 'Undead Skeleton', '40', '5', '3', '2', '7', 'G', 'ASP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Undead', 'Undead Wight', '90', '6', '3', '3', '8', 'GS', 'AP');
INSERT INTO player(race, name, cost, movement, strength, agility, armor, singles, doubles) VALUES('Undead', 'Undead Zombie', '40', '4', '3', '2', '8', 'G', 'ASP');

------------------------------------
-- Create Team Categories & Populate
------------------------------------

INSERT INTO team_category(category) VALUES('Bash');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Orc'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Dwarf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chaos'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Nurgle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Khemri'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chaos Dwarf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Ogre'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Afterlife United'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Union of Small People'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Violence Together'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chaos Gods Selection'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Far East Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Anti-Fur Society'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Alliance of Enmity'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Bestial Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Numas United'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chukkas Togevva!'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Exotic Slavery Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Daredevil Society'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Oafs Together'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Vagrant Monster Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Greenskin Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Noxious Nurgle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'The Buddy System'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Numbskulls'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Alliance of Insurgency'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Savage Orcs'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Bash'), (SELECT id from team WHERE name = 'Tasty Morsels'));




INSERT INTO team_category(category) VALUES('Dash');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Skaven')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'High Elf')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Dark Elf')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Wood Elf')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Elven Union')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Elfic Grand Coalition')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Alliance of Woodness')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Alliance of Swiftness')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Wily Player Pact')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Twilight United')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'United Ulthuan Coalition')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Sneaky Git Association')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Certainly Stunty Society')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'True King''s Coalition')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Aspirant League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'The Sacred Number')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Clan Eshin Pact')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Dash'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition')); 




INSERT INTO team_category(category) VALUES('Hybrid');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Amazon'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Bretonnian'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Human'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Lizardmen'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Norse'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Undead'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Necromantic'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Vampire'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Underworld'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Alliance of Goodness'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Chaotic Player Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Superior Being Ring'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Kislev'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Human League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Alliance of Plunder'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Alliance of the Lady'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Villainous Player Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Resurgents United'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Black Grail Ring'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Halfwits Together'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Circus League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Elven Slavery Ring'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Player Elimination Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Lionheart League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Sigmar League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Valkyrie League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Khorne Norse'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Von Carstein Host'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Lahmian High Society'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Knights of Khorne'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'The Short and the Stout'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Gather the Herd!'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Alliance of Crusaders'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Arkhan''s United'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Hybrid'), (SELECT id from team WHERE name = 'Kislev League'));


INSERT INTO team_category(category) VALUES('Stunty');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Goblin')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Halfling')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Ogre')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Underworld Denizens')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Alliance of Woodness')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Union of Small People')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Chukkas Togevva!')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Sneaky Git Association')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Vagrant Monster Association')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Certainly Stunty Society')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Exiled Player Pact')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'The Short and the Stout')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'The Buddy System')); 
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Stunty'), (SELECT id from team WHERE name = 'Tasty Morsels'));

INSERT INTO team_category(category) VALUES('Specialist');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Vampire'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Kislev'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'The Short and the Stout'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Goblin'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Halfling'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Exiled Player Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Lahmian High Society'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Savage Orcs'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Khorne Norse'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Knights of Khorne'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Specialist'), (SELECT id from team WHERE name = 'Tasty Morsels'));

INSERT INTO team_category(category) VALUES('High Difficulty');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Nurgle'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Khemri'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Union of Small People'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Alliance of Enmity'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Vagrant Monster Association'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Noxious Nurgle'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'The Buddy System'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Numbskulls'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Alliance of Woodness'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Alliance of Swiftness'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Twilight United'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Sneaky Git Association'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Aspirant League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Vampire'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Kislev'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Lionheart League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Khorne Norse'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Knights of Khorne'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Von Carstein Host'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Underworld'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Goblin'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Halfling'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Exiled Player Pact'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Difficulty'), (SELECT id from team WHERE name = 'Lahmian High Society'));  

INSERT INTO team_category(category) VALUES('Beginner-Friendly');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Orc'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Chaos Dwarf'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Far East Association'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Anti-Fur Society'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'True King''s Coalition'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Human'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Lizardmen'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Undead'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Alliance of Goodness'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Alliance of Plunder'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Alliance of the Lady'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Sigmar League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Valkyrie League'));  
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Beginner-Friendly'), (SELECT id from team WHERE name = 'Alliance of Crusaders'));  


INSERT INTO team_category(category) VALUES('High Variance');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Ogre'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Union of Small People'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Vagrant Monster Association'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'The Buddy System'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Sneaky Git Association'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Von Carstein Host'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Vampire'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Goblin'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Halfling'));   
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'High Variance'), (SELECT id from team WHERE name = 'Lahmian High Society'));   

INSERT INTO team_category(category) VALUES('Kill or be Killed');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Bestial Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Norse'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Underworld'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Sneaky Git Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Goblin'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Kill or be Killed'), (SELECT id from team WHERE name = 'Exiled Player Pact'));

INSERT INTO team_category(category) VALUES('Strong Start');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Dwarf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Wood Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'True King''s Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Amazon'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Bretonnian'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Human'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Lizardmen'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Norse'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Undead'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Alliance of Goodness'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Human League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Alliance of Plunder'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Alliance of the Lady'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Resurgents United'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Player Elimination Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Sigmar League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Valkyrie League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Alliance of Crusaders'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Strong Start'), (SELECT id from team WHERE name = 'Anti-Fur Society'));  

INSERT INTO team_category(category) VALUES('Developmental');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Chaos'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Nurgle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Chaos Gods Selection'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Noxious Nurgle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Skaven'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'High Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Dark Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Wood Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Elven Union'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Wily Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Twilight United'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'True King''s Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'The Sacred Number'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Aspirant League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Necromantic'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Chaotic Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Superior Being Ring'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Kislev'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Villainous Player Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Elven Slavery Ring'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Lionheart League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Gather the Herd!'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Clan Eshin Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Developmental'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'));


INSERT INTO team_category(category) VALUES('Low TV Build Available');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Dwarf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Alliance of Insurgency'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Skaven'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Sneaky Git Association'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Amazon'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Bretonnian'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Human'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Norse'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Undead'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Underworld'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Alliance of Goodness'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Human League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Alliance of Plunder'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Resurgents United'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Sigmar League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Valkyrie League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Halfling'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Goblin'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Alliance of Swiftness'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Clan Eshin Pact'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Kislev League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Low TV Build Available'), (SELECT id from team WHERE name = 'Tasty Morsels'));



INSERT INTO team_category(category) VALUES('Prone to Bloat');

INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Ogre'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Union of Small People'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Noxious Nurgle'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'The Buddy System'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Dark Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Wood Elf'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Black Grail Ring'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Lionheart League'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Khorne Norse'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Gather the Herd!'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Lahmian High Society'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Vampire'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'));
INSERT INTO team_category_assignment(category_id, team_id) VALUES((SELECT id FROM team_category WHERE category = 'Prone to Bloat'), (SELECT id from team WHERE name = 'Savage Orcs'));



------------------------------------
-- Populate Team Player Assignment
------------------------------------


INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Thrower'), (SELECT id from team WHERE name = 'Amazon'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Thrower'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Thrower'), (SELECT id from team WHERE name = 'Valkyrie League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Amazon'), 4); 	
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1); 	
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 4); 	
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Sigmar League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Blitzer'), (SELECT id from team WHERE name = 'Valkyrie League'), 2);	
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Catcher'), (SELECT id from team WHERE name = 'Amazon'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Catcher'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Catcher'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Catcher'), (SELECT id from team WHERE name = 'Circus League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Catcher'), (SELECT id from team WHERE name = 'Valkyrie League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Linewoman'), (SELECT id from team WHERE name = 'Amazon'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Linewoman'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Linewoman'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Linewoman'), (SELECT id from team WHERE name = 'Circus League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Linewoman'), (SELECT id from team WHERE name = 'Aspirant League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Bretonnian'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Alliance of Swiftness'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Alliance of the Lady'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Black Grail Ring'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Lionheart League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Sigmar League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Bretonnian'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Superior Being Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Human League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Alliance of Enmity'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Valkyrie League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Bretonnian'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Circus League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Aspirant League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Chaos'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Chaos'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Player Elimination Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Chaos'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Exiled Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Chaos Dwarf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Black Grail Ring'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Elven Slavery Ring'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Chaos Dwarf'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Elven Slavery Ring'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Minotaur'), (SELECT id from team WHERE name = 'Chaos Dwarf'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Minotaur'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Minotaur'), (SELECT id from team WHERE name = 'Black Grail Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Minotaur'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Chaos Dwarf'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Superior Being Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Far East Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Greenskin Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Dark Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Wily Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Player Elimination Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Exiled Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Blitzer'), (SELECT id from team WHERE name = 'Dark Elf'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Blitzer'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Blitzer'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Blitzer'), (SELECT id from team WHERE name = 'True King''s Coalition'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Lineman'), (SELECT id from team WHERE name = 'Dark Elf'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Lineman'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Lineman'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Lineman'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Runner'), (SELECT id from team WHERE name = 'Dark Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Runner'), (SELECT id from team WHERE name = 'Wily Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Runner'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Runner'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Runner'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Witch Elf'), (SELECT id from team WHERE name = 'Dark Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Witch Elf'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Witch Elf'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Witch Elf'), (SELECT id from team WHERE name = 'Wily Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Witch Elf'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Blitzer'), (SELECT id from team WHERE name = 'Dwarf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Longbeard'), (SELECT id from team WHERE name = 'Dwarf'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Longbeard'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Longbeard'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Longbeard'), (SELECT id from team WHERE name = 'Alliance of Enmity'), 8);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Deathroller'), (SELECT id from team WHERE name = 'Dwarf'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Deathroller'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Deathroller'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Deathroller'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Runner'), (SELECT id from team WHERE name = 'Dwarf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Runner'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'Dwarf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'Alliance of Enmity'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Blitzer'), (SELECT id from team WHERE name = 'Elven Union'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Blitzer'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Catcher'), (SELECT id from team WHERE name = 'Elven Union'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Catcher'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Lineman'), (SELECT id from team WHERE name = 'Elven Union'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Lineman'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Lineman'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Lineman'), (SELECT id from team WHERE name = 'True King''s Coalition'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Thrower'), (SELECT id from team WHERE name = 'Elven Union'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Thrower'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Goblin'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Union of Small People'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Bombardier'), (SELECT id from team WHERE name = 'Greenskin Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Goblin'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Union of Small People'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Halfwits Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Numbskulls Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Greenskin Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Fanatic'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Goblin'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Union of Small People'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Violence Together'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Far East Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Halfwits Together'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Looney'), (SELECT id from team WHERE name = 'Goblin'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Looney'), (SELECT id from team WHERE name = 'Union of Small People'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Looney'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Looney'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Looney'), (SELECT id from team WHERE name = 'Greenskin Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Goblin'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Union of Small People'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Halfwits Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Goblin'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Union of Small People'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Violence Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Numbskulls Together'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Halfling'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Union of Small People'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Alliance of Woodness'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'Alliance of Swiftness'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling Treeman'), (SELECT id from team WHERE name = 'Halfling'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling Treeman'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling Treeman'), (SELECT id from team WHERE name = 'Union of Small People'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling Treeman'), (SELECT id from team WHERE name = 'Alliance of Woodness'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Blitzer'), (SELECT id from team WHERE name = 'High Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Blitzer'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Blitzer'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Blitzer'), (SELECT id from team WHERE name = 'True King''s Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Catcher'), (SELECT id from team WHERE name = 'High Elf'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Catcher'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Catcher'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'High Elf'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'Elven Slavery Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'High Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'Elven Slavery Ring'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Human'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Alliance of the Lady'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Sigmar League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Catcher'), (SELECT id from team WHERE name = 'Human'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Catcher'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Catcher'), (SELECT id from team WHERE name = 'Alliance of Swiftness'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Human'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Human League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Alliance of the Lady'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Alliance of Insurgency'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Lineman'), (SELECT id from team WHERE name = 'Lionheart League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Ogre'), (SELECT id from team WHERE name = 'Human'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Ogre'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Ogre'), (SELECT id from team WHERE name = 'Lionheart League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Thrower'), (SELECT id from team WHERE name = 'Human'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Thrower'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Thrower'), (SELECT id from team WHERE name = 'Circus League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Thrower'), (SELECT id from team WHERE name = 'Aspirant League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Blitz-Ra'), (SELECT id from team WHERE name = 'Khemri'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Blitz-Ra'), (SELECT id from team WHERE name = 'Numas United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Blitz-Ra'), (SELECT id from team WHERE name = 'Resurgents United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Thro-Ra'), (SELECT id from team WHERE name = 'Khemri'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Thro-Ra'), (SELECT id from team WHERE name = 'Resurgents United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Skeleton'), (SELECT id from team WHERE name = 'Khemri'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Skeleton'), (SELECT id from team WHERE name = 'Afterlife United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Tomb Guardian'), (SELECT id from team WHERE name = 'Khemri'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Tomb Guardian'), (SELECT id from team WHERE name = 'Afterlife United'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Tomb Guardian'), (SELECT id from team WHERE name = 'Numas United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Kislev'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Circus League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Lionheart League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Kislev'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Daredevil Society'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Certainly Stunty Society'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Circus League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Catcher'), (SELECT id from team WHERE name = 'Aspirant League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Lineman'), (SELECT id from team WHERE name = 'Kislev'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Lineman'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Lineman'), (SELECT id from team WHERE name = 'Human League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Lineman'), (SELECT id from team WHERE name = 'Daredevil Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Tame Bear'), (SELECT id from team WHERE name = 'Kislev'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Tame Bear'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Tame Bear'), (SELECT id from team WHERE name = 'Daredevil Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Tame Bear'), (SELECT id from team WHERE name = 'Certainly Stunty Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Kroxigor'), (SELECT id from team WHERE name = 'Lizardmen'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Kroxigor'), (SELECT id from team WHERE name = 'Violence Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Kroxigor'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Kroxigor'), (SELECT id from team WHERE name = 'Certainly Stunty Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Lizardmen'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Violence Together'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Halfwits Together'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Numbskulls Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Oafs Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Saurus'), (SELECT id from team WHERE name = 'Daredevil Society'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Skink'), (SELECT id from team WHERE name = 'Lizardmen'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Skink'), (SELECT id from team WHERE name = 'Violence Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Skink'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Skink'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Lizardmen Skink'), (SELECT id from team WHERE name = 'Certainly Stunty Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Flesh Golem'), (SELECT id from team WHERE name = 'Necromantic'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Flesh Golem'), (SELECT id from team WHERE name = 'Afterlife United'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Flesh Golem'), (SELECT id from team WHERE name = 'Numas United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Ghoul'), (SELECT id from team WHERE name = 'Necromantic'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Werewolf'), (SELECT id from team WHERE name = 'Necromantic'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Werewolf'), (SELECT id from team WHERE name = 'Afterlife United'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Werewolf'), (SELECT id from team WHERE name = 'Twilight United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Wight'), (SELECT id from team WHERE name = 'Necromantic'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Necromantic Zombie'), (SELECT id from team WHERE name = 'Necromantic'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Daredevil Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Sigmar League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Daredevil Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Lionheart League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Runner'), (SELECT id from team WHERE name = 'Sigmar League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Lineman'), (SELECT id from team WHERE name = 'Norse'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Lineman'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Lineman'), (SELECT id from team WHERE name = 'Human League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Lineman'), (SELECT id from team WHERE name = 'Sigmar League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Thrower'), (SELECT id from team WHERE name = 'Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Thrower'), (SELECT id from team WHERE name = 'Human League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Thrower'), (SELECT id from team WHERE name = 'Hunter Gatherer Society'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Anti-Fur Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Circus League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Valkyrie League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Norse'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Daredevil Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Certainly Stunty Society'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Circus League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Valkyrie League'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Warrior'), (SELECT id from team WHERE name = 'Nurgle'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Warrior'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Warrior'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Pestigor'), (SELECT id from team WHERE name = 'Nurgle'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Pestigor'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Beast'), (SELECT id from team WHERE name = 'Nurgle'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Beast'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Beast'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Rotter'), (SELECT id from team WHERE name = 'Nurgle'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Rotter'), (SELECT id from team WHERE name = 'Chaos Gods Selection'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Rotter'), (SELECT id from team WHERE name = 'Plague Lord''s Selection'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Ogre'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Union of Small People'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Violence Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Halfwits Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Numbskulls Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Oafs Together'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Ogre'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Union of Small People'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Violence Together'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Far East Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'Greenskin Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Orc'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Halfwits Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Numbskulls Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Greenskin Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Blitzer'), (SELECT id from team WHERE name = 'Orc'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Blitzer'), (SELECT id from team WHERE name = 'Violence Together'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Blitzer'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Blitzer'), (SELECT id from team WHERE name = 'Greenskin Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Blitzer'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Goblin'), (SELECT id from team WHERE name = 'Orc'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Goblin'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Lineman'), (SELECT id from team WHERE name = 'Orc'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Lineman'), (SELECT id from team WHERE name = 'Violence Together'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Lineman'), (SELECT id from team WHERE name = 'Far East Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Lineman'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Lineman'), (SELECT id from team WHERE name = 'Oafs Together'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Thrower'), (SELECT id from team WHERE name = 'Orc'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Thrower'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Troll'), (SELECT id from team WHERE name = 'Orc'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Troll'), (SELECT id from team WHERE name = 'Chukkas Togevva!'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Troll'), (SELECT id from team WHERE name = 'Numbskulls Together'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Troll'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Storm Vermin'), (SELECT id from team WHERE name = 'Skaven'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Storm Vermin'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Storm Vermin'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Storm Vermin'), (SELECT id from team WHERE name = 'Villainous Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Storm Vermin'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Skaven'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Wily Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Skaven'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Far East Association'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Player Elimination Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Skaven'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Wily Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Beast Subjugation Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Exiled Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Exotic Slavery Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Sneaky Git Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Vagrant Monster Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Thrower'), (SELECT id from team WHERE name = 'Skaven'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Thrower'), (SELECT id from team WHERE name = 'Far East Association'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Thrower'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Thrower'), (SELECT id from team WHERE name = 'Dwarf Extermination Association'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Underworld'), 12);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Wily Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Exiled Player Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Blitzer'), (SELECT id from team WHERE name = 'Underworld'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Blitzer'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Blitzer'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Lineman'), (SELECT id from team WHERE name = 'Underworld'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Lineman'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Lineman'), (SELECT id from team WHERE name = 'Bestial Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Lineman'), (SELECT id from team WHERE name = 'Player Elimination Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Thrower'), (SELECT id from team WHERE name = 'Underworld'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Thrower'), (SELECT id from team WHERE name = 'Slaaneshi Player Pact'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Warpstone Troll'), (SELECT id from team WHERE name = 'Underworld'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Warpstone Troll'), (SELECT id from team WHERE name = 'Chaotic Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Warpstone Troll'), (SELECT id from team WHERE name = 'Player Elimination Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Warpstone Troll'), (SELECT id from team WHERE name = 'Exiled Player Pact'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Vampire'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Afterlife United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Superior Being Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Twilight United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Numas United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Black Grail Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Lothern Mercantile Ring'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Vampire'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Afterlife United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Superior Being Ring'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Twilight United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Black Grail Ring'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Catcher'), (SELECT id from team WHERE name = 'Wood Elf'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Catcher'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Catcher'), (SELECT id from team WHERE name = 'Alliance of Woodness'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Catcher'), (SELECT id from team WHERE name = 'Alliance of Swiftness'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Lineman'), (SELECT id from team WHERE name = 'Wood Elf'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Lineman'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Lineman'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Thrower'), (SELECT id from team WHERE name = 'Wood Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Thrower'), (SELECT id from team WHERE name = 'Alliance of the Lady'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'Wood Elf'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'Alliance of Woodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'Alliance of the Lady'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'Alliance of Enmity'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Treeman'), (SELECT id from team WHERE name = 'United Ulthuan Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Wardancer'), (SELECT id from team WHERE name = 'Wood Elf'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Wardancer'), (SELECT id from team WHERE name = 'Alliance of Goodness'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Wardancer'), (SELECT id from team WHERE name = 'Elfic Grand Coalition'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Wardancer'), (SELECT id from team WHERE name = 'Alliance of Plunder'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Ghoul'), (SELECT id from team WHERE name = 'Undead'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Ghoul'), (SELECT id from team WHERE name = 'Twilight United'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Ghoul'), (SELECT id from team WHERE name = 'Resurgents United'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Mummy'), (SELECT id from team WHERE name = 'Undead'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Mummy'), (SELECT id from team WHERE name = 'Afterlife United'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Mummy'), (SELECT id from team WHERE name = 'Resurgents United'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Skeleton'), (SELECT id from team WHERE name = 'Undead'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Skeleton'), (SELECT id from team WHERE name = 'Afterlife United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Skeleton'), (SELECT id from team WHERE name = 'Resurgents United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Wight'), (SELECT id from team WHERE name = 'Undead'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Wight'), (SELECT id from team WHERE name = 'Numas United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Wight'), (SELECT id from team WHERE name = 'Resurgents United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Zombie'), (SELECT id from team WHERE name = 'Undead'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Zombie'), (SELECT id from team WHERE name = 'Afterlife United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Blitzer'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Thrower'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Lineman'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Warpstone Troll'), (SELECT id from team WHERE name = 'Chosen of Tzeentch'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Gather the Herd!'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Pestigor'), (SELECT id from team WHERE name = 'Gather the Herd!'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Blocker'), (SELECT id from team WHERE name = 'Numbskulls'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Numbskulls'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Troll'), (SELECT id from team WHERE name = 'Numbskulls'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'Numbskulls'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Pogoer'), (SELECT id from team WHERE name = 'Numbskulls'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Knights of Khorne'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Knights of Khorne'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Knights of Khorne'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Knights of Khorne'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Knights of Khorne'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'The Short and the Stout'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Blitzer'), (SELECT id from team WHERE name = 'The Short and the Stout'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'The Short and the Stout'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Deathroller'), (SELECT id from team WHERE name = 'The Short and the Stout'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Ogre'), (SELECT id from team WHERE name = 'The Short and the Stout'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Skeleton'), (SELECT id from team WHERE name = 'Von Carstein Host'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Zombie'), (SELECT id from team WHERE name = 'Von Carstein Host'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Ghoul'), (SELECT id from team WHERE name = 'Von Carstein Host'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Wight'), (SELECT id from team WHERE name = 'Von Carstein Host'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Von Carstein Host'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Rotter'), (SELECT id from team WHERE name = 'Noxious Nurgle'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Pestigor'), (SELECT id from team WHERE name = 'Noxious Nurgle'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Warrior'), (SELECT id from team WHERE name = 'Noxious Nurgle'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Nurgle Beast'), (SELECT id from team WHERE name = 'Noxious Nurgle'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Lahmian High Society'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire'), (SELECT id from team WHERE name = 'Lahmian High Society'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'The Sacred Number'), 7);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'The Sacred Number'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Skaven Blitzer'), (SELECT id from team WHERE name = 'The Sacred Number'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Beastman'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'), 6);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Warrior'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Minotaur'), (SELECT id from team WHERE name = 'Chaos Chosen of Nuffle'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Lineman'), (SELECT id from team WHERE name = 'Khorne Norse'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Ulfwerener'), (SELECT id from team WHERE name = 'Khorne Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Berserker'), (SELECT id from team WHERE name = 'Khorne Norse'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Norse Yhetee'), (SELECT id from team WHERE name = 'Khorne Norse'), 1);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Blitzer'), (SELECT id from team WHERE name = 'Khorne Norse'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre Gnoblar'), (SELECT id from team WHERE name = 'The Buddy System'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Ogre'), (SELECT id from team WHERE name = 'The Buddy System'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin'), (SELECT id from team WHERE name = 'The Buddy System'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Goblin Troll'), (SELECT id from team WHERE name = 'The Buddy System'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling'), (SELECT id from team WHERE name = 'The Buddy System'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Halfling Treeman'), (SELECT id from team WHERE name = 'The Buddy System'), 2);


INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Lineman'), (SELECT id from team WHERE name = 'Clan Eshin Pact'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Underworld Goblin'), (SELECT id from team WHERE name = 'Clan Eshin Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Gutter Runner'), (SELECT id from team WHERE name = 'Clan Eshin Pact'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dark Elf Assassin'), (SELECT id from team WHERE name = 'Clan Eshin Pact'), 2);

INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Lineman'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'High Elf Thrower'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Wood Elf Catcher'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Elven Union Blitzer'), (SELECT id from team WHERE name = 'Avelorn Sisterhood Coalition'), 2);

INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Alliance of Crusaders'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blitzer'), (SELECT id from team WHERE name = 'Alliance of Crusaders'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Blitzer'), (SELECT id from team WHERE name = 'Alliance of Crusaders'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Thrower'), (SELECT id from team WHERE name = 'Alliance of Crusaders'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Dwarf Troll Slayer'), (SELECT id from team WHERE name = 'Alliance of Crusaders'), 2);

INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Zombie'), (SELECT id from team WHERE name = 'Arkhan''s United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Ghoul'), (SELECT id from team WHERE name = 'Arkhan''s United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Undead Wight'), (SELECT id from team WHERE name = 'Arkhan''s United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Thrall'), (SELECT id from team WHERE name = 'Arkhan''s United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Vampire Vampire'), (SELECT id from team WHERE name = 'Arkhan''s United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Skeleton'), (SELECT id from team WHERE name = 'Arkhan''s United'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Blitz-Ra'), (SELECT id from team WHERE name = 'Arkhan''s United'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Khemri Tomb Guardian'), (SELECT id from team WHERE name = 'Arkhan''s United'), 2);

INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Lineman'), (SELECT id from team WHERE name = 'Kislev League'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Bretonnian Blocker'), (SELECT id from team WHERE name = 'Kislev League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Human Catcher'), (SELECT id from team WHERE name = 'Kislev League'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Amazon Thrower'), (SELECT id from team WHERE name = 'Kislev League'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Kislev Tame Bear'), (SELECT id from team WHERE name = 'Kislev League'), 2);

INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Hobgoblin'), (SELECT id from team WHERE name = 'Savage Orcs'), 16);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Chaos Dwarf Bull Centaur'), (SELECT id from team WHERE name = 'Savage Orcs'), 2);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Orc Black Orc'), (SELECT id from team WHERE name = 'Savage Orcs'), 4);
INSERT INTO team_player_assignment(player_id, team_id, max_count) VALUES((SELECT id FROM player WHERE name = 'Skaven Rat Ogre'), (SELECT id from team WHERE name = 'Savage Orcs'), 1);









