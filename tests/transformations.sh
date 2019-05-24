#! /bin/bash

actions=(
  "convert plant.jpg -resize 50% resized50.jpg"
  "convert plant.jpg plant.png"
  "convert dupa"
  "convert plant.jpg -blur 40x40 blur.jpg"
  "convert plant.jpg -rotate 90 rotate.jpg"
  "convert plant.jpg -negate negate.jpg"
)
bucketpath="$(pwd)/bucket"
for action in "${actions[@]}"
do
  echo ${action}
  docker run --rm -v ${bucketpath}:/bucket imagemagick ${action}
  if [[ $? != 0 ]]
  then
    echo "${action} failed!"
    exit 1
  fi
done
