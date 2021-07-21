echo "Enter number"
read n
s=0
rev=0
t=$n
while [ $n -gt 0 ]
do
	s=`expr $n % 10`
	echo $s
	n=`expr $n / 10`
	rev=`expr $rev \* 10`
	rev=`expr $rev + $s`
done
if [ $t -eq $rev ]
then 
echo "Palindrome"
else
echo "Not Palindrome"
fi