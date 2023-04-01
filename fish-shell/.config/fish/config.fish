eval (/opt/homebrew/bin/brew shellenv)

# Start or re-use a gpg-agent.
# gpgconf --launch gpg-agent

# Ensure that GPG Agent is used as the SSH agent
# set -e SSH_AUTH_SOCK
# set -U -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh

set -e EDITOR
set -U -x EDITOR nvim

set -e VAULT_ADDR
set -U -x VAULT_ADDR https://vault.wahlberger.dev
set -U PYTHONPATH /opt/homebrew/lib/python3.10/site-packages

# function fish_greeting
#   set -l toon (random choice {default,bud-frogs,dragon,dragon-and-cow,elephant,moose,stegosaurus,tux,vader})
#   fortune -s | cowsay -f $toon
# end

if status is-interactive
  # Commands to run in interactive sessions can go here
  starship init fish | source
  set fish_greeting
  alias vim=nvim
  alias p=project
  alias ls=exa
  alias ll='ls -l'
  alias tree='ls -T'
  alias config='vim ~/.config/fish/config.fish'
  alias reload='source ~/.config/fish/config.fish'

  fish_add_path -g $HOME/.cargo/bin
  thefuck --alias | source

  fish_add_path $HOME/.local/bin /opt/local/bin /opt/local/sbin /opt/homebrew/opt/python/libexec/bin $HOME/bin $HOME/.luarocks/bin
  nvm use v18.11.0
  clear

  project-loop-wrapper.sh
end

