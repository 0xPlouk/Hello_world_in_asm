# Hello_world_in_asm
Simple Hello world ! in assembly x86_64 Linux from my first Youtube video.
https://www.youtube.com/watch?v=RoSzHrefTt0

```
nasm -f elf64 hello_world.asm -o hello_world.o
ld hello_world.o -o hello_world
./hello_world
```
