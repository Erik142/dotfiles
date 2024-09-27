if status is-interactive
  fish_vi_key_bindings
  starship init fish | source
  thefuck --alias ehh | source
  nvm use v18.11.0
  zoxide init --cmd cd fish | source

  pyenv init - | source
  source (pyenv virtualenv-init -|psub)
  op completion fish | source
  talosctl completion fish | source
end
