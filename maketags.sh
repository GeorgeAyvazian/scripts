#!/bin/bash

args=("$@")
arglength="${#args[*]}"
lang=${args[0]}
case "$lang" in
	java)
		ctags -R --language-force=java --verbose=yes --totals=yes
		find ./ -iname "*.java" > cscope.files
		cat /usr/local/src/jdk1.7.0_45/cscope.files >> cscope.files
#		cat "${args[@]:1:$arglength}" >> cscope.files
		cscope -b -R -q -i cscope.files 
		;;
	c)
		ctags -R --language-force=c++ --verbose=yes --totals=yes
		find ./ -iname "*.cpp" > cscope.files
		find ./ -iname "*.c" >> cscope.files
		find ./ -iname "*.h" >> cscope.files
		find ./ -iname "*.hpp" >> cscope.files
		cat /usr/include/cscope.files >> cscope.files
		cat /usr/local/include/cscope.files >> cscope.files
		for i in "${args[@]:1}"
		do
			cat $i >> cscope.files
		done
	#		cat "${args[@]:1:$arglength}" >> cscope.files
		cscope -b -R -q -i cscope.files
		;;
esac
