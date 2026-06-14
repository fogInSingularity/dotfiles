PS1="\[\e[1;33m\][ \t ][ \u@\H ][ \w ]\n>$\[\e[0m\]"

export PATH="$PATH:$HOME/bin"

alias dobjdump='objdump -D -C --disassembler-color=terminal -Mintel'
alias gdb='gdb --quiet'
alias cmb='cmake --build build --parallel $(nproc)'
alias cmc='cmake --build build --target clean'

alias ls='ls --color=auto'
alias ll='ls -lh'

alias gs='git status'
alias gl='git log --oneline'

alias diff='diff --color=auto'

