# enable vim bindings
set -o vi

alias ca='conda activate'
alias cda='conda deactivate'

alias cdd='cd ..'

alias cls='clear'

alias ga='git add'
alias gap='git add -p'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -D'
alias gbm='git branch -m'

alias gc='git commit'
alias gca='git commit --amend'

alias gco='git checkout'
alias gcom='git checkout main'
alias gcb='git checkout -b'
alias gcx='git clean -dfx'

function gd() {
  git diff > t.diff
  if [ -s t.diff ]; then
    vi t.diff
  fi
  rm t.diff 2>/dev/null
}
if [[ $0 == *bash ]]; then
  export -f gd
fi
alias gd1='git diff HEAD~1'
alias gdc='git diff --cached'
alias gdno='git diff --name-only'

alias gf='git fetch'

alias gl='git log'
alias glo='git log --oneline'

alias gmv='git mv'

alias gp='git push'
alias gpf='git push -f'
alias gpu='git push -u'

alias gpl='git pull'
alias gplom='git pull origin main'

alias grb='git rebase'
alias grbc='git rebase --continue'
alias grbm='git rebase main'

alias grh='git reset --hard HEAD'

alias gra='git remote add'
alias grr='git remote remove'
alias grv='git remote -v'

alias grs='git restore --staged'

alias gst='git status'
alias gsa='git stash apply'
alias gsd='git stash drop'
alias gsh='git stash'
alias gsl='git stash list'
alias gss='git stash show'
alias gsp='git stash show -p'

alias gr='grep -Irn'
alias gri='grep -Iirn'

alias lsl='ls -ltr'

alias tat='tmux a -t'
alias tks='tmux kill-session -t'
alias tls='tmux ls'
alias tns='tmux new -s'
alias trs='tmux rename-session -t'
