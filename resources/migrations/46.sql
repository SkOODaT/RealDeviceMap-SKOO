ALTER TABLE `group`
ADD COLUMN `perm_view_map_device` tinyint(1) unsigned NOT NULL;

UPDATE `group`
SET `perm_view_map_device` = `perm_admin`;