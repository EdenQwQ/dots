#!/usr/bin/env bash

WMNAME=`wmctrl -m | sed -n 's/Name: //p'`

wal -i $(sed -n 's/file=//p' ~/.config/nitrogen/bg-saved.cfg) -q -t

. "$HOME/.cache/wal/colors.sh"

BG=`printf "%s\n" "$background"`
FG=`printf "%s\n" "$foreground"`
AC=`printf "%s\n" "$color1"`
C1=`printf "%s\n" "$color1"`
C2=`printf "%s\n" "$color2"`
C3=`printf "%s\n" "$color6"`

if [[ "$WMNAME" == "worm" ]]; then

    PFILE="$HOME/.config/worm/polybar/colors.ini"

    sed -i -e "s/background = #.*/background = $BG/g" $PFILE
    sed -i -e "s/foreground = #.*/foreground = $FG/g" $PFILE
    sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
    sed -i -e "s/color1 = #.*/color1 = $C1/g" $PFILE
    sed -i -e "s/color2 = #.*/color2 = $C2/g" $PFILE
    sed -i -e "s/color3 = #.*/color3 = $C3/g" $PFILE

    polybar-msg cmd restart

elif [[ "$WMNAME" == "LG3D" ]]; then
    
    qtile cmd-obj -o cmd -f restart

elif [[ "$WMNAME" == "nimdow" ]]; then

    PFILE="$HOME/.config/nimdow/config.toml"

    sed -i -e "s/barBackgroundColor = .*/barBackgroundColor = \'$BG\'/g" $PFILE
    sed -i -e "s/barForegroundColor = .*/barForegroundColor = \'$FG\'/g" $PFILE
    sed -i -e "s/barSelectionColor = .*/barSelectionColor = \'$C2\'/g" $PFILE
    sed -i -e "s/barUrgentColor = .*/barUrgentColor = \'$C1\'/g" $PFILE
    sed -i -e "s/borderUrgentColor = .*/borderUrgentColor = \'$C1\'/g" $PFILE
    sed -i -e "s/borderColorUnfocused = .*/borderColorUnfocused = \'$C2\'/g" $PFILE
    sed -i -e "s/borderColorFocused = .*/borderColorFocused = \'$C3\'/g" $PFILE

    nimdow --reload-config

fi

