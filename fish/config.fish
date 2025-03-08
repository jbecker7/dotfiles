fish_config theme choose "Dracula Official"
set -gx PATH /opt/homebrew/Cellar/postgresql@15/15.12/bin/psql $PATH
alias neofetch='neofetch --ascii  /Users/jcb/reimu.txt --ascii_colors 4'
set -gx PATH /usr/local/texlive/2024basic/bin/universal-darwin $PATH
set -U fish_user_paths /usr/local/texlive/2024basic/bin/universal-darwin $fish_user_paths

if status is-interactive
    # Commands to run in interactive sessions can go here
set -gx PATH /Users/jcb/Library/Python/3.9/bin $PATH


end
set -gx PATH /usr/local/opt/python/libexec/bin $PATH


# Setting PATH for Python 3.11
# The original version is saved in /Users/jcb/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

function amplayer
    /Applications/Apple-Music-CLI-Player-main/src/am.sh $argv
end

# alias lvim "/Users/jcb/.local/bin/lvim"


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function run_bash_script
    # Check if the first argument is provided and if the file exists
    if test -z "$argv[1]"
        echo "Please provide a script path."
        return 1
    else if not test -f $argv[1]
        echo "Script file does not exist: $argv[1]"
        return 1
    end

    # Store the script path
    set script_path $argv[1]

    # Remove the script path from the arguments list
    set -e argv[1]

    # Execute the script with the remaining arguments
    bash $script_path $argv
end
set -gx PATH /Applications/Racket\ v8.14/bin $PATH



zoxide init fish | source


# neofetch

starship init fish | source

set -U MAILCHECK 0




# Created by `pipx` on 2025-03-06 14:42:12
set PATH $PATH /Users/jcb/.local/bin
