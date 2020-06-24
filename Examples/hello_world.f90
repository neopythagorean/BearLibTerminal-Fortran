! BearLibTerminal-Fortran Example Program
! To compile using gfortran:
!    gfortran -c BearLibTerminal.f90
!    gfortran -L. -lBearLibTerminal hello_world.f90 BearLibTerminal.o

program hello_world
    use bearlibterminal
    implicit none
    integer :: user_in
    logical :: quit = .false.

    call terminal_open()
    call terminal_set("window.title='Bear Lib Fortran'"//CHAR(0))

    do while(.not. quit)
        call terminal_clear()
        call terminal_print(10, 10, "Hello, world!"//CHAR(0))
        user_in = terminal_read()
        if (user_in .eq. TK_ESCAPE) then
            quit = .true.
        end if
        call terminal_refresh()
    end do

    call terminal_close()
    
end program hello_world
