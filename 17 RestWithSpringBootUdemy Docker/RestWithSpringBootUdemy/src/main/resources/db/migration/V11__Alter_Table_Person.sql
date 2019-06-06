ALTER TABLE `person`
	ADD COLUMN `enabled` BIT(1) NOT NULL DEFAULT b'1' AFTER `last_name`;