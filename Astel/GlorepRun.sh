#!/bin/bash


# GloRep Test Cases
robot -o Login_Out.xml -d Results/Glorep/LoginGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
robot -o Reseller_Out.xml -d Results/Glorep/ResellerGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Reseller.robot
robot -o Administration_Out.xml -d Results/Glorep/Administration --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Administration.robot
robot -o Configuration_Out.xml -d Results/Glorep/Configuration --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Configuration.robot
robot -o Customer_Out.xml -d Results/Glorep/Customer --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Customer.robot
robot -o Quotes_Out.xml -d Results/Glorep/Quotes --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Quotes.robot