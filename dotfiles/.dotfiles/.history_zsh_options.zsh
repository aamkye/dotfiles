### HISTORY AND ZSH OPTIONS
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=100000
export SAVEHIST="${HISTSIZE}"
export HISTDUP=erase

setopt appendhistory        # Append to the history file, don't overwrite it.
setopt banghist             # Treat the '!' character specially during expansion.
setopt extendedhistory      # Write the history file in the ":start:elapsed;command" format.
setopt histexpiredupsfirst  # Expire duplicate entries first when trimming history.
setopt histfindnodups       # Do not display a line previously found.
setopt histignorealldups    # Delete old recorded entry if new entry is a duplicate.
setopt histignoredups       # Don't record an entry that was just recorded again.
setopt histignorespace      # Don't record an entry starting with a space.
setopt histreduceblanks     # Remove superfluous blanks before recording entry.
setopt histsavenodups       # Don't write duplicate entries in the history file.
setopt histverify           # Don't execute immediately upon history expansion.
setopt incappendhistory     # Write to the history file immediately, not when the shell exits.
setopt sharehistory         # Share history between all sessions.
setopt nohistsavebycopy     # zsh writes a temporary file then moves it in place when complete. In this case, if the history file was a symbolic link, the new file replaces the symbolic link.

setopt autocd          # Change directory as you go
setopt autopushd       # Push directories onto the stack
setopt chasedots       # Don't pushd into a directory if it contains a dotfile
setopt pushdignoredups # Don't pushd if the directory is already on the stack
setopt pushdsilent     # Don't print a message when changing directories
setopt pushdtohome     # Pushd to the home directory
setopt nobeep          # Don't beep when accessing nonexistent history.
setopt nonomatch       # Don't match if pattern contains a globbing character

export CASE_SENSITIVE="false"
export HYPHEN_INSENSITIVE="true"
export DISABLE_AUTO_UPDATE="false"
export DISABLE_LS_COLORS="false"
export DISABLE_AUTO_TITLE="false"
export ENABLE_CORRECTION="false"
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UNTRACKED_FILES_DIRTY="true"
export ZSH_TMUX_AUTOSTART="true"
export ZSH_TMUX_AUTOQUIT="false"
### END HISTORY AND ZSH OPTIONS
