echo off
python --version

REM REM GloRep Test Cases
REM robot -o Login_Out.xml -d Results/Glorep/Login --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
REM robot -o Customer_Out.xml -d Results/Glorep/Customer --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Customer.robot
robot -o Customer_Out.xml -d Results/Glorep/Quotes --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Quotes.robot