#!/bin/bash

clear

echo "### START SCRIP ###"
echo

echo "before: $(du -sh $1)" >> result.txt

curr_dir=$(pwd)

cd $1

for file in $(ls); do
  echo "#> Start compress and delete $file"
  echo

  7z a -bt -bb3 "$file.7z" "$file" && rm -r $file
  
  echo
  echo "#> Finish compress $file"
done

cd $curr_dir

echo "after: $(du -sh $1)" >> result.txt
