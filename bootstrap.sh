#!/usr/bin/env bash

os=$(uname)

echo "Bootstrapping environment..."

case "$os" in
  "Darwin")
    echo "Detected Mac OS, executing Mac bootstrap script..."
    ./.bootstrap_macos.sh
    ;;
  "Linux")
    echo "Detected Linux, executing Linux bootstrap script..."
    ./.bootstrap_linux.sh
    ;;
  "*")
    echo "Detected unsupported operating system. Exiting..."
    exit 2
    ;;
esac

if [ $? -ne 0 ]; then
  echo "An error occured when running platform-specific environment script! Exiting..."
  exit 3
fi

echo "Finished running platform-specific environment script!"
echo "Running common environment script..."
./.bootstrap_common.sh

if [ $? -ne 0 ]; then
  echo "An error occured when running common environment script! Exiting..."
  exit 1
fi

echo "Finished running common environment script!"
