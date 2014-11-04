bash-experience
===============

* array.bash: array declaration and usage.
 * ref: http://wadefs.blogspot.tw/2008/06/bash-array.html
 * ref: http://go-linux.blogspot.tw/2007/03/basharray.html

* position_parameters.bash: the difference between $@ and $*.
 * The $@ and $* parameters differ only when between double quotes.
* exit
 * ref: http://tldp.org/LDP/abs/html/exit-status.html

==questions==
* http://tldp.org/LDP/abs/html/string-manipulation.html
 * if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]$ ]]
 * what is =~?
==bash terminology==
* word splitting: http://mywiki.wooledge.org/WordSplitting
* path expandsion: ??
* set: http://wiki.bash-hackers.org/commands/builtin/set
 * "--": If no arguments follow, the positional parameters are unset. With arguments, the positional parameters are set, even if the strings begin with a - (dash) like an option.
