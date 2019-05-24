## ImageMagick container

#### Tests status

[![Build Status](https://travis-ci.org/pawelpiwosz/docker-imagemagick.svg?branch=master)](https://travis-ci.org/pawelpiwosz/docker-imagemagick)

### Synopsis

ImageMagick is a set of libraries to manipulate images.  
[Home page](https://imagemagick.org/) of the project.

### Pull image

In order to pull image from dockerhub registry, run:

```
docker pull almerhor/imagemagick
```

### Build

In order to build the image, run:

```
docker build -t imagemagick .
```

### Run

Regarding the fact, that you work on local file and ImageMagick is
a containerized service, the directory where image is located has to be
mounted during the run. Docker uses the directory `/bucket` as a work
directory, so the executing command should look like:

```
docker run --rm -v $(pwd)/bucket/:/bucket imagemagick \
  convert plant.jpg -resize 50% plant-resized.jpg
```

File `plant.jpg` is in `bucket` directory in this repo, and was downloaded
from [here](https://pixabay.com/photos/plant-succulent-potted-white-space-2004483/).
This file is used for testing scripts.
