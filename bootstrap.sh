#!/usr/bin/env bash

SCRIPT_PATH="$(dirname -- "${BASH_SOURCE[0]}")"             # relative
SCRIPT_PATH="$(cd -- "$SCRIPT_PATH" && pwd)"                    # absolutized and normalized

if [[ -z "$SCRIPT_PATH" ]] ; then
  # error; for some reason, the path is not accessible
  # to the script (e.g. permissions re-evaled after suid)
  echo "Cannot access script path. Exiting..."
  exit 1  # fail
fi

cd "$SCRIPT_PATH"

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
