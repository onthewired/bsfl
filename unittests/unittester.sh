check(){
	result=2
	echo "Testing $1 : "
	tested=$($1)
	result=$?
if [[ $result == $2 ]]
then
	echo [ ok ]
else 
	echo [ ko ]
	errnum=$((errnum+1))
fi
}
conclude(){
	if [[ $errnum == 0 ]]
then
	echo "All test OK"
elif [[ $errnum == 1 ]]
then
    echo "There is 1 error"
else 
	echo "There is $errnum errors"
fi
}
