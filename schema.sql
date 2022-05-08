DROP DATABASE IF EXISTS `DB`;
CREATE DATABASE `DB`;
USE `DB`;

DROP TABLE IF EXISTS `ingress`;
CREATE TABLE `ingress` (
  `crawl_time` datetime,
  `ingest_time` datetime,
  `pipeline_name` varchar(256) NOT NULL,
  `ingest_key` varchar(256) NOT NULL,
  `ingest_value` varchar(1024) NOT NULL
);

DROP TABLE IF EXISTS `egress`;
CREATE TABLE `egress` (
  `crawl_time` datetime,
  `local_time` datetime,
  `city` varchar(256) NOT NULL,
  `weather` varchar(256) NOT NULL,
  `temperature` int
);

DROP TABLE IF EXISTS `error_log`;
CREATE TABLE `error_log` (
  `ingest_time` datetime,
  `error_time` datetime,
  `pipeline_name` varchar(256) NOT NULL,
  `ingest_key` varchar(256) NOT NULL,
  `ingest_value` varchar(256) NOT NULL,
  `error_message` text NOT NULL
);