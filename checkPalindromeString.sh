echo "Input the string without space"
read str
for i in $(seq 0 ${#str}) ; do
revstr=${str:$i:1}$revstr
done
echo "The given string is " $str
if [ "$str" = "$revstr" ]; then
        echo "It is a palindrome."
else
        echo "It is not a palindrome."
fi