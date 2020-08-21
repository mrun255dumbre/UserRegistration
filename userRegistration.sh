echo "User Registration"

patternName="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

read -p "Enter your name : " name

if [[ $name =~ $patternName ]]
then
	echo "First name is correct";
else
	echo "Please enter valid Name"
fi
