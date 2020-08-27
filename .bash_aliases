# aliases for tmux
alias tl='tmux ls'
alias ta='tmux attach'
alias tat='tmux attach -t '
alias ts='tmux new -s '
alias tr='tmux rename -t '
alias tk='tmux kill-server '
alias tk='tmux kill-session -t'
# aliases for util commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# search for file
alias search='find -type f | xargs grep --color=auto'
alias search_cpp='find -type f -name "*.cpp"| xargs grep --color=auto'
alias search_hpp='find -type f -name "*.hpp"| xargs grep --color=auto'
