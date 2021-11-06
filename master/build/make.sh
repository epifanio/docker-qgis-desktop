#!/bin/bash
set -e

mkdir /build/QGIS/build
cd /build/QGIS/build
cmake ..

make install -j8
ldconfig

strip /usr/bin/qgis_mapserv.fcgi
strip `find /usr/lib/ -name "libqgis*" -type f`
strip `find  /usr/share/qgis/ -name "*.so" -type f`

