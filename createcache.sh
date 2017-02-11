#!/bin/bash

   git submodule add https://github.com/Shreeshrii/imageshin
   mv ./imagessan ./imagessan-save
   
   git submodule add https://github.com/Shreeshrii/imagessan
   mv ./imageshin ./imageshin-save
   
   wget -O ./IIIT_Hindi_100.zip  http://ocr.iiit.ac.in/IIIT_Hindi_100.zip
   unzip ./IIIT_Hindi_100.zip
   mv ./IIIT_Hindi_100 ./IIIT_Hindi_100-save
   
