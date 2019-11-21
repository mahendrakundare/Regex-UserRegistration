#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "Welcome UserRegistration"
echo "Enter First Name"
read firstName

function checkFirstName(){
	firstNamePattern="^[A-Z][a-zA-Z]{2,}"
	if [[ $firstName =~ $firstNamePattern ]]
	then
		echo "valid first Name"
	else
		echo "invalid first Name"
	fi
}

checkFirstName
