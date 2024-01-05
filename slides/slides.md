# Scientific Fortran for Beginners

## Introduction

## Fortran Source Files.

The standard modern Fortran file extension is `.f90`. You might sometimes see `.f95` or `.f03` for specific Fortran standards.

If you happen to see `.f` or `.for` file extensions, you're dealing with old FORTRAN, which looks quite different.

## Hello World!

A Fortran file is made up of a list of statements, each taking place on its own line. There's no need for curly braces or indentation, but you'll probably want to use indentation.
```Fortran
program main
    implicit none
    print *, "Hello, World!"
end program main
```
Fortran is also case insensitive, so `PROGRAM MAIN` is equivalent to `program main` or `pRoGrAm MaIn`

## Compilation

Once you have written a Fortran file, it needs to be compiled. If you have installed gfortran this is done in the following way.
```Bash
$ gfortran myprogram.f90 -o myprogram.out
```
You can then run the binary like so.
```Bash
$ ./myprogram.out
```

## Variables