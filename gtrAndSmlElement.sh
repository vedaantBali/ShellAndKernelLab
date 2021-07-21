echo "enter size of an array" 
read n 
for((i=0;i<n;i++)) 
do 
echo " enter the number for index $((i+1))" 
read nos[$i] 
done 
small=${nos[0]} 
greatest=${nos[0]} 
for((i=0;i<n;i++)) 
do 
if [ ${nos[$i]} -lt $small ]; then 
small=${nos[$i]}  
elif [ ${nos[$i]} -gt $greatest ]; then 
greatest=${nos[$i]} 
fi 
done  
echo "smallest number in an array is $small" 
echo "greatest number in an array is $greatest"