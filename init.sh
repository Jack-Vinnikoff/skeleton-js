#!/bin/bash

currentDirectoryName=${PWD##*/}         # to assign to a variable
currentDirectoryName='%s\n' "${currentDirectoryName:-/}"    # to correct for the case where PWD=/
if [ $? -eq 127 ]
 then
   echo "you have error"
 fi
echo $?
git remote set-url origin git@github.com:vicman-wi/wi-backend.git
echo '--------' "${$?}"
#$ declare -r VAR1='Hello world'

#echo "please enter name directory"
#read directoryName
#echo "please enter url repository"
#read repositoryName

#echo $$
echo $1
echo 'Hello WORDL'
echo $?
#sudo apt install rename
#cd ..
#pwd
#mv ${currentDirectoryName} 'test-js3'
#ls
#printf '%s\n' "${test.length}"
#printf '%s\n' "${VAR1}"

