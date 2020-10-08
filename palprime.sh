#!/bin/bash -x

function palindrome(){
read -p "Enter no: " no
m=$no
rev=0

while [ $no -gt 0 ]
do
	r=`expr $no % 10`
	rev=`expr $rev \* 10 + $r`
	no=`expr $no / 10`
done

if [ $m -eq $rev ]
then
	echo "$m is palindrome"
else
	echo "$m is not palindrome"
fi

for (( i=1; i<=$(($m/2)); i++ ))
do
	p=$(($m%$i))
	if [ $p -eq 0 ]
	then
		((count++))
	fi
	if [ $count > 1 ]
	then
		echo "$m Its not prime Number."
	break
	fi
done

if [ $count -le 1 ]
then
	echo "$m is prime Number"
fi
}
palindrome
