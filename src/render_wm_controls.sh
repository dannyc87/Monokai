#!/bin/bash

wm_assets=('close' 'close_prelight' 'close_unfocused' 'min' 'min_prelight' 'maximize' 'maximize_prelight')
path='../assets/'

for asset in "${wm_assets[@]}"; do
    inkscape -z $path$asset.svg -e $path$asset@2.png --export-dpi=192
    optipng -o7 --quiet $path$asset@2.png
    inkscape -z $path$asset.svg -e $path$asset.png --export-dpi=96
    optipng -o7 --quiet $path$asset.png
done