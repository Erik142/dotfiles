#!/usr/bin/env bash

function install_homebrew() {
  if [ ! -z "$(which brew)" ]; then
    echo "Homewbrew is already installed on the system!"
    return
  fi

  NONINTERACTIVE=1 /usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

}

# Needed for the tmux_autoreload plugin to work properly
function create_realpath_symlink() {
  if [ ! -e "/opt/homebrew/bin/realpath" ]; then
    echo "Adding symlink to realpath..."
    ln -s /opt/homebrew/bin/grealpath /opt/homebrew/bin/realpath
  fi
}

function main() {
  install_homebrew
  export PATH="$PATH:/opt/homebrew/bin"
  brew bundle
  create_realpath_symlink
}

main
