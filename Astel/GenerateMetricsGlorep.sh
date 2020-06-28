#!/bin/bash

# GloRep Test Cases

cp ./Results/Glorep/LoginGlorepRun/Login_Out.xml  ./RobotMetrics/
cp ./Results/Glorep/ResellerGlorepRun/Reseller_Out.xml   ./RobotMetrics/
cp ./Results/Glorep/Administration/Administration_Out.xml  ./RobotMetrics/
cp ./Results/Glorep/Configuration/Configuration_Out.xml   ./RobotMetrics/
cp ./Results/Glorep/Customer/Customer_Out.xml    ./RobotMetrics/
cp ./Results/Glorep/Quotes/Quotes_Out.xml  ./RobotMetrics/

robotmetrics --inputpath ./RobotMetrics/ --output "Administration_Out.xml,Configuration_Out.xml,Customer_Out.xml,Login_Out.xml,Quotes_Out.xml,Reseller_Out.xml"  --logo "456.png"