#!/bin/sh

. ~/scripts/rofi/config

cd ~/project/swhkd
git add -u
message=$(rofi_allow_cus)
if [ $(~/scripts/rofi/confirm "commit?") = "yes" ]; then
    git commit -m $message
fi
if [ $(~/scripts/rofi/confirm "push?") = "yes" ]; then
    git push
fi
