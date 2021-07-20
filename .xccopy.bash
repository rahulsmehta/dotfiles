#!/bin/bash

# \047 ~ '
xcrun xctrace list devices 2> /dev/stdout 1> /dev/null  | grep -i iphone | head -n 1 | awk '{printf "\047%s %s\047", $1, $2}' | pbcopy

