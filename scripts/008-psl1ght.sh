#!/bin/sh -e
# psl1ght.sh by Dan Peori (dan.peori@oopo.net)

## Download the source code.
git clone -b highsierra-patch https://github.com/novi/PSL1GHT.git psl1ght

## Unpack the source code.
#rm -Rf psl1ght && mkdir psl1ght && tar --strip-components=1 --directory=psl1ght -xvzf psl1ght.tar.gz

## Create the build directory.
cd psl1ght

## Compile and install.
${MAKE:-make} install-ctrl && ${MAKE:-make} && ${MAKE:-make} install
