#!/bin/bash

echo " images from tif"

cd ${TRAVIS_BUILD_DIR}/tif
    img_files=$(ls *.tif)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .tif)
        echo ${img_file}
        tesseract ${img_file} ${TRAVIS_BUILD_DIR}/ocr/${filename} --psm 6 --oem 1 -l kan 
    done   
  
