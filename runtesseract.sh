#!/bin/bash

echo "Images from Shreeshrii/imageshin"
cd ./imageshin-save
    img_files=$(ls *.png)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .png)
        echo ${filename}
        cp ${filename}.txt ../gt
        tesseract ${img_file}  ../ocr/${filename} --psm 6 --oem 1 -l hin 
    done   
    
 cd ../IIIT_Hindi_100-save
 echo "Images from http://ocr.iiit.ac.in/Hindi100.html"
 cd ./Images
     img_files=$(ls *.jpg)
    for img_file in ${img_files}; do
        filename=$(basename "${img_file##*/}" .jpg)
        echo ${filename}
        cp ../GT/${filename}.txt ../../gt
        tesseract  ${img_file}  ../../ocr/${filename} --psm 6 --oem 1 -l san 
    done   
       
    
 cd ../imagessan-save
 echo "Images from Shreeshrii/imagessan/groundtruthimages"
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
  echo "Images from Shreeshrii/imagessan/oldstylefontsamples"
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
    
