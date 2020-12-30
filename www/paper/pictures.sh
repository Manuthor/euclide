#!/bin/bash
set -exu

cd figures
find . -iname "*.png" -exec convert \{\} eps2:\{\}.eps \; -print
for i in ls *.png.eps
do
  [ ! -f "${i}" ] && continue
  filename=${i%.*}
  echo $filename
  filename2=${filename%.*}
  echo $filename2
  mv "${i}" "${filename2}".eps
done
cd ..

