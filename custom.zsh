ZSH_THEME="ys"
# plugins=(git)

export EDITOR='vim'

# Tmuxinator
# Install ruby by rvm: http://goo.gl/e45ItD

eval "$(fasd --init auto)"
# Thus fasd comes with some useful aliases by default:
# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias z='fasd_cd -d'     # cd, same functionality as j in autojump
# alias zz='fasd_cd -d -i' # cd with interactive selection
alias v='f -e vim' # quick opening files with vim

# Vim visual select not highlighting in tmux
# http://goo.gl/51DTk
alias tmux='tmux -2'

# pbcopy / pbpaste like OS X in Ubuntu
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
