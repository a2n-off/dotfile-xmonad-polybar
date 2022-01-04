#!/bin/sh

# get the result
IN=$(xmonad-dbus)
#IN="%{F#54a0ff}%{F-}+%{F#c8d6e5}%{F-}+%{F#c8d6e5}%{F-}+%{F#576574}%{F-}+%{F#576574}%{F-}+%{F#576574}%{F-}:Spacing Tall:%{F#00ff00} workspace.sh — ~ — Atom %{F-}"

# replace all space by +
string=$(echo $IN | tr " " "+")

# transform in array
arrIN=(${string//:/ })

# echo and remove not necessary characters
echo $(echo ${arrIN[0]} | tr "+" " ")
