CREATE TABLE `u_net_control_nidtga` (
  `_id_` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_num_` bigint(20) NOT NULL,
  `_status_` int(11) NOT NULL,
  `school_number` varchar(255) DEFAULT '',
  `in_port` mediumblob,
  `dl_type` mediumblob,
  `actions` mediumblob,
  `out_port` mediumblob,
  `sect` mediumblob,
  `speed_limit` mediumblob,
  `state` mediumblob,
  PRIMARY KEY (`_id_`),
  KEY `school_number` (`school_number`(191)),
  KEY `_num_` (`_num_`)
) ENGINE=InnoDB AUTO_INCREMENT=100010 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPRESSED;