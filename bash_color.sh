#!/bin/bash
#
# Library for terminal text coloring.

COLOR_ESC="\033["

# All these varibles has a function with the same name, but in lower case.
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

# General function to wrap string with escape seqence(s).
# Ex: console_escape foobar $COLOR_RED $COLOR_BOLD
function clr_escape
{
    echo $1
}

# Outputs colors table
function color_dump
{
    local text='gYw'

    echo -e "\n                 40m     41m     42m     43m     44m     45m     46m     47m";

    for FGs in '   0m' '   1m' '  30m' '1;30m' '  31m' '1;31m' \
               '  32m' '1;32m' '  33m' '1;33m' '  34m' '1;34m' \
               '  35m' '1;35m' '  36m' '1;36m' '  37m' '1;37m';
    do
        FG=${FGs// /}
        echo -en " $FGs \033[$FG  $T  "
        for BG in 40m 41m 42m 43m 44m 45m 46m 47m; do
            echo -en " \033[$FG\033[$BG  $T  \033[0m";
        done
        echo;
    done

    #color_bold "    Code   Function           Variable"
    echo '
    0        color_reset          $COLOR_RESET
    1        color_bold           $COLOR_BOLD
    2        color_bright         $COLOR_BRIGHT
    4        color_underscore     $COLOR_UNDERSCORE
    7        color_reverse        $COLOR_REVERSE

    30       color_black          $COLOR_BLACK
    31       color_red            $COLOR_RED
    32       color_green          $COLOR_GREEN
    33       color_brown          $COLOR_BROWN
    34       color_blue           $COLOR_BLUE
    35       color_magenta        $COLOR_MAGENTA
    36       color_cyan           $COLOR_CYAN
    37       color_white          $COLOR_WHITE

    40       color_blackb         $COLOR_BLACKB
    41       color_redb           $COLOR_REDB
    42       color_greenb         $COLOR_GREENB
    43       color_brownb         $COLOR_BROWNB
    44       color_blueb          $COLOR_BLUEB
    45       color_magentab       $COLOR_MAGENTAB
    46       colob_cyanb          $COLOR_CYANB
    47       color_whiteb         $COLOR_WHITEB
'
}

