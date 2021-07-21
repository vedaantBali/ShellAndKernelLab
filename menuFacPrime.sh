echo \"1. Factorial of a Number\"
echo \"2. Prime or not\"
echo \"3. Odd or even\"
echo \"4. Exit\"
echo -n "Enter your menu choice [1-4]: "
while :
do
read expr
case $expr in
1)      echo -n "Enter a number: "
        read num
        fact=1
        while [ $num -gt 1 ]
        do
                fact=$((fact*num))
                num=$((num - 1))
        done
        echo "Factorial is $fact"
        ;;
2)      echo -n "Enter a number: "
        read num
        i=2
        f=0
        while test $i -le `expr $num / 2`
        do
        if test `expr $num % $i` -eq 0
        then
        f=1
        fi
        i=`expr $i + 1`
        done
        if test $f -eq 1
        then
        echo "$num is not a prime number"
        else
        echo "$num is a prime number"
        fi
        ;;
3)      echo -n "Enter the number: "
        read num
        rem=$(($num%2))
        if [ $rem -eq 0 ]
        then
        echo "$num is even"
        else
        echo "$num is odd"
        fi
        ;;
4)      echo "Bye....."
        exit;;
esac
echo -n "Enter your menu choice [1-4]: "
done