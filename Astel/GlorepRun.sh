#!/bin/bash


# GloRep Test Cases
robot -o Login_Out.xml -d Results/Glorep/LoginDMSRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
