#!/bin/bash

cd ./imageshin
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${filename}
        cp ${filename}.txt ../gt
        tesseract ${img_file}  ../ocr/${filename} --psm 6 --oem 1 -l hin 
    done   
    
 cd ../imagessan
 cd ./groundtruthimages
     img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${filename}
        cp ${filename}.txt ../../gt
        tesseract  ${img_file}  ../../ocr/${filename} --psm 6 --oem 1 -l san 
    done   
    
 cd ..
 cd ./oldstylefontsamples
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${filename}
        cp ${filename}.txt ../../gt
        tesseract  ${img_file}  ../../ocr/${filename} --psm 6 --oem 1 -l san 
    done       
    
    img_files=$(ls *.tif)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .tif)
        echo ${filename}
        cp ${filename}.txt ../../gt
        tesseract  ${img_file}  ../../ocr/${filename} --psm 6 --oem 1 -l san 
    done 
    
