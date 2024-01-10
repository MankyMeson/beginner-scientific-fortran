program main
    use iso_fortran_env, only: wp => real64
    implicit none

    real(wp), parameter :: PI = 3.14_wp, EPSILON_0 = 8.85e-12_wp

    call main_loop

contains


    !> This performs the main simulation loop and writes data to the output file.
    subroutine main_loop
        integer, parameter :: ITERATION_COUNT = 1e3
        real(wp), parameter :: STEP_SIZE_PER_DIMENSION = 1.e-3_wp / real(ITERATION_COUNT, wp)
        integer iter, charge1, charge2
        real(wp) position1(3), position2(3), temp_force(3)

        position1 = (/ 0.1e-3_wp, 0.1e-3_wp, 0.1e-3_wp /)
        position2 = (/ 0._wp, 0._wp, 0._wp /)
        charge1 = -1
        charge2 = -1

        open(1, file = "coulomb_repulsion.data", status = "new")

        do iter = 1, ITERATION_COUNT
            temp_force = get_coulomb_force1(position1, position2, charge1, charge2)
            write(1, *) temp_force
            position1(1) = position1(1) + STEP_SIZE_PER_DIMENSION
            position1(2) = position1(2) + STEP_SIZE_PER_DIMENSION
            position1(3) = position1(3) + STEP_SIZE_PER_DIMENSION
        end do ! iter

        close(1)

    end subroutine main_loop


    !> Function returns the electrostatic force acting on electron 1.
    function get_coulomb_force1(position1, position2, charge1, charge2) result(f)
        integer, intent(in) :: charge1, charge2
        real(wp), intent(in) :: position1(3), position2(3)
        real(wp) :: f(3), separation(3), separation_magnitude_inv_cubed, scalar_factor

        separation = position1 - position2
        separation_magnitude_inv_cubed = dot_product(separation, separation) ** (2._wp / 3._wp)
        scalar_factor = charge1 * charge2 / (4._wp * PI * EPSILON_0)

        f = scalar_factor * separation_magnitude_inv_cubed * separation
    end function get_coulomb_force1

end program main