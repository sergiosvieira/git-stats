#!/bin/bash
# Author: Sérgio Vieira <sergiosvieira@gmail.com>
# 10 Oct 2017

author=$1
init_year=$(date +'%Y')
final_year=$(date +'%Y')
months=(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

if [ ! -z "$2" ]
then
	init_year=$2
fi

if [ ! -z "$3" ]
then
	final_year=$3
fi

if [ $# -lt 1 ]
then
	printf "Usage: sh $0 <author's name>\n- Optional parameters:\n  <initial year>\n  <final year>"
	exit 1
fi

for year in `seq $init_year $final_year`
do
	index=0
	for month in "${months[@]}"
	do
		after="01 $month $year"
		index=$((index + 1))
		if [ "$index" -eq 12 ]
		then
			index=0
			year=$((year + 1))
		fi
		next_month="${months[$index]}"
		before="01 $next_month $year"
		stat=$(git shortlog -s -n --all --author="$author" --after="$after" --before="$before")
		output_date=$(date --date="$after" +"%d/%m/%Y")
		if [ ! -z "$stat" ]
		then
			total=`echo $stat |cut -d" " -f1`			
			echo $output_date $total
		else
			echo $output_date 0
		fi
	done
done