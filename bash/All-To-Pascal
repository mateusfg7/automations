#!/bin/bash

for file in $(ls); do
  formated_file=$(echo $file | sed -E 's/^.*$/\L&/ ; s/\w+/\u&/g')

  mv $file $formated_file
done
