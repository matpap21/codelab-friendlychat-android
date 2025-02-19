#!/bin/bash

# Exit on error
set -e

# Copy mock google-services file
echo "Using mock google-services.json"
cp mock-google-services.json build-android/app/google-services.json
cp mock-google-services.json build-android-start/app/google-services.json

# Build
./gradlew clean build
