# Ensure exa is available
if (( ! ${+commands[exa]} )); then
  return 1
fi

export EXA_COLORS='da=1;34:gm=1;34'

export EXA_ICON_SPACING=2

alias ls='exa --group-directories-first'
alias ll='ls -l --git'        # Long format, git status
alias l='ll -a -I ".git*"'     # Long format, all files
alias la='l -F --icons'       # Long format, with icons and file type indicators
alias lg='la --git-ignore'    # la with respect to .gitignore
alias lr='la -T'              # Long format, recursive as a tree
alias lx='la -sextension'     # Long format, sort by extension
alias lk='la -ssize'          # Long format, largest file size last
alias lt='la -smodified'      # Long format, newest modification time last
alias lc='la -schanged'       # Long format, newest status change (ctime) last
