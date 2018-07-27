#!/bin/bash
for file in ../cpp_files/*.cpp
do
	if test -f $file
	then
		echo $file is a cpp file.
	fi
	if test id $file
	then
		echo $file is a directory.
	fi
done
