program main
    implicit none

    integer, parameter :: dp = kind(1.0d0)
    integer :: i, j, ij, jsq
    logical :: i_less_than_j, some_logical
    real(dp) :: f1, f2
    real(dp) :: array_3d(3), matrix_3x3(3, 3)

    i = 12
    j = 17
    ij = i * j
    jsq = j ** 2
    i_less_than_j = i < j
    print *, "ij = ", ij
    print *, "jsq = ", jsq
    print *, i_less_than_j

    i_less_than_j = .true.
    i_less_than_j = .false.
    some_logical = .true.

    print *, i_less_than_j .or. .not. some_logical

! .eq. .lt. .gt. .geq. .leq.
! ==   <    >    >=    <=

    print *, "dp = ", dp

    f1 = 1.0_dp
    f2 = 4.0_dp

    print *, f1 / f2

    array_3d = 0._dp
    matrix_3x3 = 0._dp

    array_3d(1) = 1._dp

    matrix_3x3(2, :) = 1._dp

    array_3d = (/ 1._dp, 0._dp, 0._dp /)

    if (some_logical) then
    else if (i_less_than_j) then
    else
    end if

    do i = 1, 100
        print *, i
    end do

    i = 0
    some_logical = .true.
    do while (some_logical)
        i = i + 1
        print *, i
        if (i > 99) then
            some_logical = .false.
        end if
    end do


!   print *, add_two(15)
    i = 15
    call add_two(i)
    print *, i

contains

!   integer function add_two(x)
!       integer, intent(in) :: x
!       add_two = x + 2
!   end function add_two

    subroutine add_two(x)
        integer, intent(in out) :: x
        x = x + 2
    end subroutine add_two

end program main
