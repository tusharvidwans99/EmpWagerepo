#!/bin/bash -x

echo Welcome to Employee Wage Computation
WAGE_PER_HOUR=20
isFulltime=1
isParttime=0

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

salary=$(( $WAGE_PER_HOUR*$daily_work_hr ))
echo $salary
