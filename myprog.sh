#!bin/bash

createDIR=~/HW_03/temp

mkdir $createDIR

echo "...create temp directory..."

cp num1.txt temp
cp num2.txt temp
cp cal.sh temp

echo "...copy files to temp directory..."

PS3='select menu: '

select calc in "add" "sub" "div" "mul"
do
	
	echo "...$calc selected..."
	echo "...run calculater..."
	
	case $calc in
	add) source cal.sh add;;
	sub) source cal.sh sub;;
	div) source cal.sh div;;
	mul) source cal.sh mul;;
	
	esac
	
	
	
done






