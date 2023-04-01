if status is-interactive
  starship init fish | source
  thefuck --alias | source
  nvm use v18.11.0
  clear

  project-loop-wrapper.sh
end
