CREATE TABLE `f1_telemetry`.`event_penalty` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_uid` BIGINT UNSIGNED NOT NULL,
  `penalty_type` TINYINT UNSIGNED NULL,
  `infringement_type` TINYINT UNSIGNED NULL,
  `index` TINYINT UNSIGNED NOT NULL,
  `other_index` TINYINT UNSIGNED NULL,
  `time` TINYINT UNSIGNED NULL,
  `lap_num` TINYINT UNSIGNED NULL,
  `places_gained` TINYINT UNSIGNED NULL,
  `frame` INT UNSIGNED NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `f1_telemetry`.`actual_tyre` (
`id` TINYINT UNSIGNED NOT NULL,
`name` VARCHAR(45) NULL,
PRIMARY KEY (`id`));

CREATE TABLE `f1_telemetry`.`visual_tyre` (
  `id` TINYINT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('16', 'C5');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('17', 'C4');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('18', 'C3');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('19', 'C2');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('20', 'C1');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('7', 'Intermediate');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('8', 'Wet');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('9', 'Dry');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('10', 'Wet');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('11', 'Super Soft');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('12', 'Soft');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('13', 'Medium');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('14', 'Hard');
INSERT INTO `f1_telemetry`.`actual_tyre` (`id`, `name`) VALUES ('15', 'Wet');

INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('16', 'Soft');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('17', 'Medium');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('18', 'Hard');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('7', 'Intermediate');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('8', 'Wet');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('9', 'Dry');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('10', 'Wet');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('15', 'Wet');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('19', 'Super Soft');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('20', 'Soft');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('21', 'Medium');
INSERT INTO `f1_telemetry`.`visual_tyre` (`id`, `name`) VALUES ('22', 'Hard');
