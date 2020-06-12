#!/bin/bash


# GloRep Test Cases
# robot -o Login_Out.xml -d Results/Glorep/LoginGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
robot -o Reseller_Out.xml -d Results/Glorep/ResellerGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Reseller.robot
