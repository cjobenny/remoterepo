while [ true ]
do
echo "Choose Your Option:"
echo "1.Add"
echo "2.Substract"
echo "3.Division"
echo "4.Multiply"
echo "5.Exit"
read opt
if [ $opt -eq "5" ]
then
	exit
fi
echo "Enter first Number:"
read n1
echo "Enter second Number:"
read n2
echo "Result is->"
if [ $opt -eq "1" ] 
then
	echo $((n1+n2)) 
elif [ $opt -eq "2" ] 
then
	echo $((n1-n2))
elif [ $opt -eq "3" ] 
then
	if [ $n2 -eq 0 ] 
	then
		echo "Cannot divisible by zero"
	elif [ $n2 -ne 0 ]
	then
 		echo `echo "scale=2; $n1 / $n2" | bc`
	fi
elif [ $opt -eq "4" ]
then
	echo `echo "scale=2; $n1 * $n2" | bc -l`
fi
done

