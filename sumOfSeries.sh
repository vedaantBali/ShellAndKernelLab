echo "Enter n"
read n
sum=`expr $n + 1`
sum=`expr $sum / 2`
sum=$((sum*n))
echo $sum