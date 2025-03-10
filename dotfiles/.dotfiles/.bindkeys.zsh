#    ██████╗ ██╗███╗   ██╗██████╗ ██╗  ██╗███████╗██╗   ██╗███████╗   ███████╗███████╗██╗  ██╗
#    ██╔══██╗██║████╗  ██║██╔══██╗██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝   ╚══███╔╝██╔════╝██║  ██║
#    ██████╔╝██║██╔██╗ ██║██║  ██║█████╔╝ █████╗   ╚████╔╝ ███████╗     ███╔╝ ███████╗███████║
#    ██╔══██╗██║██║╚██╗██║██║  ██║██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║    ███╔╝  ╚════██║██╔══██║
# ██╗██████╔╝██║██║ ╚████║██████╔╝██║  ██╗███████╗   ██║   ███████║██╗███████╗███████║██║  ██║
# ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.bindkeys.zsh

# Unbind all keys
bindkey -rp ''

### KEYBINDINGS

# tab | shift + tab
bindkey '^I'    down-line-or-select
bindkey '^[[Z'  down-line-or-select

# tab | shift + tab
bindkey -M menuselect '^I'    menu-complete
bindkey -M menuselect '^[[Z'  reverse-menu-complete

# ^ (arrow-up) | v (arrow-down)
bindkey "^[[A" fzf-history-widget
bindkey "^[[B" down-line-or-select
# bindkey "^[[B" fzf-cd-widget

# alt + <- | alt + ->
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# alt + bkspace | alt + delete
bindkey '^[^?' backward-kill-word
bindkey '^[[3;3~' kill-word

# ctrl + v
bindkey "^[[200~" bracketed-paste

# .
bindkey '.' qc-rationalize-dot

# alt + [/|?]
bindkey "^[/" which-command

# backspace | delete
bindkey "^?" backward-delete-char
bindkey "^[[3~" delete-char

# tab
bindkey "^I" down-line-or-select

### END KEYBINDINGS

### EXTRA KEYBINDINGS

# command
# > bindkey -L -M command
bindkey -M command "^G" send-break
bindkey -M command "^J" accept-line
bindkey -M command "^M" accept-line

# listscroll
# > bindkey -L -M listscroll
bindkey -M listscroll "^I" complete-word
bindkey -M listscroll "^J" accept-line
bindkey -M listscroll "^M" accept-line
bindkey -M listscroll "^[OB" down-line-or-history
bindkey -M listscroll "^[[B" down-line-or-history
bindkey -M listscroll " " complete-word

# main
# > bindkey -L -M main
# bindkey "^@" set-mark-command
bindkey "^A" beginning-of-line
# bindkey "^B" backward-char
# bindkey "^D" delete-char-or-list
bindkey "^E" end-of-line
# bindkey "^F" forward-char
# bindkey "^G" send-break
# bindkey "^H" backward-delete-char
# bindkey "^I" down-line-or-select
# bindkey "^J" accept-line
# bindkey "^K" kill-line
bindkey "^L" clear-screen
bindkey "^M" accept-line
# bindkey "^N" down-line-or-select
# bindkey "^O" accept-line-and-down-history
# bindkey "^P" up-line-or-search
# bindkey "^Q" push-line
bindkey "^R" fzf-history-widget
# bindkey "^S" menu-search
bindkey "^T" fzf-file-widget
bindkey "^U" kill-whole-line
# bindkey "^V" quoted-insert
# bindkey "^W" backward-kill-word
# bindkey "^X^B" vi-match-bracket
# bindkey "^X^F" vi-find-next-char
# bindkey "^X^J" vi-join
# bindkey "^X^K" kill-buffer
# bindkey "^X^N" infer-next-history
# bindkey "^X^O" overwrite-mode
# bindkey "^X^U" undo
# bindkey "^X^V" vi-cmd-mode
# bindkey "^X^X" exchange-point-and-mark
# bindkey "^X*" expand-word
# bindkey "^X/" recent-paths
# bindkey "^X=" what-cursor-position
# bindkey "^XG" list-expand
# bindkey "^Xg" list-expand
# bindkey "^Xh" _complete_help
# bindkey "^Xr" history-incremental-search-backward
# bindkey "^Xs" history-incremental-search-forward
# bindkey "^Xu" undo
# bindkey "^Y" yank
# bindkey "^[^D" list-choices
# bindkey "^[^G" send-break
# bindkey "^[^H" backward-kill-word
# bindkey "^[^I" self-insert-unmeta
# bindkey "^[^J" self-insert-unmeta
bindkey "^[^L" clear-screen
bindkey "^[^M" self-insert-unmeta
bindkey "^[^[" sudo-command-line
# bindkey "^[^[OA" history-search-backward
# bindkey "^[^[OB" history-search-forward
# bindkey "^[^[[A" history-search-backward
# bindkey "^[^[[B" history-search-forward
# bindkey "^[^_" copy-prev-word
# bindkey "^[ " expand-history
# bindkey "^[!" expand-history
# bindkey "^[\"" quote-region
# bindkey "^[\$" spell-word
# bindkey "^['" quote-line
# bindkey "^[-" neg-argument
# bindkey "^[." insert-last-word
# bindkey "^[0" digit-argument
# bindkey "^[1" digit-argument
# bindkey "^[2" digit-argument
# bindkey "^[3" digit-argument
# bindkey "^[4" digit-argument
# bindkey "^[5" digit-argument
# bindkey "^[6" digit-argument
# bindkey "^[7" digit-argument
# bindkey "^[8" digit-argument
# bindkey "^[9" digit-argument
# bindkey "^[<" beginning-of-buffer-or-history
# bindkey "^[>" end-of-buffer-or-history
# bindkey "^[?" which-command
# bindkey "^[A" accept-and-hold
# bindkey "^[B" backward-word
# bindkey "^[C" capitalize-word
# bindkey "^[D" kill-word
# bindkey "^[F" forward-word
# bindkey "^[G" get-line
# bindkey "^[H" run-help
# bindkey "^[L" down-case-word
# bindkey "^[N" history-search-forward
# bindkey "^[OA" up-line-or-search
# bindkey "^[OB" down-line-or-select
bindkey "^[OC" forward-char
bindkey "^[OD" backward-char
# bindkey "^[OF" end-of-line
# bindkey "^[OH" beginning-of-line
# bindkey "^[P" history-search-backward
# bindkey "^[Q" zi-browse-symbol
# bindkey "^[S" spell-word
# bindkey "^[T" transpose-words
# bindkey "^[U" up-case-word
# bindkey "^[W" copy-region-as-kill
# bindkey "^[[1;3A" history-search-backward
# bindkey "^[[1;3B" history-search-forward
# bindkey "^[[200~" bracketed-paste
# bindkey "^[[3~" delete-char
bindkey "^[[C" forward-char
bindkey "^[[D" backward-char
# bindkey "^[[Z" down-line-or-select
# bindkey "^[_" insert-last-word
# bindkey "^[a" accept-and-hold
# bindkey "^[b" backward-word
# bindkey "^[c" fzf-cd-widget
# bindkey "^[d" kill-word
# bindkey "^[f" forward-word
# bindkey "^[g" get-line
# bindkey "^[h" run-help
# bindkey "^[l" down-case-word
# bindkey "^[n" history-search-forward
# bindkey "^[p" history-search-backward
# bindkey "^[q" push-line
# bindkey "^[s" spell-word
# bindkey "^[t" transpose-words
# bindkey "^[u" up-case-word
# bindkey "^[w" copy-region-as-kill
# bindkey "^[x" execute-named-cmd
# bindkey "^[y" yank-pop
# bindkey "^[z" execute-last-named-cmd
# bindkey "^[|" vi-goto-column
# bindkey "^[^?" backward-kill-word
# bindkey "^_" undo
# bindkey "^?" backward-delete-char
# bindkey "." qc-rationalize-dot
bindkey -R " "-"-" self-insert
bindkey -R "/"-"~" self-insert
bindkey -R "\M-^@"-"\M-^?" self-insert

# menuselect
# > bindkey -L -M menuselect
bindkey -M menuselect "^@" accept-and-hold
bindkey -M menuselect "^I" menu-complete
bindkey -M menuselect "^J" accept-line
bindkey -M menuselect "^M" accept-line
bindkey -M menuselect "^N" down-history
bindkey -M menuselect "^P" up-history
# bindkey -M menuselect "^R" history-incremental-search-backward
# bindkey -M menuselect "^S" history-incremental-search-forward
# bindkey -M menuselect "^[^N" vi-forward-blank-word
# bindkey -M menuselect "^[^P" vi-backward-blank-word
# bindkey -M menuselect "^[^[OA" vi-backward-blank-word
# bindkey -M menuselect "^[^[OB" vi-forward-blank-word
# bindkey -M menuselect "^[^[[A" vi-backward-blank-word
# bindkey -M menuselect "^[^[[B" vi-forward-blank-word
# bindkey -M menuselect "^[/" history-incremental-search-backward
# bindkey -M menuselect "^[?" history-incremental-search-forward
# bindkey -M menuselect "^[OA" up-history
# bindkey -M menuselect "^[OB" down-history
# bindkey -M menuselect "^[OC" forward-char
# bindkey -M menuselect "^[OD" backward-char
# bindkey -M menuselect "^[[1;3A" vi-backward-blank-word
# bindkey -M menuselect "^[[1;3B" vi-forward-blank-word
# bindkey -M menuselect "^[[5~" backward-word
# bindkey -M menuselect "^[[6~" forward-word
bindkey -M menuselect "^[[A" up-history
bindkey -M menuselect "^[[B" down-history
bindkey -M menuselect "^[[C" forward-char
bindkey -M menuselect "^[[D" backward-char
# bindkey -M menuselect "^[[Z" reverse-menu-complete
# bindkey -M menuselect "^[j" down-history
# bindkey -M menuselect "^[k" up-history
# bindkey -M menuselect "^[n" vi-forward-blank-word
# bindkey -M menuselect "^[p" vi-backward-blank-word
# bindkey -M menuselect "^[u" undo
# bindkey -M menuselect "^[v" accept-and-hold
# bindkey -M menuselect "^_" undo

### END EXTRA KEYBINDINGS

### EXTRAS

# COMBINATIONS USING JUST THE 'GREY' KEYS:

# key[F1]        = '^[[[A'
# key[F2]        = '^[[[B'
# key[F3]        = '^[[[C'
# key[F4]        = '^[[[D'
# key[F5]        = '^[[[E'
# key[F6]        = '^[[17~'
# key[F7]        = '^[[18~'
# key[F8]        = '^[[19~'
# key[F9]        = '^[[20~'
# key[F10]       = '^[[21~'
# key[F11]       = '^[[23~'
# key[F12]       = '^[[24~'

# key[Shift-F1]  = '^[[25~'
# key[Shift-F2]  = '^[[26~'
# key[Shift-F3]  = '^[[28~'
# key[Shift-F4]  = '^[[29~'
# key[Shift-F5]  = '^[[31~'
# key[Shift-F6]  = '^[[32~'
# key[Shift-F7]  = '^[[33~'
# key[Shift-F8]  = '^[[34~'

# key[Insert]    = '^[[2~'
# key[Delete]    = '^[[3~'
# key[Home]      = '^[[1~'
# key[End]       = '^[[4~'
# key[PageUp]    = '^[[5~'
# key[PageDown]  = '^[[6~'
# key[Up]        = '^[[A'
# key[Down]      = '^[[B'
# key[Right]     = '^[[C'
# key[Left]      = '^[[D'

# key[Bksp]      = '^?'
# key[Bksp-Alt]  = '^[^?'
# key[Bksp-Ctrl] = '^H'    console only.

# key[Esc]       = '^['
# key[Esc-Alt]   = '^[^['

# key[Enter]     = '^M'
# key[Enter-Alt] = '^[^M'

# key[Tab]       = '^I' or '\t'  unique form! can be bound, but does not 'showkey -a'.
# key[Tab-Alt]   = '^[\t'

# COMBINATIONS USING THE WHITE KEYS:

# Anomalies:
# 'Ctrl+`' == 'Ctrl+2', and 'Ctrl+1' == '1' in xterm.
# Several 'Ctrl+number' combinations are void at console, but return codes in xterm.
# OTOH Ctrl+Bksp returns '^H' at console, but is identical to plain 'Bksp' in xterm.
# There are no doubt more of these little glitches however, in the main:

# White key codes are easy to undertand, each of these 'normal' printing keys has six forms:

# A            = 'a'    (duhhh)
# A-Shift      = 'A'    (who would have guessed?)
# A-Alt        = '^[a'

# A-Ctrl       = '^A'
# A-Alt-Ctrl   = '^[^A'
# A-Alt-Shift  = '^[A'
# A-Ctrl-Shift = '^A'   (Shift has no effect)

# Don't forget that:

# /-Shift-Ctrl = Bksp      = '^?'
# [-Ctrl       = Esc       = '^['
# M-Ctrl       = Enter     = '^M'

### END EXTRAS
