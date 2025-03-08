eval "function _tide_pwd
    if set -l split_pwd (string replace -r '^$HOME' '~' -- \$PWD | string split /)
        test -w . && set -f split_output \"$pwd_icon\$split_pwd[1]\" \$split_pwd[2..] ||
            set -f split_output \"$unwritable_icon\$split_pwd[1]\" \$split_pwd[2..]
        set split_output[-1] \"$color_anchors\$split_output[-1]$reset_to_color_dirs\"
    else
        set -f split_output \"$home_icon$color_anchors~\"
    end

    string join / -- \$split_output | string length -V | read -g _tide_pwd_len

    i=1 for dir_section in \$split_pwd[2..-2]
        string join -- / \$split_pwd[..\$i] | string replace '~' $HOME | read -l parent_dir # Uses i before increment

        math \$i+1 | read i

        if path is \$parent_dir/\$dir_section/\$tide_pwd_markers
            set split_output[\$i] \"$color_anchors\$dir_section$reset_to_color_dirs\"
        else if test \$_tide_pwd_len -gt \$dist_btwn_sides
            string match -qr \"(?<trunc>\..|.)\" \$dir_section

            set -l glob \$parent_dir/\$trunc*/
            
            # Replace problematic 'contains -i' logic
            set -l new_glob
            for item in \$glob
                if not contains -i \$parent_dir/\$dir_section/ \$item
                    set new_glob \$new_glob \$item
                end
            end
            set glob \$new_glob

            while string match -qr \"^\$parent_dir/\$(string escape --style=regex \$trunc)\" \$glob &&
                    string match -qr \"(?<trunc>\$(string escape --style=regex \$trunc).)\" \$dir_section
            end
            test -n \"\$trunc\" && set split_output[\$i] \"$color_truncated\$trunc$reset_to_color_dirs\" &&
                string join / \$split_output | string length -V | read _tide_pwd_len
        end
    end

    string join -- / \"$reset_to_color_dirs\$split_output[1]\" \$split_output[2..]
end"

