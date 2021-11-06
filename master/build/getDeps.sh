#!/bin/bash
set -e

apt-get -y update

# #-------------Application Specific Stuff ----------------------------------------------------
# removed: doxygen cmake-curses-gui
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get update &&  \
    apt-get install -y git cmake flex bison libproj-dev libgeos-dev libgdal-dev \
    libexpat1-dev libfcgi-dev libgs-dev libpq-dev libqca-qt5-2-dev libqca-qt5-2-plugins \
    libqscintilla2-qt5-dev libqt5*-dev libsqlite3-dev \
    lighttpd pkg-config poppler-utils pyqt5-dev-tools python python-dev \
    python3-pyqt5* \
    spawn-fcgi xauth xfonts-100dpi xfonts-75dpi xfonts-base xfonts-scalable xvfb 

chmod -R a+w /usr/lib/x86_64-linux-gnu/qt5/plugins/designer/
# chmod -R a+w /usr/lib/python3.8/dist-packages/PyQt5/uic/widget-plugins/
