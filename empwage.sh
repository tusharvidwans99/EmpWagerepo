#!/bin/bash -x

echo Welcome to Employee Wage Computation
WAGE_PER_HOUR=20
isFulltime=1
isParttime=0

empcheck=$((RANDOM%2))

if [ $empcheck == $isFulltime ]
then
	daily_work_hr=12
elif [ $empcheck == $isParttime ]
then
	daily_work_hr=8
else
	daily_work_hr=0
fi
salary=$(( $WAGE_PER_HOUR*$daily_work_hr ))
echo $salary
