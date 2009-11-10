export PATH=/opt/local/bin:/opt/local/sbin:$PATH
alias h='history|grep'
alias arc='/Users/tcrayford/Desktop/arc.sh'
# -- start rip config -- #
RIPDIR=/Users/tcrayford/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
alias gb='git branch -a -v'
alias gs='git status'
alias gd='git diff'

# gc      => git checkout master
# gc bugs => git checkout bugs
function gc {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $1
  fi
}

PS1="\[\033[0;32m\]\w\n\[\033[0;30m\]$ "
alias ls='ls -G'