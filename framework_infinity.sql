/*!40101 SET NAMES utf8mb4 */;

-- Base de données : framework_infinity

-- Table : players
CREATE TABLE `players` (
  `id` INT(11) NOT NULL,
  `charid` INT(11) NOT NULL DEFAULT 1,
  `steam_identifier` VARCHAR(255) NOT NULL,
  `fivem_identifier` VARCHAR(255) DEFAULT NULL,
  `lastname` VARCHAR(255) DEFAULT NULL,
  `firstname` VARCHAR(255) DEFAULT NULL,
  `nationality` VARCHAR(255) DEFAULT NULL,
  `years` INT(11) DEFAULT NULL,
  `sex` VARCHAR(255) NOT NULL DEFAULT 'male',
  `rank` VARCHAR(255) NOT NULL DEFAULT 'player',
  `hp` INT(100) NOT NULL DEFAULT 100,
  `food` INT(11) NOT NULL DEFAULT 100,
  `drink` INT(11) NOT NULL DEFAULT 100,
  `bank` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
  `cash` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
  `golds` DOUBLE(11,2) NOT NULL DEFAULT 0.00,
  `xp` INT(11) NOT NULL DEFAULT 10,
  `job` VARCHAR(255) DEFAULT 'vagabond',
  `jobgrade` INT(11) DEFAULT 1,
  `gang` VARCHAR(255) DEFAULT 'none',
  `gangrank` INT(11) NOT NULL DEFAULT 1,
  `banned` INT(11) NOT NULL DEFAULT 0,
  `reason` VARCHAR(255) DEFAULT NULL,
  `whitelist` INT(11) NOT NULL DEFAULT 0,
  `coords` VARCHAR(255) NOT NULL DEFAULT '{"y":-7172.64,"x":1548.32,"h":360.00,"z":62.95}',
  `inventory` VARCHAR(16000) NOT NULL DEFAULT '[{"amount":1,"meta":[],"name":"WEAPON_MELEE_TORCH"},{"amount":1,"meta":[],"name":"water"},{"amount":1,"meta":[],"name":"bread"}]',
  `last_online` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Table : skins_players
CREATE TABLE `skins_players` (
  `id` INT(11) NOT NULL,
  `charid` INT(11) NOT NULL DEFAULT 1,
  `steam_identifier` VARCHAR(255) NOT NULL,
  `skin` LONGTEXT DEFAULT NULL,
  `clothes` VARCHAR(16000) DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Auto-incrément
ALTER TABLE `players`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `skins_players`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

COMMIT;

