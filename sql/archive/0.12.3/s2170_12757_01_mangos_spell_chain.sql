ALTER TABLE db_version CHANGE COLUMN required_s2138_12670_01_mangos_spell_template required_s2170_12757_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (12319, 12971, 12972, 12973, 12974, 16256, 16281, 16282, 16283, 16284);
INSERT INTO spell_chain VALUES
/* Flurry triggered, Warrior */
(12319,0,12319,1,0),
(12971,12319,12319,2,0),
(12972,12971,12319,3,0),
(12973,12972,12319,4,0),
(12974,12973,12319,5,0),
/* Flurry triggered, Shaman */
(16256,0,16256,1,0),
(16281,16256,16256,2,0),
(16282,16281,16256,3,0),
(16283,16282,16256,4,0),
(16284,16283,16256,5,0);
