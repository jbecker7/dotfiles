fish_config theme choose "Dracula Official"

# PATH cleanup: Consolidated into one block
set -gx PATH /opt/homebrew/Cellar/postgresql@15/15.12/bin/psql \
             /usr/local/texlive/2024basic/bin/universal-darwin \
             /Users/jcb/Library/Python/3.9/bin \
             /usr/local/opt/python/libexec/bin \
             /Library/Frameworks/Python.framework/Versions/3.11/bin \
             /Applications/Racket\ v8.14/bin \
             /Users/jcb/.local/bin \
             $PATH

# Fish user paths 
set -U fish_user_paths /usr/local/texlive/2024basic/bin/universal-darwin $fish_user_paths

# Interactive session settings
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Function: Apple Music CLI Player (very nice CLI tool haha)
function amplayer
    /Applications/Apple-Music-CLI-Player-main/src/am.sh $argv
end

# Function: Run Bash Script
function run_bash_script
    if not test -f $argv[1]
        echo "Script file does not exist: $argv[1]"
        return 1
    end
    bash $argv
end

# Alias for Love2D
alias love="/Applications/love.app/Contents/MacOS/love"

# Init tools
zoxide init fish | source
starship init fish | source

# Disable mail check
set -U MAILCHECK 0

