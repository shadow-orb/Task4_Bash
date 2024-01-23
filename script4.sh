#!/bin/bash

echo "meta_data extractor initiated"

#here we input the desired file or directory
echo "please enter the target directory or file"
read exdir

#this is used for getting the meta_data
exiftool $exdir

echo "extraction complete"
