#!/bin/bash
rm -rf ./out
mkdir ./out
mkdir ./out/ocr
echo "h1. new Dummy README file" > ./out/dummy.textile
echo "h1. new OCRed txt" > ./out/ocr/dummy.txt
echo "h1. new OCR Eval report" > ./out/index.html
ls ./out
ls ./out/ocr
ls
