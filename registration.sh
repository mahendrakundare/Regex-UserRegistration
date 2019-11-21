#!/bin/bash -x
shopt -s extglob #turn on extended globbing
echo "Welcome UserRegistration"
echo "Enter First Name"
read firstName
read lastName
read email
read mobile
read password

function checkFirstName(){
	firstNamePattern="^[A-Z][a-zA-Z]{2,}$"
	if [[ $firstName =~ $firstNamePattern ]]
	then
		echo "valid first Name"
	else
		echo "invalid first Name"
	fi
}

function checkLastName(){
	lastNamePattern="^[A-Z][a-zA-Z]{2,}$"
	if [[ $lastName =~ $lastNamePattern ]]
	then
		echo "valid last Name"
	else
		echo "invalid last Name"
	fi
}


function checkEmail(){
	emailPattern="^[a-zA-Z0-9][-._+a-zA-Z0-9]*[@]{1}[a-z]*[.]{1}[a-z]{2,3}[.]{0,1}([a-z]{2,3}){0,1}$"
   if [[ $email =~ $emailPattern ]]
   then
      echo "valid email"
   else
      echo "invalid email"
	fi
}

function checkMobile(){
	mobilePattern="^[0-9]{2,2}[[:space:]][0-9]{10}$"
	if [[ $mobile =~ $mobilePattern ]]
	then
		echo "valid mobile"
	else
		echo "invalid mobile"
	fi
}


function checkPassword(){
	passwordPattern="^[a-zA-Z]{8,}"
	if [[ $password =~ $passwordPattern ]]
	then
		echo "valid password"
	else
		echo "invalid password"
	fi
}

checkFirstName
checkLastName
checkEmail
checkMobile
checkPassword
