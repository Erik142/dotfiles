if test (uname) = Darwin
  eval (/opt/homebrew/bin/brew shellenv | sed 's|fish_add_path -gP|fish_add_path -g|')
  if plenv --version > /dev/null; plenv init - | source ; end
end
