#!/bin/bash

value1=$(<num1.txt)
value2=$(<num2.txt)

if [ -z "$1" ]; then
	echo "...none operator parameter..."
	PS3='select menu: '

	select calc in "add" "sub" "div" "mul"
	do
	
		echo ""
		echo "num1 : " $value1
		echo "num2 : " $value2
	
		case $calc in
		add) echo "op : add"
		let a=value1+value2
		echo "result : " $a
		break;;
	
		sub) echo "op : sub"
		let b=value1-value2
		echo "result : " $b
		break;;
		
		div) echo "op : div"
		let c=value1/value2
		echo "result : " $c
		break;;
		mul) echo "op : mul"
		let d=value1*value2
		echo "result : " $d
		break;;
		esac
		
	
	done

elif [ "$1" = "add" ]; then
	echo "op : add"
	let a=value1+value2
	echo "result : " $a
	break
	
elif [ "$1" = "sub" ]; then
	echo "op : sub"
	let b=value1-value2
	echo "result : " $b
	break

elif [ "$1" = "div" ]; then
	echo "op : div"
	let c=value1/value2
	echo "result : " $c
	break

elif [ "$1" = "mul" ]; then
	echo "op : mul"
	let d=value1*value2
	echo "result : " $d
	break

fi








