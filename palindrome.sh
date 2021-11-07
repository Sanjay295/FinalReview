echo ”To check whether given string is palindrome or not”
echo "Enter the string"
read str

len=$(echo "$str" | wc -c)

while [ $len -gt 0 ]
do
ch=$(echo "$str" | cut -c $len)
          echo -n "$ch"
          s1=$s1$ch
          len=`expr $len - 1`
done
echo ""

if [ $s1 != $str ]
then
echo " The string is not palindrome"
else
echo "The string is palindrome"
fi