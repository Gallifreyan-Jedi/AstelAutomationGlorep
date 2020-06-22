echo off
python --version

REM REM GloRep Test Cases
REM robot -o Login_Out.xml -d Results/Glorep/Login --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
robot -o Customer_Out.xml -d Results/Glorep/Customer --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Customer.robot