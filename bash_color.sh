#!/bin/bash

COLOR_ESC="\033["

# All these varibles has a function with the same, but lowercased, name.
#
COLOR_RESET=0             # reset all attributes to their defaults
COLOR_RESET_UNDERLINE=24  # underline off
COLOR_RESET_REVERSE=27    # reverse off
COLOR_DEFAULT=39          # set underscore off, set default foreground color
COLOR_DEFAULTB=49         # set default background color

COLOR_BOLD=1              # set bold
COLOR_BRIGHT=2            # set half-bright (simulated with color on a color display)
COLOR_UNDERSCORE=4        # set underscore (simulated with color on a color display)
COLOR_REVERSE=7           # set reverse video

COLOR_BLACK=30            # set black foreground
COLOR_RED=31              # set red foreground
COLOR_GREEN=32            # set green foreground
COLOR_BROWN=33            # set brown foreground
COLOR_BLUE=34             # set blue foreground
COLOR_MAGENTA=35          # set magenta foreground
COLOR_CYAN=36             # set cyan foreground
COLOR_WHITE=37            # set white foreground

COLOR_BLACKB=40           # set black background
COLOR_REDB=41             # set red background
COLOR_GREENB=42           # set green background
COLOR_BROWNB=43           # set brown background
COLOR_BLUEB=44            # set blue background
COLOR_MAGENTAB=45         # set magenta background
COLOR_CYANB=46            # set cyan background
COLOR_WHITEB=47           # set white background



# Outputs colors table
function colors_dump {
    T='gYw'   # The test text
echo -e "\n                 40m     41m     42m     43m\
     44m     45m     46m     47m";

for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
           '  36m' '1;36m' '  37m' '1;37m';
  do FG=${FGs// /}
  echo -en " $FGs \033[$FG  $T  "
  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
  done
  echo;
done
echo
}
