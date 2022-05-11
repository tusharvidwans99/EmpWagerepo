#!/bin/bash -x

echo Welcome to Employee Wage Computation

WAGE_PER_HOUR=20
isFulltime=1
isParttime=0
MAX_DAYS=20
days=1
work_completed=0
MAX_WORK_HOUR_IN_MONTH=100

function work_hours() {
empcheck=$((RANDOM%3))
case $empcheck in
	$isFulltime)
		daily_work_hr=12
		;;
	$isParttime)
		daily_work_hr=8
		;;
	*)
		daily_work_hr=0
		;;
esac
return $daily_work_hr

}

while [[ $days -le $MAX_DAYS && $work_completed -lt $MAX_WORK_HOUR_IN_MONTH ]]
do
empcheck=$((RANDOM%3))
work_hours
work_completed=$(( $work_completed+$daily_work_hr ))
salary=$(( $WAGE_PER_HOUR*$daily_work_hr ))
echo $salary
days=$(($days+1))
done
