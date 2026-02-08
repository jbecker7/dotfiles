function fish_greeting
    set -l gold d4af37
    set -l gray 6b6b6b

    set -l weekdays 星期一 星期二 星期三 星期四 星期五 星期六 星期日
    set -l wday (date +%u)
    set -l weekday_cn $weekdays[$wday]

    set -l year (date +%Y)
    set -l month (date +%m | string replace -r '^0' '')
    set -l day (date +%d | string replace -r '^0' '')
    set -l time_str (date +%H:%M)

    set_color $gray
    echo ""
    echo "  ─────────────────────────────"
    set_color $gold
    echo "   welcome back"
    set_color $gray
    echo "   $weekday_cn $year年$month月$day日 · $time_str"
    echo "  ─────────────────────────────"
    set_color normal
    echo ""
end
