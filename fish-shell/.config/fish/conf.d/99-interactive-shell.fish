if status is-interactive
  fish_vi_key_bindings
  starship init fish | source
  thefuck --alias ehh | source
  nvm use v18.11.0

  if test (count $argv) -lt 2
    clear
    project-loop-wrapper.sh
  end
end
