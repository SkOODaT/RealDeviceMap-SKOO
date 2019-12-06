ALTER TABLE `account`
ADD COLUMN `creationTimestampMs` int(11) unsigned DEFAULT NULL;
ADD COLUMN `warn` tinyint(1) unsigned DEFAULT NULL;
ADD COLUMN `warnExpireMs` int(11) unsigned DEFAULT NULL;
ADD COLUMN `warnMessageAcknowledged` tinyint(1) unsigned DEFAULT NULL;
ADD COLUMN `suspendedMessageAcknowledged` tinyint(1) unsigned DEFAULT NULL;
ADD COLUMN `wasSuspended` tinyint(1) unsigned DEFAULT NULL;
ADD COLUMN `banned` tinyint(1) unsigned DEFAULT NULL;