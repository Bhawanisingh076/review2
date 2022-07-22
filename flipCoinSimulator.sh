#!/bin/bash -x

Heads=0
Tails=0

function flip()
{
count=$((RANDOM%2))
if [ $count -eq 1 ]
then
 Heads=$(($Heads+1))
else
 Tails=$(($Tails+1))
fi
}

while [[ $Heads -lt 21 && $Tails -lt 21 ]]
do
flip
done

if [ $Heads -gt $Tails ]
then
echo "Heads is the winner" $Heads
elif [ $Tails -gt $Heads ]
then
echo "Tails is the winner" $Tails
fi
