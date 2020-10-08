#!/bin/bash -x
echo "1. Degreee to Fer. 2. Fer. to Celcius"
read -p "Enter your Option: " no
read -p "Enter the Degree you want to change: " d
if [ $no -eq 1 -a $d -ge 0 -a $d -le 100 ] || [ $no -eq 2 -a $d -ge 32 ]
then
	function conversion(){
	case $1 in
		1)
			res=`echo $d | awk '{print $1*(9/5)}'`
			op=`echo $res | awk '{print $1 +32}'`
			echo "$op Fer";;
		2)
			res=`echo $d | awk '{print $1-32}'`
                        op=`echo $res | awk '{print $1*(5/9)}'`
                         echo "$op Cel";;
		*)
			echo "Enter correct choice...";;

	esac
}

cal=$( conversion $no )
echo $cal
else
	echo "The no Range Betn 0-100 or 32-212f"
fi
