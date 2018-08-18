resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'


client_script '@NativeUI/NativeUI.lua'
client_script 'client.lua'

server_script '@mysql-async/lib/MySQL.lua'
server_script 'server.lua'

-- CREATE TABLE IF NOT EXISTS `saved_clothes1` (
-- 	`identifier` varchar(255) NOT NULL,
-- 	`skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
-- 	`face` varchar(255) NOT NULL DEFAULT '0',
-- 	`face_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`hair` varchar(255) NOT NULL DEFAULT '0',
-- 	`hair_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`mask` varchar(255) NOT NULL DEFAULT '0',
-- 	`mask_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`hat` varchar(255) NOT NULL DEFAULT '0',
-- 	`hat_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`eyes` varchar(255) NOT NULL DEFAULT '0',
-- 	`eyes_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`glasses` varchar(255) NOT NULL DEFAULT '0',
-- 	`glasses_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`ears` varchar(255) NOT NULL DEFAULT '0',
-- 	`ears_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`shirt` varchar(255) NOT NULL DEFAULT '0',
-- 	`shirt_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`vest` varchar(255) NOT NULL DEFAULT '0',
-- 	`vest_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`gloves` varchar(255) NOT NULL DEFAULT '0',
-- 	`gloves_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`poignet` varchar(255) NOT NULL DEFAULT '0',
-- 	`poignet_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`pants` varchar(255) NOT NULL DEFAULT '0',
-- 	`pants_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`shoes` varchar(255) NOT NULL DEFAULT '0',
-- 	`shoes_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	`bag` varchar(255) NOT NULL DEFAULT '0',
-- 	`bag_texture` varchar(255) NOT NULL DEFAULT '0',
-- 	PRIMARY KEY (`identifier`),
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;