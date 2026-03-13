# Cursor styles
set -gx fish_vi_force_cursor 1
set -gx fish_cursor_default block
set -gx fish_cursor_insert line blink
set -gx fish_cursor_visual block
set -gx fish_cursor_replace_one underscore

# Path
set -x fish_user_paths
fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/opt/postgresql@13/bin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path ~/bin

set -Ux LDFLAGS -L/opt/homebrew/lib
set -Ux CPPFLAGS -I/opt/homebrew/include
set -Ux DYLD_LIBRARY_PATH /opt/homebrew/lib

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

# Fish
set fish_emoji_width 4
alias ssh "TERM=xterm-256color command ssh"
alias mosh "TERM=xterm-256color command mosh"

# Go
set -x GOPATH ~/go
fish_add_path $GOPATH $GOPATH/bin

# Exports
set -x LESS -rF
set -x COMPOSE_DOCKER_CLI_BUILD 1
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x MANPAGER "nvim +Man!"
set -x MANROFFOPT -c
set -x XDG_CONFIG_HOME "$HOME/.config"
#set -x MANPAGER "sh -c 'col -bx | bat -l man -p'" # use bat to format man pages
#set -x MANPAGER "most" # use bat to format man pages

# Tmux
abbr tc 'tmux attach'
abbr ta 'tmux attach -t'
abbr tad 'tmux attach -d -t'
abbr ts 'tmux new -s'
abbr tl 'tmux ls'
abbr tk 'tmux kill-session -t'

# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
alias ls "eza --color=always --icons --group-directories-first"
alias la 'eza --color=always --icons --group-directories-first --all'
alias ll 'eza --color=always --icons --group-directories-first --all --long'
alias ld lazydocker
abbr l ll

# Editor
abbr vim nvim
abbr vi nvim
abbr v nvim
alias vimpager 'nvim - -c "lua require(\'util\').colorize()"'
alias lazyvim "NVIM_APPNAME=lazyvim nvim"
abbr lv lazyvim

# Dev
alias lazygit "TERM=xterm-256color command lazygit"
alias lg lazygit

# Other
abbr df "grc /bin/df -h"
abbr fda "fd -IH"
abbr rga "rg -uu"
abbr grep rg

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# mise
/opt/homebrew/bin/mise activate fish | source

# Pure fish config
functions -e fish_right_prompt
set -g pure_enable_single_line_prompt true

if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

# Created by `pipx` on 2025-05-30 09:52:33
set PATH $PATH /Users/jif1lb/.local/bin

# Setting PATH for Python 3.10
# The original version is saved in /Users/jif1lb/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

