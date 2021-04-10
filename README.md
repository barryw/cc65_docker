

              CCCCCCCCCCCCC       CCCCCCCCCCCCC        66666666   555555555555555555
           CCC::::::::::::C    CCC::::::::::::C       6::::::6    5::::::::::::::::5
         CC:::::::::::::::C  CC:::::::::::::::C      6::::::6     5::::::::::::::::5
        C:::::CCCCCCCC::::C C:::::CCCCCCCC::::C     6::::::6      5:::::555555555555
       C:::::C       CCCCCCC:::::C       CCCCCC    6::::::6       5:::::5
      C:::::C             C:::::C                 6::::::6        5:::::5
      C:::::C             C:::::C                6::::::6         5:::::5555555555
      C:::::C             C:::::C               6::::::::66666    5:::::::::::::::5
      C:::::C             C:::::C              6::::::::::::::66  555555555555:::::5
      C:::::C             C:::::C              6::::::66666:::::6             5:::::5
      C:::::C             C:::::C              6:::::6     6:::::6            5:::::5
       C:::::C       CCCCCCC:::::C       CCCCCC6:::::6     6:::::65555555     5:::::5
        C:::::CCCCCCCC::::C C:::::CCCCCCCC::::C6::::::66666::::::65::::::55555::::::5
         CC:::::::::::::::C  CC:::::::::::::::C 66:::::::::::::66  55:::::::::::::55
           CCC::::::::::::C    CCC::::::::::::C   66:::::::::66      55:::::::::55
              CCCCCCCCCCCCC       CCCCCCCCCCCCC     666666666          555555555

#### Introduction

This is a Docker image for running the CC65 compiler and associated toolchain. The CC65 compiler allows you to write C code for 8-bit 65xx machines.

More information can be found here: https://cc65.github.io/

#### How do I use this image?

Very easily:

```bash
docker run -v ${PWD}:/code barrywalker/cc65:latest /code/main.c -o /code/main.prg
```

This will mount your current directory to `/code`, compile the C file `main.c` and deposit the artifacts back to your current working directory.

You can also create aliases to the CC65 tools to make things much easier:

```bash
alias cc65='docker run -it -v ${PWD:-.}:/code barrywalker/cc65:latest cc65'
alias ar65='docker run -it -v ${PWD:-.}:/code barrywalker/cc65:latest ar65'
alias ca65='docker run -it -v ${PWD:-.}:/code barrywalker/cc65:latest ca65'
alias cl65='docker run -it -v ${PWD:-.}:/code barrywalker/cc65:latest cl65'
alias ld65='docker run -it -v ${PWD:-.}:/code barrywalker/cc65:latest ld65'
```

Now, you can run `cc65 /code/main.c -o /code/main.prg`
