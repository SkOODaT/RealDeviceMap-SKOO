ALTER TABLE `pokemon`
ADD COLUMN `capture_1` double(18,14) DEFAULT NULL;
ALTER TABLE `pokemon`
ADD COLUMN `capture_2` double(18,14) DEFAULT NULL;
ALTER TABLE `pokemon`
ADD COLUMN `capture_3` double(18,14) DEFAULT NULL;

ALTER TABLE `gym`
ADD COLUMN `gym_weather` tinyint unsigned;