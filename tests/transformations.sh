#! /bin/bash

actions=(
    "convert plant.jpg -resize 50 resized50.jpg"
    "convert plant.jpg plant.png"
    "convert plant.jpg -blur 40x40 blur.jpg"
    "convert plant.jpg -rotate 90 rotate.jpg"
    "convert plant.jpg -negate negate.jpg"
)
bucketpath="$(pwd)/tests/bucket"
for action in "${actions[@]}"; do
    echo "${action}"
    if ! docker run --rm -v "${bucketpath}":/bucket imagemagick ${action}
    then
        echo "${action} failed!"
        exit 1
    fi
done
