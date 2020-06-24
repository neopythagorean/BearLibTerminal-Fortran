module BearLibTerminal
    use iso_c_binding
    
    ! May the lord forigve me for the following variable spam :pray:
    integer, parameter :: TK_A = X'04' &
                        , TK_B = X'05' &
                        , TK_C = X'06' &
                        , TK_D = X'07' &
                        , TK_E = X'08' &
                        , TK_F = X'09' &
                        , TK_G = X'0A' &
                        , TK_H = X'0B' &
                        , TK_I = X'0C' &
                        , TK_J = X'0D' &
                        , TK_K = X'0E' &
                        , TK_L = X'0F' &
                        , TK_M = X'10' &
                        , TK_N = X'11' &
                        , TK_O = X'12' &
                        , TK_P = X'13' &
                        , TK_Q = X'14' &
                        , TK_R = X'15' &
                        , TK_S = X'16' &
                        , TK_T = X'17' &
                        , TK_U = X'18' &
                        , TK_V = X'19' &
                        , TK_W = X'1A' &
                        , TK_X = X'1B' &
                        , TK_Y = X'1C' &
                        , TK_Z = X'1D' &
                        , TK_1 = X'1E' &
                        , TK_2 = X'1F' &
                        , TK_3 = X'20' &
                        , TK_4 = X'21' &
                        , TK_5 = X'22' &
                        , TK_6 = X'23' &
                        , TK_7 = X'24' &
                        , TK_8 = X'25' &
                        , TK_9 = X'26' &
                        , TK_0 = X'27' &
                        , TK_RETURN = X'28' &
                        , TK_ENTER = X'28' &
                        , TK_ESCAPE = X'29' &
                        , TK_BACKSPACE = X'2A' &
                        , TK_TAB = X'2B' &
                        , TK_SPACE = X'2C' &
                        , TK_MINUS = X'2D' &
                        , TK_EQUALS = X'2E' &
                        , TK_LBRACKET = X'2F' &
                        , TK_RBRACKET = X'30' &
                        , TK_BACKSLASH = X'31' &
                        , TK_SEMICOLON = X'33' &
                        , TK_APOSTROPHE = X'34' &
                        , TK_GRAVE = X'35' &
                        , TK_COMMA = X'36' &
                        , TK_PERIOD = X'37' &
                        , TK_SLASH = X'38' &
                        , TK_F1 = X'3A' &
                        , TK_F2 = X'3B' &
                        , TK_F3 = X'3C' &
                        , TK_F4 = X'3D' &
                        , TK_F5 = X'3E' &
                        , TK_F6 = X'3F' &
                        , TK_F7 = X'40' &
                        , TK_F8 = X'41' &
                        , TK_F9 = X'42' &
                        , TK_F10 = X'43' &
                        , TK_F11 = X'44' &
                        , TK_F12 = X'45' &
                        , TK_PAUSE = X'48' &
                        , TK_INSERT = X'49' &
                        , TK_HOME = X'4A' &
                        , TK_PAGEUP = X'4B' &
                        , TK_DELETE = X'4C' &
                        , TK_END = X'4D' &
                        , TK_PAGEDOWN = X'4E' &
                        , TK_RIGHT = X'4F' &
                        , TK_LEFT = X'50' &
                        , TK_DOWN = X'51' &
                        , TK_UP = X'52' &
                        , TK_KP_DIVIDE = X'54' &
                        , TK_KP_MULTIPLY = X'55' &
                        , TK_KP_MINUS = X'56' &
                        , TK_KP_PLUS = X'57' &
                        , TK_KP_ENTER = X'58' &
                        , TK_KP_1 = X'59' &
                        , TK_KP_2 = X'5A' &
                        , TK_KP_3 = X'5B' &
                        , TK_KP_4 = X'5C' &
                        , TK_KP_5 = X'5D' &
                        , TK_KP_6 = X'5E' &
                        , TK_KP_7 = X'5F' &
                        , TK_KP_8 = X'60' &
                        , TK_KP_9 = X'61' &
                        , TK_KP_0 = X'62' &
                        , TK_KP_PERIOD = X'63' &
                        , TK_SHIFT = X'70' &
                        , TK_CONTROL = X'71' &
                        , TK_ALT = X'72' &
                        ! Mouse Evenes / States !
                        , TK_MOUSE_LEFT = X'80' &
                        , TK_MOUSE_RIGHT = X'81' &
                        , TK_MOUSE_MIDDLE = X'82' &
                        , TK_MOUSE_X1 = X'83' &
                        , TK_MOUSE_X2 = X'84' &
                        , TK_MOUSE_MOVE = X'85' &
                        , TK_MOUSE_SCROLL = X'86' &
                        , TK_MOUSE_X = X'87' &
                        , TK_MOUSE_Y = X'88' &
                        , TK_MOUSE_PIXEL_X = X'89' &
                        , TK_MOUSE_PIXEL_Y = X'8A' &
                        , TK_MOUSE_WHEEL = X'8B' &
                        , TK_MOUSE_CLICKS = X'8C' &
                        , TK_KEY_RELEASED = X'100' &
                        ! Virtual Key-codes !
                        , TK_WIDTH = X'C0' &
                        , TK_HEIGHT = X'C1' &
                        , TK_CELL_WIDTH = X'C2' &
                        , TK_CELL_HEIGHT = X'C3' &
                        , TK_COLOR = X'C4' &
                        , TK_BKCOLOR = X'C5' &
                        , TK_LAYER = X'C6' &
                        , TK_COMPOSITION = X'C7' &
                        , TK_CHAR = X'C8' &
                        , TK_WCHAR = X'C9' &
                        , TK_EVENT = X'CA' &
                        , TK_FULLSCREEN = X'CB' &
                        ! Other Events !
                        , TK_OFF = 0 &
                        , TK_ON = 1 &
                        ! Terminal Read Returns !
                        , TK_INPUT_NONE = 0 &
                        , TK_INPUT_CANCELLED = -1 &
                        ! Text Alignment !
                        , TK_ALIGN_DEFAULT = 0 &
                        , TK_ALIGN_LEFT = 1 &
                        , TK_ALIGN_RIGHT = 2 &
                        , TK_ALIGN_CENTER = 3 &
                        , TK_ALIGN_TOP = 4 &
                        , TK_ALIGN_BOTTOM = 8 &
                        , TK_ALIGN_MIDDLE = 12


    interface
        ! Open & Close
        subroutine terminal_open() bind(C, name='terminal_open')
        end subroutine

        subroutine terminal_close() bind(C, name='terminal_close')
        end subroutine

        ! Terminal set
        ! BLT has many different 'terminal_set's. the regular one
        ! does not work, thus this is bound to set8.
        subroutine terminal_set(setting) bind(C, name='terminal_set8')
            use iso_c_binding
            character(c_char), intent(in) :: setting
        end subroutine

        subroutine terminal_compostion(comp) bind(C, name='terminal_composition')
            use iso_c_binding
            integer (c_int), value :: comp
        end subroutine

        subroutine terminal_layer(layer) bind(C, name='terminal_layer')
            use iso_c_binding
            integer (c_int), value :: layer
        end subroutine

        ! Refresh
        subroutine terminal_refresh() bind(C, name='terminal_refresh')
        end subroutine

        ! DRAWING FUNCTIONS !
        subroutine terminal_clear() bind(C, name='terminal_clear')
        end subroutine

        subroutine terminal_clear_area(x_pos, y_pos, width, height) bind(C, name='terminal_clear_area')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, width, height
        end subroutine

        subroutine terminal_crop(x_pos, y_pos, width, height) bind(C, name='terminal_crop')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, width, height
        end subroutine

        ! Colors
        subroutine terminal_color(color) bind(C, name='terminal_color')
            use iso_c_binding
            integer (c_int), value :: color
        end subroutine

        subroutine terminal_bkcolor(color) bind(C, name='terminal_bkcolor')
            use iso_c_binding
            integer (c_int), value :: color
        end subroutine

        subroutine terminal_put(x_pos, y_pos, char_code) bind(C, name='terminal_put')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, char_code
        end subroutine

        subroutine terminal_put_ext(x_pos, y_pos, dx, dy, char_code, corners) bind(C, name='terminal_put_ext')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, dx, dy, char_code
            integer (c_int) :: corners
        end subroutine

        subroutine terminal_print_ext(x_pos, y_pos, width, height, align, strn, out_w, out_h) bind(C, name='terminal_print_ext8')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, width, height, align
            character (c_char), intent(in) :: strn
            integer (c_int), intent(inout) :: out_w, out_h
        end subroutine

        ! INPUT FUNCTIONS !
        integer(c_int) function terminal_read() bind(C, name='terminal_read')
            use iso_c_binding
        end function

        integer(c_int) function terminal_peek() bind(C, name='terminal_peek')
            use iso_c_binding
        end function

        integer(c_int) function terminal_state(slot) bind(C, name='terminal_state')
            use iso_c_binding
            integer (c_int), value :: slot
        end function

        integer(c_int) function terminal_check(slot) bind(C, name='terminal_check')
            use iso_c_binding
            integer (c_int), value :: slot
        end function

        integer(c_int) function terminal_has_input() bind(C, name='terminal_has_input')
            use iso_c_binding
        end function

        integer(c_int) function terminal_read_str(x_pos, y_pos, buffer, max) bind(C, name='terminal_read_str8')
            use iso_c_binding
            integer(c_int), value :: x_pos, y_pos, max
            character(c_char), intent(inout) :: buffer
        end function

        integer(c_int) function terminal_pick(x_pos, y_pos, index) bind(C, name='terminal_pick')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, index
        end function

        integer(c_int) function terminal_pick_color(x_pos, y_pos, index) bind(C, name='terminal_pick_color')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, index
        end function

        integer(c_int) function terminal_pick_bkcolor(x_pos, y_pos, index) bind(C, name='terminal_pick_bkcolor')
            use iso_c_binding
            integer (c_int), value :: x_pos, y_pos, index
        end function

        ! Tools !

        subroutine terminal_delay(period) bind(C, name='terminal_delay')
            use iso_c_binding
            integer (c_int), value :: period
        end subroutine

        integer(c_int) function color_from_name(name) bind(C, name='color_from_name8')
            use iso_c_binding
            character (c_char), intent(in) :: name
        end function

        integer(c_int) function color_from_argb(alpha, red, green, blue) bind(C, name='color_from_argb')
            use iso_c_binding
            integer (c_int), value :: alpha, red, green, blue
        end function

    end interface

contains
    subroutine terminal_print(x_pos, y_pos, strn)
        use iso_c_binding
        integer(c_int), value :: x_pos, y_pos
        character(c_char), intent(in) :: strn
        integer(c_int) :: ret_width = 0, ret_height = 0
        call terminal_print_ext(x_pos, y_pos, 0, 0, TK_ALIGN_DEFAULT, strn, ret_width, ret_height)
    end subroutine
end module BearLibTerminal


