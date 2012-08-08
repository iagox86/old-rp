-- MySQL dump 10.10
--
-- Host: localhost    Database: rp
-- ------------------------------------------------------
-- Server version	5.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_armour`
--

DROP TABLE IF EXISTS `tbl_armour`;
CREATE TABLE `tbl_armour` (
  `armour_id` int(11) NOT NULL auto_increment,
  `armour_armourtype_id` int(11) NOT NULL default '0',
  `armour_name` varchar(256) NOT NULL default '',
  `armour_hits_taken` int(11) NOT NULL default '0',
  `armour_min_strength` int(11) NOT NULL default '0',
  `armour_cost` int(11) NOT NULL default '0',
  `armour_description` text NOT NULL,
  `armour_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`armour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_armour`
--


/*!40000 ALTER TABLE `tbl_armour` DISABLE KEYS */;
LOCK TABLES `tbl_armour` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_armour` ENABLE KEYS */;

--
-- Table structure for table `tbl_armourtype`
--

DROP TABLE IF EXISTS `tbl_armourtype`;
CREATE TABLE `tbl_armourtype` (
  `armourtype_id` int(11) NOT NULL auto_increment,
  `armourtype_name` varchar(256) NOT NULL default '0',
  `armourtype_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`armourtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_armourtype`
--


/*!40000 ALTER TABLE `tbl_armourtype` DISABLE KEYS */;
LOCK TABLES `tbl_armourtype` WRITE;
INSERT INTO `tbl_armourtype` VALUES (1,'Complete',0),(2,'Shield',0),(3,'Helmet',0),(4,'Arms',0),(5,'Legs',0),(6,'Body',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_armourtype` ENABLE KEYS */;

--
-- Table structure for table `tbl_campaign`
--

DROP TABLE IF EXISTS `tbl_campaign`;
CREATE TABLE `tbl_campaign` (
  `campaign_id` int(11) NOT NULL auto_increment,
  `campaign_user_id` int(11) NOT NULL default '0',
  `campaign_name` varchar(256) NOT NULL default '',
  `campaign_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaign`
--


/*!40000 ALTER TABLE `tbl_campaign` DISABLE KEYS */;
LOCK TABLES `tbl_campaign` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_campaign` ENABLE KEYS */;

--
-- Table structure for table `tbl_campaignuser`
--

DROP TABLE IF EXISTS `tbl_campaignuser`;
CREATE TABLE `tbl_campaignuser` (
  `campaignuser_id` int(11) NOT NULL auto_increment,
  `campaign_id` int(11) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`campaignuser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_campaignuser`
--


/*!40000 ALTER TABLE `tbl_campaignuser` DISABLE KEYS */;
LOCK TABLES `tbl_campaignuser` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_campaignuser` ENABLE KEYS */;

--
-- Table structure for table `tbl_character`
--

DROP TABLE IF EXISTS `tbl_character`;
CREATE TABLE `tbl_character` (
  `character_id` int(11) NOT NULL auto_increment,
  `character_user_id` int(11) NOT NULL default '0',
  `character_campaign_id` int(11) NOT NULL default '0',
  `character_scene_id` int(11) NOT NULL default '0',
  `character_race_id` int(11) NOT NULL default '0',
  `character_name` varchar(256) NOT NULL default '',
  `character_profession` varchar(256) NOT NULL default '',
  `character_age` int(11) NOT NULL default '0',
  `character_gender` varchar(256) NOT NULL default '',
  `character_experience` int(11) NOT NULL default '0',
  `character_lifepoints` int(11) NOT NULL default '0',
  `character_alignment` int(11) NOT NULL default '0',
  `character_height` varchar(256) NOT NULL default '',
  `character_weight` varchar(256) NOT NULL default '',
  `character_money` double NOT NULL default '0',
  `character_description` text NOT NULL,
  `character_notes` text NOT NULL,
  `character_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`character_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_character`
--


/*!40000 ALTER TABLE `tbl_character` DISABLE KEYS */;
LOCK TABLES `tbl_character` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_character` ENABLE KEYS */;

--
-- Table structure for table `tbl_characterarmour`
--

DROP TABLE IF EXISTS `tbl_characterarmour`;
CREATE TABLE `tbl_characterarmour` (
  `characterarmour_id` int(11) NOT NULL auto_increment,
  `characterarmour_character_id` int(11) NOT NULL default '0',
  `characterarmour_armour_id` int(11) NOT NULL default '0',
  `characterarmour_bonus_hits_taken` int(11) NOT NULL default '0',
  `characterarmour_notes` text NOT NULL,
  `characterarmour_is_worn` tinyint(4) NOT NULL default '0',
  `characterarmour_is_present` tinyint(4) NOT NULL default '1',
  `characterarmour_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`characterarmour_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_characterarmour`
--


/*!40000 ALTER TABLE `tbl_characterarmour` DISABLE KEYS */;
LOCK TABLES `tbl_characterarmour` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_characterarmour` ENABLE KEYS */;

--
-- Table structure for table `tbl_characterequipment`
--

DROP TABLE IF EXISTS `tbl_characterequipment`;
CREATE TABLE `tbl_characterequipment` (
  `characterequipment_id` int(11) NOT NULL auto_increment,
  `characterequipment_character_id` int(11) NOT NULL default '0',
  `characterequipment_equipment_id` int(11) NOT NULL default '0',
  `characterequipment_quantity` int(11) NOT NULL default '0',
  `characterequipment_rating` int(11) NOT NULL default '0',
  `characterequipment_notes` text NOT NULL,
  `characterequipment_is_present` int(11) NOT NULL default '1',
  `characterequipment_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`characterequipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_characterequipment`
--


/*!40000 ALTER TABLE `tbl_characterequipment` DISABLE KEYS */;
LOCK TABLES `tbl_characterequipment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_characterequipment` ENABLE KEYS */;

--
-- Table structure for table `tbl_characterskill`
--

DROP TABLE IF EXISTS `tbl_characterskill`;
CREATE TABLE `tbl_characterskill` (
  `characterskill_id` int(11) NOT NULL auto_increment,
  `characterskill_character_id` int(11) NOT NULL default '0',
  `characterskill_skill_id` int(11) NOT NULL default '0',
  `characterskill_skill_rating` int(11) NOT NULL default '0',
  `characterskill_notes` text NOT NULL,
  `characterskill_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`characterskill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_characterskill`
--


/*!40000 ALTER TABLE `tbl_characterskill` DISABLE KEYS */;
LOCK TABLES `tbl_characterskill` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_characterskill` ENABLE KEYS */;

--
-- Table structure for table `tbl_characterspell`
--

DROP TABLE IF EXISTS `tbl_characterspell`;
CREATE TABLE `tbl_characterspell` (
  `characterspell_id` int(11) NOT NULL auto_increment,
  `characterspell_character_id` int(11) NOT NULL default '0',
  `characterspell_spell_id` int(11) NOT NULL default '0',
  `characterspell_spell_level` int(11) NOT NULL default '0',
  `characterspell_notes` text NOT NULL,
  `characterspell_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`characterspell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_characterspell`
--


/*!40000 ALTER TABLE `tbl_characterspell` DISABLE KEYS */;
LOCK TABLES `tbl_characterspell` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_characterspell` ENABLE KEYS */;

--
-- Table structure for table `tbl_characterweapon`
--

DROP TABLE IF EXISTS `tbl_characterweapon`;
CREATE TABLE `tbl_characterweapon` (
  `characterweapon_id` int(11) NOT NULL auto_increment,
  `characterweapon_character_id` int(11) NOT NULL default '0',
  `characterweapon_weapon_id` int(11) NOT NULL default '0',
  `characterweapon_bonus_dice` int(11) NOT NULL default '0',
  `characterweapon_bonus_adds` int(11) NOT NULL default '0',
  `characterweapon_notes` text NOT NULL,
  `characterweapon_is_used` tinyint(4) NOT NULL default '0',
  `characterweapon_is_present` tinyint(4) NOT NULL default '0',
  `characterweapon_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`characterweapon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_characterweapon`
--


/*!40000 ALTER TABLE `tbl_characterweapon` DISABLE KEYS */;
LOCK TABLES `tbl_characterweapon` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_characterweapon` ENABLE KEYS */;

--
-- Table structure for table `tbl_combat`
--

DROP TABLE IF EXISTS `tbl_combat`;
CREATE TABLE `tbl_combat` (
  `combat_id` int(11) NOT NULL auto_increment,
  `combat_game_id` int(11) NOT NULL default '0',
  `combat_name` varchar(256) NOT NULL default '',
  `combat_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`combat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_combat`
--


/*!40000 ALTER TABLE `tbl_combat` DISABLE KEYS */;
LOCK TABLES `tbl_combat` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_combat` ENABLE KEYS */;

--
-- Table structure for table `tbl_combatcharacter`
--

DROP TABLE IF EXISTS `tbl_combatcharacter`;
CREATE TABLE `tbl_combatcharacter` (
  `combatcharacter_id` int(11) NOT NULL auto_increment,
  `combatcharacter_combat_id` int(11) NOT NULL default '0',
  `combatcharacter_character_id` int(11) NOT NULL default '0',
  `combatcharacter_is_melee` tinyint(4) NOT NULL default '0',
  `combatcharacter_is_ranged` tinyint(4) NOT NULL default '0',
  `combatcharacter_is_magic` tinyint(4) NOT NULL default '0',
  `combatcharacter_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`combatcharacter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_combatcharacter`
--


/*!40000 ALTER TABLE `tbl_combatcharacter` DISABLE KEYS */;
LOCK TABLES `tbl_combatcharacter` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_combatcharacter` ENABLE KEYS */;

--
-- Table structure for table `tbl_combatmonster`
--

DROP TABLE IF EXISTS `tbl_combatmonster`;
CREATE TABLE `tbl_combatmonster` (
  `combatmonster_id` int(11) NOT NULL auto_increment,
  `combatmonster_combat_id` int(11) NOT NULL default '0',
  `combatmonster_monster_id` int(11) NOT NULL default '0',
  `combatmonster_strength_mr` int(11) NOT NULL default '0',
  `combatmonster_con_mr` int(11) NOT NULL default '0',
  `combatmonster_health` int(11) NOT NULL default '0',
  `combatmonster_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`combatmonster_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_combatmonster`
--


/*!40000 ALTER TABLE `tbl_combatmonster` DISABLE KEYS */;
LOCK TABLES `tbl_combatmonster` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_combatmonster` ENABLE KEYS */;

--
-- Table structure for table `tbl_equipment`
--

DROP TABLE IF EXISTS `tbl_equipment`;
CREATE TABLE `tbl_equipment` (
  `equipment_id` int(11) NOT NULL auto_increment,
  `equipment_equipmenttype_id` int(11) NOT NULL default '0',
  `equipment_name` varchar(256) NOT NULL default '',
  `equipment_quantity` int(11) NOT NULL default '0',
  `equipment_cost` double NOT NULL default '0',
  `equipment_description` text NOT NULL,
  `equipment_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`equipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equipment`
--


/*!40000 ALTER TABLE `tbl_equipment` DISABLE KEYS */;
LOCK TABLES `tbl_equipment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_equipment` ENABLE KEYS */;

--
-- Table structure for table `tbl_equipmenttype`
--

DROP TABLE IF EXISTS `tbl_equipmenttype`;
CREATE TABLE `tbl_equipmenttype` (
  `equipmenttype_id` int(11) NOT NULL auto_increment,
  `equipmenttype_name` varchar(256) NOT NULL default '',
  `equipmenttype_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`equipmenttype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_equipmenttype`
--


/*!40000 ALTER TABLE `tbl_equipmenttype` DISABLE KEYS */;
LOCK TABLES `tbl_equipmenttype` WRITE;
INSERT INTO `tbl_equipmenttype` VALUES (1,'0',0),(2,'0',0),(3,'0',0),(4,'0',0),(5,'0',0),(6,'0',0),(7,'0',0),(8,'0',0),(9,'0',0),(10,'0',0),(11,'0',0),(12,'0',0),(13,'0',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_equipmenttype` ENABLE KEYS */;

--
-- Table structure for table `tbl_game`
--

DROP TABLE IF EXISTS `tbl_game`;
CREATE TABLE `tbl_game` (
  `game_id` int(11) NOT NULL auto_increment,
  `game_campaign_id` int(11) NOT NULL default '0',
  `game_name` varchar(256) NOT NULL default '0',
  `game_start_time` int(11) NOT NULL default '0',
  `game_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_game`
--


/*!40000 ALTER TABLE `tbl_game` DISABLE KEYS */;
LOCK TABLES `tbl_game` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_game` ENABLE KEYS */;

--
-- Table structure for table `tbl_gamecharacter`
--

DROP TABLE IF EXISTS `tbl_gamecharacter`;
CREATE TABLE `tbl_gamecharacter` (
  `gamecharacter_id` int(11) NOT NULL auto_increment,
  `gamecharacter_game_id` int(11) NOT NULL default '0',
  `gamecharacter_character_id` int(11) NOT NULL default '0',
  `gamecharacter_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gamecharacter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gamecharacter`
--


/*!40000 ALTER TABLE `tbl_gamecharacter` DISABLE KEYS */;
LOCK TABLES `tbl_gamecharacter` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_gamecharacter` ENABLE KEYS */;

--
-- Table structure for table `tbl_gamequestion`
--

DROP TABLE IF EXISTS `tbl_gamequestion`;
CREATE TABLE `tbl_gamequestion` (
  `gamequestion_id` int(11) NOT NULL default '0',
  `gamequestion_game_id` int(11) NOT NULL default '0',
  `gamequestion_gamequestionpriority_id` int(11) NOT NULL default '3',
  `gamequestion_character_id` int(11) NOT NULL default '0',
  `gamequestion_gamescene_id` int(11) NOT NULL default '0',
  `gamequestion_gamecombat_id` int(11) NOT NULL default '0',
  `gamequestion_npc_id` int(11) NOT NULL default '0',
  `gamequestion_question` text NOT NULL,
  `gamequestion_response` text NOT NULL,
  `gamequestion_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gamequestion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gamequestion`
--


/*!40000 ALTER TABLE `tbl_gamequestion` DISABLE KEYS */;
LOCK TABLES `tbl_gamequestion` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_gamequestion` ENABLE KEYS */;

--
-- Table structure for table `tbl_gamequestionpriority`
--

DROP TABLE IF EXISTS `tbl_gamequestionpriority`;
CREATE TABLE `tbl_gamequestionpriority` (
  `gamequestionpriority_id` int(11) NOT NULL auto_increment,
  `gamequestionpriority_name` varchar(256) NOT NULL default '',
  `gamequestionpriority_value` int(11) NOT NULL default '0',
  `gamequestionpriority_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gamequestionpriority_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gamequestionpriority`
--


/*!40000 ALTER TABLE `tbl_gamequestionpriority` DISABLE KEYS */;
LOCK TABLES `tbl_gamequestionpriority` WRITE;
INSERT INTO `tbl_gamequestionpriority` VALUES (1,'Very low',-100,0),(2,'Low',-50,0),(3,'Normal',0,0),(4,'High',50,0),(5,'Very high',100,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_gamequestionpriority` ENABLE KEYS */;

--
-- Table structure for table `tbl_gamescene`
--

DROP TABLE IF EXISTS `tbl_gamescene`;
CREATE TABLE `tbl_gamescene` (
  `gamescene_id` int(11) NOT NULL auto_increment,
  `gamescene_game_id` int(11) NOT NULL default '0',
  `gamescene_description` text NOT NULL,
  `gamescene_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`gamescene_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gamescene`
--


/*!40000 ALTER TABLE `tbl_gamescene` DISABLE KEYS */;
LOCK TABLES `tbl_gamescene` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_gamescene` ENABLE KEYS */;

--
-- Table structure for table `tbl_monster`
--

DROP TABLE IF EXISTS `tbl_monster`;
CREATE TABLE `tbl_monster` (
  `monster_id` int(11) NOT NULL auto_increment,
  `monster_monstertype_id` int(11) NOT NULL default '0',
  `monster_name` varchar(256) NOT NULL default '',
  `monster_strength_mr` int(11) NOT NULL default '0',
  `monster_constitution_mr` int(11) NOT NULL default '0',
  `monster_armour` int(11) NOT NULL default '0',
  `monster_group_min` int(11) NOT NULL default '0',
  `monster_group_max` int(11) NOT NULL default '0',
  `monster_notes` text NOT NULL,
  `monster_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`monster_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_monster`
--


/*!40000 ALTER TABLE `tbl_monster` DISABLE KEYS */;
LOCK TABLES `tbl_monster` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_monster` ENABLE KEYS */;

--
-- Table structure for table `tbl_monstertype`
--

DROP TABLE IF EXISTS `tbl_monstertype`;
CREATE TABLE `tbl_monstertype` (
  `monstertype_id` int(11) NOT NULL auto_increment,
  `monstertype_name` varchar(256) NOT NULL default '0',
  `monstertype_is_deleted` int(11) NOT NULL default '0',
  PRIMARY KEY  (`monstertype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_monstertype`
--


/*!40000 ALTER TABLE `tbl_monstertype` DISABLE KEYS */;
LOCK TABLES `tbl_monstertype` WRITE;
INSERT INTO `tbl_monstertype` VALUES (1,'Animal',0),(2,'Monster',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_monstertype` ENABLE KEYS */;

--
-- Table structure for table `tbl_race`
--

DROP TABLE IF EXISTS `tbl_race`;
CREATE TABLE `tbl_race` (
  `race_id` int(11) NOT NULL auto_increment,
  `race_name` varchar(256) NOT NULL default '',
  `race_strength_mod` double NOT NULL default '0',
  `race_constitution_mod` double NOT NULL default '0',
  `race_dexterity_mod` double NOT NULL default '0',
  `race_speed_mod` double NOT NULL default '0',
  `race_intelligence_mod` double NOT NULL default '0',
  `race_willpower_mod` double NOT NULL default '0',
  `race_charisma_mod` double NOT NULL default '0',
  `race_perception_mod` double NOT NULL default '0',
  `race_luck_mod` double NOT NULL default '0',
  `race_description` text NOT NULL,
  `race_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`race_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_race`
--


/*!40000 ALTER TABLE `tbl_race` DISABLE KEYS */;
LOCK TABLES `tbl_race` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_race` ENABLE KEYS */;

--
-- Table structure for table `tbl_skill`
--

DROP TABLE IF EXISTS `tbl_skill`;
CREATE TABLE `tbl_skill` (
  `skill_id` int(11) NOT NULL auto_increment,
  `skill_skilltype_id` int(11) NOT NULL default '0',
  `skill_name` varchar(256) NOT NULL default '',
  `skill_description` text NOT NULL,
  `skill_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skill`
--


/*!40000 ALTER TABLE `tbl_skill` DISABLE KEYS */;
LOCK TABLES `tbl_skill` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_skill` ENABLE KEYS */;

--
-- Table structure for table `tbl_skilltype`
--

DROP TABLE IF EXISTS `tbl_skilltype`;
CREATE TABLE `tbl_skilltype` (
  `skilltype_id` int(11) NOT NULL auto_increment,
  `skilltype_name` varchar(256) NOT NULL default '',
  `skilltype_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`skilltype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skilltype`
--


/*!40000 ALTER TABLE `tbl_skilltype` DISABLE KEYS */;
LOCK TABLES `tbl_skilltype` WRITE;
INSERT INTO `tbl_skilltype` VALUES (1,'0',0),(2,'0',0),(3,'0',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_skilltype` ENABLE KEYS */;

--
-- Table structure for table `tbl_spell`
--

DROP TABLE IF EXISTS `tbl_spell`;
CREATE TABLE `tbl_spell` (
  `spell_id` int(11) NOT NULL auto_increment,
  `spell_spelltype_id` int(11) NOT NULL default '0',
  `spell_name` varchar(256) NOT NULL default '',
  `spell_mp` int(11) NOT NULL default '0',
  `spell_range_meters` int(11) NOT NULL default '0',
  `spell_description` text NOT NULL,
  `spell_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_spell`
--


/*!40000 ALTER TABLE `tbl_spell` DISABLE KEYS */;
LOCK TABLES `tbl_spell` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_spell` ENABLE KEYS */;

--
-- Table structure for table `tbl_spelltype`
--

DROP TABLE IF EXISTS `tbl_spelltype`;
CREATE TABLE `tbl_spelltype` (
  `spelltype_id` int(11) NOT NULL auto_increment,
  `spelltype_name` varchar(256) NOT NULL default '',
  `spelltype_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`spelltype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_spelltype`
--


/*!40000 ALTER TABLE `tbl_spelltype` DISABLE KEYS */;
LOCK TABLES `tbl_spelltype` WRITE;
INSERT INTO `tbl_spelltype` VALUES (1,'0',0),(2,'0',0),(3,'0',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_spelltype` ENABLE KEYS */;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_name` varchar(256) NOT NULL default '',
  `user_password` varchar(256) NOT NULL default '',
  `user_password_salt` varchar(256) NOT NULL default '',
  `user_created` int(11) NOT NULL default '0',
  `user_last_login` int(11) NOT NULL default '0',
  `user_is_admin` tinyint(4) NOT NULL default '0',
  `user_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--


/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
LOCK TABLES `tbl_user` WRITE;
INSERT INTO `tbl_user` VALUES (1,'iago','ee7cc696d3f3ae1edbfc501812758672','abcd1234',0,0,0,0),(2,'test','49bf6cd1a87f97ac1d6c4bc45aba857d','abcd1234',0,0,0,0),(3,'test','test','',0,1160015100,0,0),(4,'iago','password','',0,1160015112,0,0),(5,'iago','password','',0,1160015262,0,0),(6,'iago','password','',0,1160180493,0,0),(7,'','1a1dc91c907325c69271ddf0c944bc72','',1160182472,1160182472,0,0),(8,'iago2','1a1dc91c907325c69271ddf0c944bc72','',1160182510,1160182510,0,0),(9,'iago3','d1ba7c320f44fd849bef0c621b5ebeae','salt1160182537',1160182537,1160182537,0,0),(10,'iago','password','',0,1160182680,0,0),(11,'iago','password','',0,1160182799,0,0),(12,'iago','password','',0,1160183598,0,0),(13,'iago','password','',0,1160183697,0,0),(14,'iago&#039;&lt;b&gt;test&lt;/b&gt;','0c814e924e5b8a078626d1913a2ca7b0','salt1160183726',1160183726,1160183726,0,0),(15,'iago&#039;&lt;b&gt;test&lt;/b&gt;','aaaa','',0,1160183915,0,0),(16,'iago','password','',0,1161483937,0,0),(17,'ron','f8156f9400d2ef7f50544828569d3e24','salt1161483971',1161483971,1161483971,0,0),(18,'ron','ron','',0,1161483984,0,0),(19,'ron','ron','',0,1161484813,0,0),(20,'ron2','65b037c69c64a98b8ea247a673ca3bdf','salt1161487356',1161487356,1161487356,0,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

--
-- Table structure for table `tbl_weapon`
--

DROP TABLE IF EXISTS `tbl_weapon`;
CREATE TABLE `tbl_weapon` (
  `weapon_id` int(11) NOT NULL auto_increment,
  `weapon_weapontype_id` int(11) NOT NULL default '0',
  `weapon_name` varchar(256) NOT NULL default '',
  `weapon_dice` int(11) NOT NULL default '0',
  `weapon_adds` int(11) NOT NULL default '0',
  `weapon_minimum_strength` int(11) NOT NULL default '0',
  `weapon_minimum_dexterity_melee` int(11) NOT NULL default '0',
  `weapon_cost` double NOT NULL default '0',
  `weapon_description` text NOT NULL,
  `weapon_minimum_dexterity_missile` int(11) NOT NULL default '0',
  `weapon_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`weapon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_weapon`
--


/*!40000 ALTER TABLE `tbl_weapon` DISABLE KEYS */;
LOCK TABLES `tbl_weapon` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_weapon` ENABLE KEYS */;

--
-- Table structure for table `tbl_weapontype`
--

DROP TABLE IF EXISTS `tbl_weapontype`;
CREATE TABLE `tbl_weapontype` (
  `weapontype_id` int(11) NOT NULL auto_increment,
  `weapontype_skill_id` int(11) NOT NULL default '0',
  `weapontype_ammo_id` int(11) NOT NULL default '0',
  `weapontype_name` varchar(256) NOT NULL default '',
  `weapontype_is_deleted` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`weapontype_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_weapontype`
--


/*!40000 ALTER TABLE `tbl_weapontype` DISABLE KEYS */;
LOCK TABLES `tbl_weapontype` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tbl_weapontype` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

