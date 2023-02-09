program vars
    implicit none

    integer, parameter :: DP = kind(1.d0) ! 8 bytes
    integer, parameter :: SP = kind(1.e0) ! 4 bytes

    integer i
    real(SP) x
    real(DP) y, dh
    integer h,j,k,l,m,n

! Variable declarations above this line
! ------------------------------------
! Code below this line

    i = 12

    x = 12.0e0
    y = 12.0d0

    print *, i,x,y

    h = i+2
    j = int(x)+2
    k = i*2
    l = i/2
    m = i**2
    n = abs(-i)

    dh = dble(h)

    print *, h,j,k,l,m,n,dh

    dh = merge(1.0d0,0.0d0,-x>0.d0)

    print *, dh

end program vars
