echo "User Registration"

patternName="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"
patternEmail="^([a-z0-9\_\-\+]+[\.]{0,1}[a-z0-9]+)@([a-z0-9]+)([\.]{0}[a-z]{0}|[\.]{1}[a-z]{2,5})\.([a-z]{2,5})$"
patternMobile="^([0-9]{1,2}[[:space:]][1-9]{1}[0-9]{9})$"

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


read -p "Enter your mobile number (Format : 91 7894561230) :" no
if [[ $no =~ $patternMobile ]]
then
	echo "Mobile number is correct"
else
	echo "Incorrect"
fi


read -p "Enter your password : " password
if [[ ${#password} -ge 8 ]] && [[ "$password" == *[[:upper:]]* ]]
then
	echo "Password is correct"
else
	echo "please enter correct password(contain at least one upper case, one special character and one numeric value)";
fi
