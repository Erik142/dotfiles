alias vim=nvim
alias p=project
alias ls=eza
alias ll='ls -l'
alias tree='ls -T'
if test (uname) = Darwin
  alias renode='/Applications/Renode.app/Contents/MacOS/macos_run.command --console'
  alias cleardns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
end
alias config="vim $HOME/.config/fish/conf.d"
alias reload="source $HOME/.config/fish/conf.d/*.fish"
