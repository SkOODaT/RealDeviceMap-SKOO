-- --------------------------------------------------------
-- Host:                         192.168.1.101
-- Server version:               8.0.18 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for trigger rdmbeta.pokemon_updated
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='';
DELIMITER //
CREATE TRIGGER `pokemon_updated` BEFORE UPDATE ON `pokemon` FOR EACH ROW BEGIN
  IF (NEW.iv IS NOT NULL AND OLD.iv IS NULL) THEN BEGIN
      INSERT INTO pokemon_iv_stats (pokemon_id, count, date)
        VALUES
      (NEW.pokemon_id, 1, DATE(FROM_UNIXTIME(NEW.expire_timestamp)))
        ON DUPLICATE KEY UPDATE
      count = count + 1;
      END;
  END IF;
  IF (NEW.shiny = 1 AND (OLD.shiny = 0 OR OLD.shiny IS NULL)) THEN BEGIN
      INSERT INTO pokemon_shiny_stats (pokemon_id, count, date)
      VALUES
        (NEW.pokemon_id, 1, DATE(FROM_UNIXTIME(NEW.expire_timestamp)))
      ON DUPLICATE KEY UPDATE
        count = count + 1;
      END;
  END IF;
  IF (NEW.iv = 100 AND OLD.iv IS NULL) THEN BEGIN
      INSERT INTO pokemon_hundo_stats (pokemon_id, count, date)
      VALUES
        (NEW.pokemon_id, 1, DATE(FROM_UNIXTIME(NEW.expire_timestamp)))
      ON DUPLICATE KEY UPDATE
        count = count + 1;
      END;
  END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
