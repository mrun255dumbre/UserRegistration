echo "User Registration"

patternName="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
patternEmail="^([a-z0-9\_\-\+]+[\.]{0,1}[a-z0-9]+)@([a-z0-9]+)([\.]{0}[a-z]{0}|[\.]{1}[a-z]{2,5})\.([a-z]{2,5})$"

read -p "Enter your name : " name lastName

if [[ $name =~ $patternName ]] && [[ $lastName =~ $patternName ]]
then
	echo "First name and Last name is correct";
else
	echo "Please enter valid Name"
fi


read -p "Enter your email : " email
if [[ $email =~ $patternEmail ]]
then
	echo "Email is correct"
else
	echo "Please enter valid Email"
fi
