### ZSH SYNTAX HIGHLIGHT
# typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]='underline'
ZSH_HIGHLIGHT_STYLES[builtin]="fg=blue"
ZSH_HIGHLIGHT_STYLES[default]="none"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=red,bold"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[alias]="fg=green"
ZSH_HIGHLIGHT_STYLES[suffix-alias]="fg=green"
ZSH_HIGHLIGHT_STYLES[command]="fg=green"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=green"
ZSH_HIGHLIGHT_STYLES[commandseparator]="none"
ZSH_HIGHLIGHT_STYLES[path]="none"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=""
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=""
ZSH_HIGHLIGHT_STYLES[globbing]="fg=blue"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=blue"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="none"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="none"
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]="none"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[rc-quote]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[assign]="none"
ZSH_HIGHLIGHT_STYLES[redirection]="none"
ZSH_HIGHLIGHT_STYLES[comment]="fg=black,bold"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=green"
### END ZSH SYNTAX HIGHLIGHT

### ZSH AUTOSUGGEST
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
### END ZSH AUTOSUGGEST

### ZSH HIGHLIGHT
ZSH_HIGHLIGHT_MAXLENGTH=512
ZSH_HIGHLIGHT_HIGHLIGHTERS=(
  brackets
  cursor
  line
  main
  pattern
  regexp
  root
)
### END ZSH SYNTAX HIGHLIGHT

### AUTOCOMPLETE OPTIONS
# https://github.com/marlonrichert/zsh-autocomplete/blob/main/.zshrc
zstyle ':autocomplete:*' min-input 2
zstyle ':autocomplete:*' delay 0.3
zstyle ':autocomplete:*' recent-dirs no
zstyle ':autocomplete:*' widget-style menu-select
zstyle ':autocomplete:*' add-space ' '

bindkey '^I'    down-line-or-select # tab   | enter menu select
bindkey '^[[Z'  down-line-or-select # shift + tab | enter menu select

bindkey -M menuselect '^I'    menu-complete
bindkey -M menuselect '^[[Z'  reverse-menu-complete
### END AUTOCOMPLETE OPTIONS
