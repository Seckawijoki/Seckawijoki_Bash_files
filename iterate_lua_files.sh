#!/bin/bash
for file in ../lua_files/*.lua
do
	if test -f $file
	then
		echo $file is a lua file.
	fi
	if test -d $file
	then
		echo $file is a directory.
	fi
done
