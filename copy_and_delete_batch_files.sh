#!/bin/bash
dir_copied_batch_files=copied_batch_files
dir_batch_files=../batch_files
mkdir $dir_copied_batch_files
cp -f -r $dir_batch_files/*.bat $dir_copied_batch_files/
echo $?
