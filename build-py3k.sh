#!/bin/sh

echo "Building Python 3.0 version in ./py3k..."
rm -fr ./py3k
mkdir py3k
cp -rf pymysql py3k/
cp setup.py py3k/
cp setup.py.py3k.patch py3k/
cd py3k
2to3 .|patch -p0
patch setup.py setup.py.py3k.patch
cd ..
