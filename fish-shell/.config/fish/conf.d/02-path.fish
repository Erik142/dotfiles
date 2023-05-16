if status is-interactive
  fish_add_path -g $HOME/.cargo/bin
  fish_add_path $HOME/.local/bin /opt/local/bin /opt/local/sbin /opt/homebrew/opt/python/libexec/bin $HOME/bin $HOME/.luarocks/bin
  fish_add_path /opt/homebrew/opt/llvm/bin
end
