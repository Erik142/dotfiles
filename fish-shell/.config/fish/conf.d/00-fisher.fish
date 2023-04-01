if status is-interactive
  if not test -f "$HOME/.config/fish/functions/fisher.fish"
    echo "Fisher could not be found, installing..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
  end
end
