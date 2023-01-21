#!/usr/bin/env bash

#ColorText
red=`tput setaf 1`
green=`tput setaf 2`

#Base Path 
MyPath=/Users/ayc1021/Documents/Main/

#Variable for reading the rest of the path
MyText1="/Users/ayc1021/Documents/..."
MyText2="G6(US/OUS)_OS(iOS/Android)_Version(Ex.1.10.1)"
AvailablePaths="/Releases ---- /Tickets ---- /Spikes ---- /Other "
TodayDate=$(date +%F)
addEvidence="Add extra infor for the Evidence file:" 



echo $(tput bold)Initial Path:$(tput sgr 0) $green$MyText1$(tput sgr 0)
echo $(tput bold)Convention:$(tput sgr 0) $green$MyText2$(tput sgr 0)
echo $(tput bold)Paths:$(tput sgr 0) $red$AvailablePaths$(tput sgr 0)

#Input from user
read MissingPath

#Variable to hold complete path
CompletePath=$MyPath$MissingPath

mkdir -p $CompletePath && touch $_/Evidence.txt 
mkdir -p $CompletePath/img
mkdir -p $CompletePath/builds
mkdir -p $CompletePath/xml

# Add text to Evidence.txt 
echo $green$addEvidence$(tput sgr 0)
read txtInitialText
echo $txtInitialText" --- "$TodayDate > $CompletePath/Evidence.txt 

open $CompletePath
open $CompletePath/Evidence.txt 



