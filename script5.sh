#!/bin/bash

echo "Random password generator initiated"

#this specifies the length of the generated passwords
echo "Please input the desired length"
read passwordlength

#this specifies the complexity of the generated passwords
echo "Password specifications:"

echo "Would you like to include capitalized letters? (yes/no)"
read cap

if [ $cap = "yes" ]
	then 
		capOption="-c"
	else
		capOption="-A"
fi

echo "Would you like to include numbers? (yes/no)"
read num

if [ $num = "yes" ]
	then 
		numOption="-n"
	else
		numOption="-0"
fi

echo "Would you like to include sympols? (yes/no)"
read sym

if [ $sym = "yes" ]
	then 
		symOption="-y"
	else
		numOption=" "
fi

#the passwords are generated here
echo "Here are your passwords:"

pwgen $capOption $numOption $symOption $passwordlength

echo "Thank you for using my password generator"