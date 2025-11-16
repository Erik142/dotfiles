fish_add_path -g $HOME/Library/Python/3.11/bin
if status is-interactive
  set -gx PYENV_ROOT $HOME/.pyenv

  if test (uname) = "Darwin"
    fish_add_path /opt/homebrew/lib/ruby/gems/3.1.0/bin/ /opt/homebrew/opt/ruby@3.1/bin /opt/local/bin /opt/local/sbin /opt/homebrew/opt/python/libexec/bin /opt/homebrew/opt/gnu-sed/libexec/gnubin /opt/homebrew/opt/make/libexec/gnubin
    fish_add_path /opt/homebrew/opt/llvm/bin
    fish_add_path /opt/homebrew/opt/gnu-getopt/bin
  else
    fish_add_path -g $PYENV_ROOT/bin
  end

  fish_add_path -g $HOME/.local/bin
  fish_add_path $HOME/bin $HOME/.luarocks/bin /Users/erikwahlberger/.gem/ruby/3.1.0/bin

  fish_add_path -m $PYENV_ROOT/shims
  fish_add_path -g $HOME/.cargo/bin
  fish_add_path -g $HOME/go/bin
  fish_add_path -g $HOME/.dotfiles/bin
end
