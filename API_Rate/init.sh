#!/bin/bash
read -p "Please input your mysql user:" user
read -p "Please input your mysql password:" password
mysql --user=${user} --password=${password} << eof

#delete Exchange_rate_table database

#DROP DATABASE Exchange_rate_table;

eof

mysql --user=${user} --password=${password} << eof

#init Exchange_rate_table database

CREATE DATABASE Exchange_rate_table;

USE Exchange_rate_table;

CREATE TABLE USD(
     ID INT AUTO_INCREMENT primary key,
     Bank_Name TEXT,
     Buying_Rate TEXT,
     Cash_Buying_Rate TEXT,
     Selling_Rate TEXT,
     Cash_Selling_Rate TEXT,
     Update_time TEXT
   )character set = utf8;


CREATE TABLE EUR(
     ID INT AUTO_INCREMENT primary key,
     Bank_Name TEXT,
     Buying_Rate TEXT,
     Cash_Buying_Rate TEXT,
     Selling_Rate TEXT,
     Cash_Selling_Rate TEXT,
     Update_time TEXT
   )character set = utf8;

CREATE TABLE GBP(
     ID INT AUTO_INCREMENT primary key,
     Bank_Name TEXT,
     Buying_Rate TEXT,
     Cash_Buying_Rate TEXT,
     Selling_Rate TEXT,
     Cash_Selling_Rate TEXT,
     Update_time TEXT
   )character set = utf8;

CREATE TABLE JPY(
     ID INT AUTO_INCREMENT primary key,
     Bank_Name TEXT,
     Buying_Rate TEXT,
     Cash_Buying_Rate TEXT,
     Selling_Rate TEXT,
     Cash_Selling_Rate TEXT,
     Update_time TEXT
   )character set = utf8;

CREATE TABLE CND(
     ID INT AUTO_INCREMENT primary key,
     Bank_Name TEXT,
     Buying_Rate TEXT,
     Cash_Buying_Rate TEXT,
     Selling_Rate TEXT,
     Cash_Selling_Rate TEXT,
     Update_time TEXT
   )character set = utf8;

eof
