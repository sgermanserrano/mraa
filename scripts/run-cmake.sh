#!/usr/bin/env bash

set -x
set -e

# Run cmake
cmake \
  -DBUILDARCH=$BUILDARCH \
  -DBUILDDOC=$BUILDDOC \
  -DBUILDSWIG=$BUILDSWIG \
  -DBUILDSWIGPYTHON=$BUILDSWIGPYTHON \
  -DBUILDSWIGNODE=$BUILDSWIGNODE \
  -DBUILDSWIGJAVA=$BUILDSWIGJAVA \
  -DUSBPLAT=$USBPLAT \
  -DFIRMATA=$FIRMATA \
  -DONEWIRE=$ONEWIRE \
  -DJSONPLAT=$JSONPLAT \
  -DIMRAA=$IMRAA \
  -DFTDI4222=$FTDI4222 \
  -DENABLEEXAMPLES=$ENABLEEXAMPLES \
  -DINSTALLTOOLS=$INSTALLTOOLS \
  -DBUILDTESTS=$BUILDTESTS \
  -DUSEPYTHON3TESTS=$USEPYTHON3TESTS \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -H. \
  -Bbuild
