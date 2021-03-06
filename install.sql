CREATE TABLE IF NOT EXISTS `user_clothes` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '11',
	`hair_texture` varchar(255) NOT NULL DEFAULT '4',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '1',
	`hat` varchar(255) NOT NULL DEFAULT '6',
	`hat_texture` varchar(255) NOT NULL DEFAULT '2',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '6',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '3',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '1',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '16',
	`vest` varchar(255) NOT NULL DEFAULT '5',
	`vest_texture` varchar(255) NOT NULL DEFAULT '1',
	`gloves` varchar(255) NOT NULL DEFAULT '5',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '2',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '4',
	`pants` varchar(255) NOT NULL DEFAULT '5',
	`pants_texture` varchar(255) NOT NULL DEFAULT '5',
	`shoes` varchar(255) NOT NULL DEFAULT '6',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '1',
	`bag` varchar(255) NOT NULL DEFAULT '7',
	`bag_texture` varchar(255) NOT NULL DEFAULT '1',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `saved_clothes1` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '0',
	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
	`hat` varchar(255) NOT NULL DEFAULT '0',
	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '0',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '0',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '0',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
	`vest` varchar(255) NOT NULL DEFAULT '0',
	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
	`gloves` varchar(255) NOT NULL DEFAULT '0',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '0',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '0',
	`pants` varchar(255) NOT NULL DEFAULT '0',
	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
	`shoes` varchar(255) NOT NULL DEFAULT '0',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
	`bag` varchar(255) NOT NULL DEFAULT '0',
	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `saved_clothes2` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '0',
	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
	`hat` varchar(255) NOT NULL DEFAULT '0',
	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '0',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '0',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '0',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
	`vest` varchar(255) NOT NULL DEFAULT '0',
	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
	`gloves` varchar(255) NOT NULL DEFAULT '0',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '0',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '0',
	`pants` varchar(255) NOT NULL DEFAULT '0',
	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
	`shoes` varchar(255) NOT NULL DEFAULT '0',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
	`bag` varchar(255) NOT NULL DEFAULT '0',
	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `saved_clothes3` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '0',
	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
	`hat` varchar(255) NOT NULL DEFAULT '0',
	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '0',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '0',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '0',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
	`vest` varchar(255) NOT NULL DEFAULT '0',
	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
	`gloves` varchar(255) NOT NULL DEFAULT '0',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '0',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '0',
	`pants` varchar(255) NOT NULL DEFAULT '0',
	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
	`shoes` varchar(255) NOT NULL DEFAULT '0',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
	`bag` varchar(255) NOT NULL DEFAULT '0',
	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `saved_clothes4` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '0',
	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
	`hat` varchar(255) NOT NULL DEFAULT '0',
	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '0',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '0',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '0',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
	`vest` varchar(255) NOT NULL DEFAULT '0',
	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
	`gloves` varchar(255) NOT NULL DEFAULT '0',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '0',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '0',
	`pants` varchar(255) NOT NULL DEFAULT '0',
	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
	`shoes` varchar(255) NOT NULL DEFAULT '0',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
	`bag` varchar(255) NOT NULL DEFAULT '0',
	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `saved_clothes5` (
	`identifier` varchar(255) NOT NULL,
	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
	`face` varchar(255) NOT NULL DEFAULT '0',
	`face_texture` varchar(255) NOT NULL DEFAULT '0',
	`hair` varchar(255) NOT NULL DEFAULT '0',
	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
	`mask` varchar(255) NOT NULL DEFAULT '0',
	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
	`hat` varchar(255) NOT NULL DEFAULT '0',
	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
	`eyes` varchar(255) NOT NULL DEFAULT '0',
	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
	`glasses` varchar(255) NOT NULL DEFAULT '0',
	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
	`ears` varchar(255) NOT NULL DEFAULT '0',
	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
	`shirt` varchar(255) NOT NULL DEFAULT '0',
	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
	`vest` varchar(255) NOT NULL DEFAULT '0',
	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
	`gloves` varchar(255) NOT NULL DEFAULT '0',
	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
	`bracelets` varchar(255) NOT NULL DEFAULT '0',
	`bracelets_texture` varchar(255) NOT NULL DEFAULT '0',
	`pants` varchar(255) NOT NULL DEFAULT '0',
	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
	`shoes` varchar(255) NOT NULL DEFAULT '0',
	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
	`bag` varchar(255) NOT NULL DEFAULT '0',
	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
	PRIMARY KEY (`identifier`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8;