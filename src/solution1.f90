program main
    implicit none

    integer, parameter :: dp = kind(1.d0)

    integer :: i
    real(dp) :: vector1(4), vector2(4), dot

    vector1 = (/1._dp, 30._dp, 1.2_dp, -12._dp/)
    vector2 = (/1.0005e2_dp, 3.4e-4_dp, 6._dp, 67._dp/)
    dot = 0._dp

    do i = 1, 4
        dot = dot + vector1(i) * vector2(i)
    end do ! i
    print *, "dot product of vector1 and vector2 = ", dot
    print *, "intrinsic method yields = ", dot_product(vector1, vector2)

end program main
