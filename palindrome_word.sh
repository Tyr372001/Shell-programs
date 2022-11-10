len=`expr $len - 1`
i=1
flag=0
while [ $i -lt $len ]
do
        f=`echo $string | cut -c $i`
        l=`echo $string | cut -c $len`
        if [ $f != $l ]
        then
                flag=1
                break
        fi
        i=`expr $i + 1`
        len=`expr $len - 1`
done
if [ $flag -eq 0 ]
then
        echo "PALINDROME"
else
        echo "NOT PALINDROME"
fi

