alias vim=nvim
alias p=project
alias ls=eza
alias ll='ls -l'
alias tree='ls -T'
if test (uname) = Darwin
  alias renode='/Applications/Renode.app/Contents/MacOS/macos_run.command --console'
  alias cleardns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
end
alias realpath="grealpath"
alias cat="bat --theme='Catppuccin Macchiato'"
alias tmux="tmux -S $HOME/.tmux.sock"
alias g=git
alias k=kubectl
alias fzf="fzf --color=16,bg+:-1"

abbr --add note zk edit --interactive
abbr --add config vim $HOME/.config/fish/conf.d
abbr --add reload source $HOME/.config/fish/conf.d/*.fish
abbr --add cdgr 'cd $(git rev-parse --show-toplevel)'
