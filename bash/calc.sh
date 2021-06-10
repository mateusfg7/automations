#!/bin/bash

case $1 in
	"som")
	res=$(($2+$3));;

	"sub")
	res=$(($2-$3));;

	"mult")
	res=$(($2*$3));;

	"div")
	res=$(($2/$3));;

	*)
	echo -e "use:\ncalc [option] [number 1] [number 2]\n"
	echo -e "options\nsom - somar\nsub - subtrai\nmult - multiplicar\ndiv - dividir"
esac

echo $res