CREATE TABLE `lhc_telegram_chat` (  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `chat_id` bigint(20) unsigned NOT NULL, `tchat_id` bigint(20) unsigned NOT NULL, `bot_id` int(11) NOT NULL, `ctime` int(11) NOT NULL, `utime` int(11) NOT NULL, PRIMARY KEY (`id`),  KEY `tchat_id_utime` (`tchat_id`,`utime`) ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lhc_telegram_bot` (  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `bot_username` varchar(50) NOT NULL, `bot_disabled` tinyint(1) unsigned NOT NULL, `bot_api` varchar(50) NOT NULL, `dep_id` int(11) unsigned NOT NULL, `bot_client` int(11) unsigned NOT NULL, `webhook_set` int(11) unsigned NOT NULL, `chat_timeout` int(11) unsigned NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lhc_telegram_signature` (  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `bot_id` int(11) unsigned NOT NULL, `user_id` int(11) unsigned NOT NULL, `signature` text NOT NULL, PRIMARY KEY (`id`), KEY `bot_id_user_id` (`bot_id`,`user_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lhc_telegram_operator` (`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `bot_id` int(11) unsigned NOT NULL, `chat_id` bigint(20) unsigned NOT NULL,`tchat_id` bigint(20) unsigned NOT NULL, `tuser_id` bigint(20) unsigned NOT NULL, `user_id` bigint(20) unsigned NOT NULL ,`confirmed` tinyint(1) unsigned NOT NULL, PRIMARY KEY (`id`), KEY `bot_id` (`bot_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lhc_telegram_bot_dep` (`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `bot_id` int(11) unsigned NOT NULL, `dep_id` int(11) unsigned NOT NULL,  PRIMARY KEY (`id`), KEY `bot_id` (`bot_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE `lhc_telegram_lead` (`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `tchat_id` int(11) unsigned NOT NULL, `dep_id` int(11) unsigned NOT NULL, `tbot_id` int(11) unsigned NOT NULL, `utime` int(11) unsigned NOT NULL, `ctime` int(11) unsigned NOT NULL, `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `language_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL, PRIMARY KEY (`id`), KEY `tchat_id` (`tchat_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;