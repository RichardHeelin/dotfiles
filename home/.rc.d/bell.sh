if [ "$DISPLAY" ]; then
    xset b 100
    if [ -f /usr/share/sounds/gnome/default/alerts/glass.ogg ]; then
        pactl upload-sample /usr/share/sounds/gnome/default/alerts/glass.ogg bell.ogg
    fi
fi
