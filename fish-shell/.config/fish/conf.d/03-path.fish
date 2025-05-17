fish_add_path -g $HOME/Library/Python/3.11/bin
if status is-interactive
  set -gx PYENV_ROOT $HOME/.pyenv
  fish_add_path /opt/homebrew/lib/ruby/gems/3.1.0/bin/ /opt/homebrew/opt/ruby@3.1/bin $HOME/.local/bin /opt/local/bin /opt/local/sbin /opt/homebrew/opt/python/libexec/bin $HOME/bin $HOME/.luarocks/bin /Users/erikwahlberger/.gem/ruby/3.1.0/bin /opt/homebrew/opt/gnu-sed/libexec/gnubin
  fish_add_path /opt/homebrew/opt/llvm/bin
  fish_add_path /opt/homebrew/opt/gnu-getopt/bin
  fish_add_path -m $PYENV_ROOT/shims
  fish_add_path -g $HOME/.cargo/bin
  fish_add_path -g $HOME/go/bin

  if test (uname) != "Darwin"
    fish_add_path -g $HOME/.pyenv/bin
    fish_add_path -g $HOME/.local/bin
  end
end
