#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "Welcome UserRegistration"
echo "Enter First Name"
read firstName
read lastName

function checkFirstName(){
	firstNamePattern="^[A-Z][a-zA-Z]{2,}"
	if [[ $firstName =~ $firstNamePattern ]]
	then
		echo "valid first Name"
	else
		echo "invalid first Name"
	fi
}

function checkLastName(){
	lastNamePattern="^[A-Z][a-zA-Z]{2,}"
	if [[ $lastName =~ $lastNamePattern ]]
	then
		echo "valid last Name"
	else
		echo "invalid last Name"
	fi
}


#checkFirstName
checkLastName

