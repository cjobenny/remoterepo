echo "Enter a Number"
read n
for((i=1;i<=$n;i++))
do
echo "Enter $i th Number"
read s
sum=$((sum+s))
done
echo "Average is " `echo "scale=2; $sum / $n" | bc`
