#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guess the number of files in the directory and enter a number:"
num=""
while [[! $num =~ ^Congratulations ]]
do
read value
num = $(result $value $actual)
echo $num
done

actual=$(ls -A1 | wc -l)
function result{
if [[$1=~[^[0-9]] ]] || [[$2 =~[^[0-9]] ]]
then 
echo "Enter value greater than zero"
elif [[$1 -gt $2]]
then
echo "too high value, try with little lower values"
elif [[$1 -lt $2]]
then
echo "too low value, try with little higher values"
elif [[$1 -eq $2]]
then
echo "Congratulation, that was correct"
fi
}
