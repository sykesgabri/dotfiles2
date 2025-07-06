#!/bin/bash

# Set keymap to UK Apple layout
setxkbmap gb mac

# Replace ± with #
xmodmap -e "keycode 49 = section numbersign"
