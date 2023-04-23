#!/usr/bin/env bash

function install_homebrew() {
  if [ ! -z "$(which brew)" ]; then
    echo "Homewbrew is already installed on the system!"
    return
  fi

  NONINTERACTIVE=1 /usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

}

function main() {
  install_homebrew
  export PATH="$PATH:/opt/homebrew/bin"
  brew bundle
}

main
