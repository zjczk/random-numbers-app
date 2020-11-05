#! /bin/bash

echo "Printing numbers from 1-10 in random order:"

numbers=($(seq 1 10 ))
randoms=()

INDEX=0
while [ ${#randoms[@]} -lt 10 ]
do
((INDEX++))
RANDOMOUS=$(( ( RANDOM % 10 ) )) 
if [[ ! " ${randoms[@]} " =~ " ${numbers[RANDOMOUS]} " ]]; then
echo "Number ${numbers[RANDOMOUS]}"
randoms+=(${numbers[RANDOMOUS]})
fi
done

echo "Succefully designed: "
echo "${randoms[@]}"
echo -en '\n'
echo "Side note: run $((INDEX-10)) additional checks this time."
[ ${INDEX} -gt 30 ] && echo "Code can be run better." || echo "Still good performance."
