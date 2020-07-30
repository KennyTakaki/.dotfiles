#!/bin/bash

vimver=`vim --version | cut -c 19-21 | head -n 1`

if [ $(( vimver )) -lt 8.2 ]; then
        echo $vimver
fi
