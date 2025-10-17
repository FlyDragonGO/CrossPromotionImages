#!/usr/bin/env bash
f=$1
name=$(echo $f | sed 's/.png//')
pngquant --ext=.compressed.png --speed=5 $name.png
mv $name.compressed.png $name.png
