# Makefile Cookbook
by phialfai@42paris

### Directories
```Makefile
DIR_NAME = mydir

target : prereq ...
    fjkd
```






### Colors
Color | Font code | Background code
------|-----------|----------------
Black | \x1B[30m | \x1B[40m
Red | \x1B[31m | \x1B[41m
Green | \x1B[32m | \x1B[42m
Yellow | \x1B[33m | \x1B[43m
Blue | \x1B[34m | \x1B[44m
Magenta | \x1B[35m | \x1B[45m
Cyan | \x1B[36m | \x1B[46m
White | \x1B[37m | \x1B[47m
Any palette color (with V in [0-255]) | \x1B[38;5;Vm | \x1B[48;5;Vm
Any RGB color (with values in [0-255]) | \x1B[38;2;R;G;Bm | \x1B[48;2;R;G;Bm

```makefile

```

### Styles
Style | Code
------|-----
Bold | \x1B[1m
Faint | \x1B[2m
Italic | \x1B[3m
Underlined | \x1B[4m
Inverse | \x1B[7m
Strikethrough | \x1B[9m