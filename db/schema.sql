-- schema.sql

-- This SQL script creates the database and tables for the fitness tracker application.

-- Create the database
CREATE DATABASE IF NOT EXISTS ftdb;

USE ftdb;

-- Create the users table
CREATE TABLE IF NOT EXISTS `users` (
    `username` varchar(50) NOT NULL,
    `password` char(60) NOT NULL,
    PRIMARY KEY (`username`)
);

-- Create the bodyfat table
CREATE TABLE IF NOT EXISTS `bodyfat` (
    `timestamp` date NOT NULL,
    `username` varchar(50) NOT NULL,
    `value` double NOT NULL,
    PRIMARY KEY (`timestamp`,`username`),
    KEY `username` (`username`),
    CONSTRAINT `bodyfat_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
);

-- Create the musclemass table
CREATE TABLE IF NOT EXISTS `musclemass` (
  `timestamp` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`timestamp`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `musclemass_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
);