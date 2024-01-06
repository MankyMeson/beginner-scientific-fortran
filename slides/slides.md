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

Fortran is a statically typed language, variables must be defined with a type and can only be assigned to values of that type. Here are a few examples:
```Fortran
    integer :: i, j, ij, jsq
    logical :: i_less_than_j

    i = 12
    j = 17
    i_less_than_j = i < j
    ij = i * j
    jsq = j ** 2
```

---

Constants are defined using the keyword `parameter`.

Floating point numbers come in single and double precision forms. It's standard practice to define the **kinds** of these using the following syntax.
```Fortran
    integer, parameter :: dp = kind(1.0d0), sp = kind(1.0e0)
    real(sp) :: f1
    real(dp) :: f2

    f1 = 1.0_sp
    f2 = 1.0_dp

```

## Arrays

Arrays are assigned using parentheses `()`. To make an array of three dimensions you would:
```Fortran
    real(dp) :: array_3d(3)

! Set all elements to zero.
    array_3d = 0._dp

! Set the first element to 1.
    array_3d(1) = 1._dp
```

## Flow Control

If statements use the following syntax.
```Fortran
    if (some_logical) then
        ! Your first branch in here.
    else if (another_logical) then
        ! Your second branch in here.
    end if
```

---

Basic for loops, or do loops as they are known in Fortran use the following syntax:
```Fortran
    do x = 1, n
        ! Your repeating code in here.
    end do
```
 While loops:
 ```Fortran
    do while (some_logical)
        ! Your repeating code in here.
    end do
 ```

## Exercise 1

Write a program which
