#!/bin/bash
docker build -t epinux/qgis-desktop:master .
sudo cp run-qgis-master-in-docker.sh /usr/local/bin
sudo cp QGIS-Master.Docker.desktop /usr/share/applications/

echo "A shortcut was created to run your docker - "
echo "you may need to reload your desktop"
echo "or log out and in again for the shortcut to be available."
