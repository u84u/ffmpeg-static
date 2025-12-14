#!/usr/bin/env bash

# set -xeuo pipefail

FFMPEG_DIR="deps/ffmpeg"
NAME=$(basename "$0")

function usage() {
    echo "usage for $NAME"
	echo "          -c|--checkout <TAG> checkout to a specific tag"
	echo "          -l|--list           list all tags of ffmpeg (latest first)"
	echo "          -r|--reset          reset all submodules to their upstream changes"
	return;
}

while test $# -gt 0; do
case "$1" in
	-l|--list)
	git -C $FFMPEG_DIR tag | sort -r
	exit 0
		;;
	-c|--checkout)
	shift
	git -C $FFMPEG_DIR checkout "$2"
	exit 0
		;;
	-r|--reset)
	git submodule update --init --recursive --force --progress
	git submodule foreach --recursive git reset --hard
	git submodule foreach --recursive git clean -xfd

	exit 0
	    ;;
	*)
	echo "unknown flag $1"
	usage
	break
	    ;;
esac
done
