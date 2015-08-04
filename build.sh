#!/bin/sh

[ $# -lt 1 ] && { echo 'Usage: build.sh <directory>'; exit 1; }

JOB_NAME="$1"

PHARO=40
VM=vm
VERSION=development
REPO="github://mikefilonov/restannouncer"
PROJECT="RESTAnnouncer"

[ -d "$JOB_NAME" ] && { echo "Directory $JOB_NAME exists"; exit 2; }

mkdir "$JOB_NAME"
cd "$JOB_NAME"

curl http://get.pharo.org/$PHARO+$VM | bash

./pharo Pharo.image save "$JOB_NAME" --delete-old
./pharo "$JOB_NAME.image" --version > version.txt
./pharo $JOB_NAME.image eval "Metacello new baseline: #${PROJECT}; repository: '$REPO'; load. Smalltalk saveSession"

./pharo-ui "$JOB_NAME.image" &



