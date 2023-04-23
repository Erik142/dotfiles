alias vim=nvim
alias p=project
alias ls=exa
alias ll='ls -l'
alias tree='ls -T'
if test (uname) = Darwin
  alias renode='/Applications/Renode.app/Contents/MacOS/macos_run.command --console --disable-xwt'
end
alias config="vim $HOME/.config/fish/conf.d"
alias reload="source $HOME/.config/fish/conf.d/*.fish"
