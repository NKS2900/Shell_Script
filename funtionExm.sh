#!/bin/bash 

function myFunction(){
	echo $1
}

result=$( myFunction $((RANDOM%2)) )

if [ $result -eq 1 ]
then
	echo "Sucess"
else
	echo "Failed"
fi