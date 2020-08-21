echo "User Registration"

patternName="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

read -p "Enter your name : " name lastName

if [[ $name =~ $patternName ]] && [[ $lastName =~ $patternName ]]
then
	echo "First name and Last name is correct";
else
	echo "Please enter valid Name"
fi
