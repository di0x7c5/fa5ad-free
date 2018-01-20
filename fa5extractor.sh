#!/bin/bash

#
# Copyright (C) 2018 by Dariusz Iwanoczko
# Github: https://github.com/diwanoczko
#

SCRIPT_NAME=$(basename $0)

function print_usage {
	echo "Usage: $SCRIPT_NAME fa_file.js"
	echo ""
}

if [ $# -lt 1 ]; then
	print_usage
	exit
fi

if [ ! -f $1 ]; then
	echo "File \"$1\" not found!"
	exit
fi

mkdir -p drawable values

./fa5extractor.awk $1

echo "Done. Generated $(ls drawable | wc -l) files."
