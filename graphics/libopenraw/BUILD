#If libjpeg-turbo is installed this sedit will cause the make to barf.
if in_depends $MODULE jpeg; then
  sedit "s/TRUE/JPEG::TRUE/" lib/jfifcontainer.cpp
fi &&

default_build
