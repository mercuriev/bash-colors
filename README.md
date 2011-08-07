Set of bash functions to output colored content.

Installation
============

0. Download latest source  
```
$ curl https://raw.github.com/garygolden/bash_colors/master/bash_colors.sh > ~/.bash_colors
```

0. Now you can include the file (or add it to .bashrc)  
```
$ source ~/.bash_colors
```

Usage
=====

The library defines variables and functions which can be used in various ways.  

Variables
---------

**$CLR_\***  
Set of varibles contains numeric escape codes. Variables are named after english color names.  
See **clr_dump** for list.

**$CLR_ESC**  
is a special variable for escape code (\033) followed by [ character.

Functions
---------

**clr_dump**  
Output table of available colors, functions and variables.

**clr_\*** _string_  
Output colored _string_. Functions are named after english color names.  
See **clr_dump** for list.

**clr_escape** _string_ _$CLR_ ...  
escape _string_ with given colors. Later colors overwrites previous.

**clr_reset**  
Reset formatting. Useful for custom usage of $CLR_* variable series.

Examples
========

Print "foobar" with red foreground.  
```
$ clr_red "foobar"
```

Print "foobar" with green background.  
```
$ clr_greenb "foobar"
```

Print "foobar" with cyan foreground and bold font.  
```
$ clr_bold "$(clr_cyan foobar)"
```

or manually, using variables  
```
$ clr_escape foobar $CLR_BOLD $CLR_CYAN
```

or any other code  
```
clr_escape foobar 1 36
```

See also
========

console_codes(4)  
[Advanced Bash Scripting Guide](http://tldp.org/LDP/abs/html/colorizing.html)
