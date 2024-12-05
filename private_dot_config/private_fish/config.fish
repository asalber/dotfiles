if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked yes
set -g theme_display_git_dirty yes
set -g theme_display_nvm yes
set -g theme_display_virtualenv yes
set -g theme_color_scheme zenburn

set -U EDITOR nvim

#set -gx XDG_RUNTIME_DIR /run/user/$UID
#set -gx DBUS_SESSION_BUS_ADDRESS "unix:path=$XDG_RUNTIME_DIR/bus"

set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
source /usr/share/powerline/bindings/fish/powerline-setup.fish
powerline-setup


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/alf/miniconda4/bin/conda
    eval /home/alf/miniconda4/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/alf/miniconda4/etc/fish/conf.d/conda.fish"
        . "/home/alf/miniconda4/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/alf/miniconda4/bin" $PATH
    end
end
# <<< conda initialize <<<

