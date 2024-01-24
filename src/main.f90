program main
    implicit none

    integer, parameter :: dp = kind(1.0d0)

    integer :: i, j, ij, jsq, x
    logical :: i_less_than_j
    real(dp) :: f1, array_3d(3)

    logical :: some_logical

    i = 12
    j = 17
    ij = i * j
    jsq = j ** 2

    i_less_than_j = i < j

    f1 = 1.0_dp

    print *, "i, j, ij, jsq = ", i, j, ij, jsq

    print *, i_less_than_j

    print *, "f1 = ", f1



! Arrays.

    array_3d = 0._dp
    array_3d(1) = 1._dp

    array_3d(1:2) = 1._dp

    print *, array_3d


! Flow Control.

    some_logical = .true.

    if (some_logical) then
        ! Some code.
    else if ( i < j ) then
        ! More code.
    end if

    do i = 1, 100, 2
        print *, i
    end do

    do while (some_logical)
! some code
        if (some_logical) then
            some_logical = .false.
        end if
    end do


! Formatting strings:

    print "(f10.5)", f1


    print *, "10 + 20 = ", add_two_numbers(10, 20)

    call add_two_subroutine(10, 20, x)

    print *, " subroutine : 10 + 20 = ", x


    open(unit = 1, file = "myfile.data", status = "new")
    write(1, *) some_logical
    close(1)


contains


    integer function add_two_numbers(x, y)
        integer, intent(in) :: x, y
        add_two_numbers = x + y
    end function add_two_numbers


    subroutine add_two_subroutine(x, y, xpy)
        integer, intent(in) :: x, y
        integer, intent(out) :: xpy
        xpy = x + y
    end subroutine add_two_subroutine


    function five_ones()
        real(dp) :: five_ones(5)
        five_ones = 1._dp
    end function five_ones

end program main
