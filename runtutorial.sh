mkdir tesseract-ocr
git clone --depth 1 https://github.com/tesseract-ocr/tesseract.git
git clone --depth 1 https://github.com/tesseract-ocr/langdata.git
cd tesseract/tessdata
wget https://raw.githubusercontent.com/tesseract-ocr/tessdata_best/master/eng.traineddata
wget https://raw.githubusercontent.com/tesseract-ocr/tessdata_best/master/osd.traineddata
