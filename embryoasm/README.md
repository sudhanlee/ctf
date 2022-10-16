Command used to create the file

``` bash
gcc -nostdlib -static <level>.s -o <level>-elf
objcopy --dump-section .text=<level> <level>-elf
/challenge/($username) < <level>
```
