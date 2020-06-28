echo off
python --version

REM REM GloRep Test Cases
REM robot -o Login_Out.xml -d Results/Glorep/LoginGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Login.robot
REM robot -o Reseller_Out.xml -d Results/Glorep/ResellerGlorepRun --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Reseller.robot
REM robot -o Administration_Out.xml -d Results/Glorep/Administration --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Administration.robot
REM robot -o Configuration_Out.xml -d Results/Glorep/Configuration --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Configuration.robot
REM robot -o Customer_Out.xml -d Results/Glorep/Customer --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Customer.robot
REM robot -o Quotes_Out.xml -d Results/Glorep/Quotes --variable SITENAME:GloRep --variable BROWSER:chrome ./TestSuites/Quotes.robot