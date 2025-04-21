
CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL DEFAULT 1,
  `steam_identifier` varchar(255) NOT NULL,
  `fivem_identifier` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `sex` varchar(255) NOT NULL DEFAULT 'male',
  `rank` varchar(255) NOT NULL DEFAULT 'player',
  `hp` int(100) NOT NULL DEFAULT 100,
  `food` int(11) NOT NULL DEFAULT 100,
  `drink` int(11) NOT NULL DEFAULT 100,
  `bank` double(11,2) NOT NULL DEFAULT 0.00,
  `cash` double(11,2) NOT NULL DEFAULT 0.00,
  `golds` double(11,2) NOT NULL DEFAULT 0.00,
  `xp` int(11) NOT NULL DEFAULT 10,
  `job` varchar(255) DEFAULT 'vagabond',
  `jobgrade` int(11) DEFAULT 1,
  `gang` varchar(255) DEFAULT 'none',
  `gangrank` int(11) NOT NULL DEFAULT 1,
  `banned` int(11) NOT NULL DEFAULT 0,
  `reason` varchar(255) DEFAULT NULL,
  `whitelist` int(11) NOT NULL DEFAULT 0,
  `coords` varchar(255) NOT NULL DEFAULT '{"y":-7172.64,"x":1548.32,"h":360.00,"z":62.95}',
  `inventory` varchar(16000) NOT NULL DEFAULT '[{"amount":1,"meta":[],"name":"WEAPON_MELEE_TORCH"},{"amount":1,"meta":[],"name":"water"},{"amount":1,"meta":[],"name":"bread"}]',
  `last_online` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `skins_players` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL DEFAULT 1,
  `steam_identifier` varchar(255) NOT NULL,
  `skin` longtext DEFAULT NULL,
  `clothes` varchar(16000) DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
