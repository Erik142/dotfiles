if status is-interactive
  fish_vi_key_bindings
  starship init fish | source
  thefuck --alias ehh | source
  zoxide init --cmd cd fish | source

  pyenv init - | source
  source (pyenv virtualenv-init -|psub)
  if test $fish_config_type = "private"
    op completion fish | source
    talosctl completion fish | source
  end
end
