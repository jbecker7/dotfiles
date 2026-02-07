# Using Starship prompt with minimalist theme (configured in starship.toml)
# fish_config theme choose "Dracula Official"  # Disabled - using Starship instead

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
    # minimalist theme colors
    # Commands and executables use gold instead of red
    set -U fish_color_command d4af37  # Gold for commands
    set -U fish_color_normal f5f5f5   # White for normal text
    set -U fish_color_error c8102e    # Red only for errors
    set -U fish_color_param f5f5f5    # White for parameters
    set -U fish_color_comment 6b6b6b   # Gray for comments
    set -U fish_color_keyword d4af37   # Gold for keywords
    set -U fish_color_operator d4af37 # Gold for operators
    set -U fish_color_escape d4af37   # Gold for escapes
    set -U fish_color_quote f5f5f5    # White for quotes
    set -U fish_color_redirection d4af37 # Gold for redirections
    set -U fish_color_end d4af37      # Gold for end markers
    set -U fish_color_cancel c8102e --reverse # Red for cancelled commands
    set -U fish_color_search_match --background=1e1e1e # Dark background for search
    set -U fish_color_selection --background=1e1e1e # Dark background for selection
    
    # LS_COLORS for executable files - use gold (ANSI color 214) instead of red
    # ex = executable files, common script extensions
    set -gx LS_COLORS "di=38;5;240:ln=38;5;240:ex=38;5;214:*.sh=38;5;214:*.bash=38;5;214:*.fish=38;5;214:*.py=38;5;214:*.pl=38;5;214:*.rb=38;5;214:*.js=38;5;214:*.ts=38;5;214:*.go=38;5;214:*.rs=38;5;214"
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

# Set Starship config path (if using dotfiles repo)
set -gx STARSHIP_CONFIG "$HOME/GitHub/dotfiles/starship.toml"
starship init fish | source

# Disable mail check
set -U MAILCHECK 0

