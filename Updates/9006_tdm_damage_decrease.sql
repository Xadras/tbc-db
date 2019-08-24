#Decrease damagemultiplier of Wretched Skulker, Wretched Bruiser, Wretched Husk  in order to avoid 30k hits
#NON_HERO
UPDATE `creature_template` SET DamageMultiplier = 2 WHERE entry IN (24690, 24689, 24688);
#HERO
UPDATE `creature_template` SET DamageMultiplier = 2 WHERE entry IN (25576, 25575, 25577);