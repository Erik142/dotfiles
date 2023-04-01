# set -g primary_group "admin"

if set -q primary_group
  if test "(id -g -nr)" != "$primary_group"
    if test (uname) = "Linux"
      exec sg "$primary_group" "$SHELL $argv"
    end
  end
end
