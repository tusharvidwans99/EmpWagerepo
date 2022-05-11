#!/bin/bash -x

echo Welcome to Employee Wage Computation

isPresent=1

empcheck=$((RANDOM%2))

if [ $empcheck == $isPresent ]
then
	echo Employee is Present
else
	echo Employee is Absent
fi
