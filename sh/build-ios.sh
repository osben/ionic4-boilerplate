#!/bin/bash -v

set -e

# Build Ionic App for iOS
ionic cordova platform add ios --nofetch

if [[ "$TRAVIS_BRANCH" == "develop" ]]
then
    ionic cordova build ios
else # --prod --release
    ionic cordova build ios 
fi