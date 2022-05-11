#!/bin/bash -x

echo Welcome to Employee Wage Computation
WORK_PER_HOUR=20
isPresent=1

empcheck=$((RANDOM%2))

if [ $empcheck == $isPresent ]
then
	daily_work_hr=8
else
	daily_work_hr=0
fi
salary=$(( $WORK_PER_HOUR*$daily_work_hr ))
echo $salary
