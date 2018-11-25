export EDITOR=vim
export PAGER=most
export VISUAL=vim

export FZF_DEFAULT_COMMAND='ag --hidden --nocolor -g ""' 
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -f -g ""' 
export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='tree -iafd'

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi


autoload -U compinit promptinit
compinit
promptinit

setopt CORRECT_ALL

autoload -U colors && colors

# PROMPT="%{$fg[green]%}%n%{$reset_color%}%# "
# RPROMPT="%{$fg[yellow]%}%~%{$reset_color%} %{$fg[red]%}%m%{$reset_color%}"

PROMPT="%{$fg[green]%}>> %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}%n@%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}"


# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' file-sort modification
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '~/.zshrc'

# End of lines added by compinstall


# Lines configured by zsh-newuser-install

HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

setopt autocd extendedglob
unsetopt beep
bindkey -e

# End of lines configured by zsh-newuser-install


[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias -s {c,cpp,h,py}=vim
alias -s pdf=zathura
alias -r ll="ls -lh --group-directories-first --color=auto"
alias -r la="ll -A"
alias -r ssh="TERM=xterm ssh"
alias -r update="newsbeuter && sudo pacman -Syu"
# alias -r bup="rsync -rtvuc --delete"
# alias -r bup-dry="rsync -rtvuc --delete --dry-run"

pyprofile () { python -m cProfile "$*" }


# Extract archives
# example: extract file
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tbz)       tar -xjvf $1    ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "I don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Pack archives
# example: pk tar file
pk () {
    if [ $1 ] ; then
        case $1 in
            tbz)        tar cjvf $2.tar.bz2 $2      ;;
            tgz)        tar czvf $2.tar.gz  $2      ;;
            tar)        tar cpvf $2.tar  $2         ;;
            bz2)        bzip $2                     ;;
            gz)         gzip -c -9 -n $2 > $2.gz    ;;
            zip)        zip -r $2.zip $2            ;;
            7z)         7z a $2.7z $2               ;;
            *)         echo "'$1' cannot be packed via pk()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi

}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

