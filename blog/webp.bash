#!/bin/bash

for entry in $(pwd)/*
do
    webpFn="$(expr "x$entry" : 'x\(.*\)\.')".webp
    if [[ $entry == *.png || $entry == *.jpg  ]] ; then
        if [[ ! -o $webpFn ]] ; then
            cwebp -q 80 -quiet $entry -o $webpFn
        fi
    fi
done


