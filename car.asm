BITS 16
org 0x100
jmp start

;-----------------------------------------------------
; Draw Intro Screen
;-----------------------------------------------------
draw_intro_screen:
    mov ax, 0013h
    int 10h

    mov ax, 0xA000
    mov es, ax
    xor di, di
    
    mov dx, 0
.gradient_loop:
    mov cx, 320
    mov al, 177     
    rep stosb
    inc dx
    cmp dx, 200
    jl .gradient_loop
    
    push word 15       ; White color
    push word 40
    push word 25
    push word 240
    push word 75
    call Drawing_loop
    
    push word 125       ; Light blue
    push word 50
    push word 30
    push word 220
    push word 70
    call Drawing_loop
    
    ; R
    push word 12       ; Light red
    push word 55
    push word 40
    push word 6
    push word 58
    call Drawing_loop
    push word 12
    push word 55
    push word 38
    push word 12
    push word 43
    call Drawing_loop
    push word 12
    push word 55
    push word 47
    push word 13
    push word 51
    call Drawing_loop
    push word 12
    push word 67
    push word 40
    push word 3
    push word 48
    call Drawing_loop
	push word 12
    push word 67
    push word 50
    push word 3
    push word 58
    call Drawing_loop
    
    ; E
    push word 14       ; Yellow
    push word 75
    push word 38
    push word 6
    push word 58
    call Drawing_loop
    push word 14
    push word 75
    push word 38
    push word 15
    push word 43
    call Drawing_loop
    push word 14
    push word 75
    push word 47
    push word 15
    push word 51
    call Drawing_loop
    push word 14
    push word 75
    push word 54
    push word 15
    push word 58
    call Drawing_loop
    
    ; T
    push word 10       ; Light green
    push word 95
    push word 38
    push word 15
    push word 43
    call Drawing_loop
    push word 10
    push word 101
    push word 43
    push word 3
    push word 58
    call Drawing_loop
    
    ; R
    push word 11       ; Cyan
    push word 113
    push word 38
    push word 6
    push word 58
    call Drawing_loop
    push word 11
    push word 113
    push word 38
    push word 12
    push word 43
    call Drawing_loop
    push word 11
    push word 113
    push word 47
    push word 13
    push word 51
    call Drawing_loop
    push word 11
    push word 125
    push word 40
    push word 3
    push word 48
    call Drawing_loop
	push word 11
    push word 125
    push word 50
    push word 3
    push word 58
    call Drawing_loop
    
    ; O
    push word 13       ; Magenta
    push word 133
    push word 40
    push word 6
    push word 56
    call Drawing_loop
    push word 13
    push word 135
    push word 38
    push word 11
    push word 43
    call Drawing_loop
    push word 13
    push word 135
    push word 54
    push word 11
    push word 58
    call Drawing_loop
    push word 13
    push word 145
    push word 40
    push word 3
    push word 56
    call Drawing_loop
    
    ; R
    push word 12       ; Light red
    push word 165
    push word 38
    push word 6
    push word 58
    call Drawing_loop
    push word 12
    push word 165
    push word 38
    push word 12
    push word 43
    call Drawing_loop
    push word 12
    push word 165
    push word 47
    push word 13
    push word 51
    call Drawing_loop
    push word 12
    push word 177
    push word 40
    push word 3
    push word 48
    call Drawing_loop
	push word 12
    push word 177
    push word 50
    push word 3
    push word 58
    call Drawing_loop
    
    
    ; A
    push word 14       
    push word 185
    push word 40
    push word 6
    push word 58
    call Drawing_loop
    push word 14
    push word 187
    push word 38
    push word 11
    push word 43
    call Drawing_loop
    push word 14
    push word 185
    push word 47
    push word 15
    push word 51
    call Drawing_loop
    push word 14
    push word 197
    push word 40
    push word 3
    push word 58
    call Drawing_loop
    
    ; C
    push word 10       ; Magenta
    push word 205
    push word 40
    push word 6
    push word 56
    call Drawing_loop
    push word 10
    push word 207
    push word 38
    push word 13
    push word 43
    call Drawing_loop
    push word 10
    push word 208
    push word 54
    push word 12
    push word 58
    call Drawing_loop
    
    ; E
    push word 103
    push word 225
    push word 38
    push word 6
    push word 58
    call Drawing_loop
    push word 103
    push word 225
    push word 38
    push word 15
    push word 43
    call Drawing_loop
    push word 103
    push word 225
    push word 47
    push word 15
    push word 51
    call Drawing_loop
    push word 103
    push word 225
    push word 54
    push word 15
    push word 58
    call Drawing_loop
    
    ; R
    push word 98       
    push word 245
    push word 38
    push word 6
    push word 58
    call Drawing_loop
    push word 98
    push word 245
    push word 38
    push word 12
    push word 43
    call Drawing_loop
    push word 98
    push word 245
    push word 47
    push word 13
    push word 51
    call Drawing_loop
    push word 98
    push word 257
    push word 40
    push word 3
    push word 48
    call Drawing_loop
	push word 98
    push word 257
    push word 50
    push word 3
    push word 58
    call Drawing_loop
    
    push word 15
    push word 60
    push word 105
    push word 200
    push word 107
    call Drawing_loop
    push word 14
    push word 60
    push word 109
    push word 200
    push word 111
    call Drawing_loop
    
    push word 14
    push word 60
    push word 122
    push word 200
    push word 135
    call Drawing_loop
    
    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 9
    int 10h
    
    mov ah, 09h
    mov dx, press_key_msg
    int 21h
   
   
    push word 15
    push word 5
    push word 80
    push word 15
    push word 120
    call Drawing_loop
   
    push word 12
    push word 22
    push word 85
    push word 8
    push word 115
    call Drawing_loop
   
    push word 15
    push word 300
    push word 80
    push word 15
    push word 120
    call Drawing_loop
   
    push word 12
    push word 290
    push word 85
    push word 8
    push word 115
    call Drawing_loop
   
    mov bx, 130
    mov dx, 10
.checkered_left:
    push word 15
    push dx
    push bx
    push word 8
    add bx, 5
    push bx
    call Drawing_loop
   
    add bx, 5
    cmp bx, 160
    jb .checkered_left
   
    mov bx, 130
    mov dx, 302
.checkered_right:
    push word 15
    push dx
    push bx
    push word 8
    add bx, 5
    push bx
    call Drawing_loop
   
    add bx, 5
    cmp bx, 160
    jb .checkered_right
    
    push word 124
    push word 50
    push word 150
    push word 220
    push word 196
    call Drawing_loop
    
    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 13
    int 10h
    
    mov ah, 09h
    mov dx, designed_msg
    int 21h
    
    mov ah, 02h
    mov bh, 0
    mov dh, 21
    mov dl, 8
    int 10h
    
    mov ah, 09h
    mov dx, designer1_msg
    int 21h
    
    mov ah, 02h
    mov bh, 0
    mov dh, 23
    mov dl, 9
    int 10h
    
    mov ah, 09h
    mov dx, designer2_msg
    int 21h
    
	
    mov ah, 00h
    int 16h
    
    ret

;-----------------------------------------------------
; Lane positions
;-----------------------------------------------------
LANE_LEFT   equ 102    
LANE_CENTER equ 143    
LANE_RIGHT  equ 183    

current_lane: dw LANE_CENTER 
car_x_pos: dw LANE_CENTER     

CAR_Y_POS   equ 159
CAR_WIDTH   equ 35
CAR_HEIGHT  equ 38
ENEMY_WIDTH  equ 33
ENEMY_HEIGHT equ 36

spawn_timer:    dw 0
SPAWN_DELAY equ 120
random_seed: dw 0

scroll_counter: dw 0 

enemy_x_pos:   dw LANE_CENTER
enemy_y_pos:   dw 0
enemy_active:  db 0

star_x_pos:    dw LANE_CENTER
star_y_pos:    dw 0
star_active:   db 0
star_spawn_counter: dw 0
STAR_SPAWN_DELAY equ 180  

score: dw 0

timer_ticks dw 0            
old_int8 dd 0               

;-----------------------------------------------------
; Initialize random seed
;-----------------------------------------------------
init_random_seed:
    push ax
    push cx
    push dx
    mov ah, 00h
    int 1Ah
    mov [random_seed], dx
    pop dx
    pop cx
    pop ax
    ret

;-----------------------------------------------------
; Generate random number
;-----------------------------------------------------
get_random_number:
    push bx
    push dx
    mov ax, [random_seed]
    mov bx, 25173
    mul bx
    add ax, 13849
    adc dx, 0
    mov [random_seed], ax
    pop dx
    pop bx
    ret

;-----------------------------------------------------
; Get random lane index (0, 1, or 2)
;-----------------------------------------------------
get_random_lane_index:
    call get_random_number
    mov dx, 0
    mov bx, 3
    div bx
    mov ax, dx
    ret

;-----------------------------------------------------
; Timer interrupt handler
;-----------------------------------------------------
timer_handler:
    push ax
    inc word [cs:timer_ticks]
    mov al, 0x20
    out 0x20, al
    pop ax
    iret

;-----------------------------------------------------
; Setup custom timer interrupt
;-----------------------------------------------------
setup_timer:
    pusha
    push ds
    xor ax, ax
    mov ds, ax
    cli
    mov ax, [4*8]           
    mov [cs:old_int8], ax
    mov ax, [4*8+2]          
    mov [cs:old_int8+2], ax
    
    mov word [4*8], timer_handler
    mov [4*8+2], cs
    
    mov al, 0x36        
    out 0x43, al
    mov ax, 19886
    out 0x40, al      
    mov al, ah
    out 0x40, al        
    sti
    pop ds
    popa
    ret

;-----------------------------------------------------
; Restore original timer settings
;-----------------------------------------------------
restore_timer:
    pusha
    push ds
    cli
    xor ax, ax
    mov ds, ax
    mov ax, [cs:old_int8]
    mov [4*8], ax
    mov ax, [cs:old_int8+2]
    mov [4*8+2], ax
    
	mov al, 0x36
    out 0x43, al
    mov ax, 0
    out 0x40, al
    mov al, ah
    out 0x40, al
    sti
    pop ds
    popa
    ret

;-----------------------------------------------------
; Wait for next timer tick
;-----------------------------------------------------
wait_next_tick:
    push ax
    mov ax, [timer_ticks]   
.wait_loop:
    cmp ax, [timer_ticks]   
    je .wait_loop
    pop ax
    ret

;-----------------------------------------------------
; Check keyboard input (With Pause Logic)
;-----------------------------------------------------
check_keyboard:
    push ax
    
    mov ah, 01h
    int 16h
    jz .no_key
    
    mov ah, 00h
    int 16h
    
    cmp ah, 4Bh             ; Left arrow
    je .move_left
    cmp ah, 4Dh             ; Right arrow
    je .move_right
    cmp al, 27              ; ESC
    je .handle_pause
    jmp .no_key
    
.handle_pause:
    call pause_game_routine
    jmp .no_key

.move_left:
    mov ax, [current_lane]
    cmp ax, LANE_LEFT
    je .no_key
    cmp ax, LANE_CENTER
    je .go_to_left
    ; Right to Center
    mov ax, LANE_CENTER
    call check_and_collect_star_at_position
    mov word [current_lane], LANE_CENTER
    jmp .no_key
.go_to_left:
    mov ax, LANE_LEFT
    call check_and_collect_star_at_position
    mov word [current_lane], LANE_LEFT
    jmp .no_key
    
.move_right:
    mov ax, [current_lane]
    cmp ax, LANE_RIGHT
    je .no_key
    cmp ax, LANE_CENTER
    je .go_to_right
    ; Left to Center
    mov ax, LANE_CENTER
    call check_and_collect_star_at_position
    mov word [current_lane], LANE_CENTER
    jmp .no_key
.go_to_right:
    mov ax, LANE_RIGHT
    call check_and_collect_star_at_position
    mov word [current_lane], LANE_RIGHT
    jmp .no_key

.no_key:
    pop ax
    ret

;-----------------------------------------------------
; Pause Game Routine
;-----------------------------------------------------
pause_game_routine:
    pusha
    push ds
    push es
    
    call save_pause_background
    
    ; Red border box
    push word 4         ; Red
    push word 100       ; X
    push word 80        ; Y
    push word 120       ; Width
    push word 40        ; Height
    call Drawing_loop
    
    ; Inner Black box
    push word 0         ; Black
    push word 105
    push word 85
    push word 110
    push word 30
    call Drawing_loop

    ; 3. Print Text
    mov ah, 02h
    mov bh, 0
    mov dh, 11          ; Row
    mov dl, 15          ; Col
    int 10h
    
    mov ah, 09h
    mov dx, pause_text
    int 21h
    
    mov ah, 02h
    mov dh, 13
    mov dl, 16
    int 10h
    
    mov ah, 09h
    mov dx, pause_opt
    int 21h

    ; 4. Wait for Y or N
.wait_for_input:
    mov ah, 00h
    int 16h
    
    cmp al, 'y'
    je .do_exit
    cmp al, 'Y'
    je .do_exit
    cmp al, 'n'
    je .resume
    cmp al, 'N'
    je .resume
    jmp .wait_for_input

.resume:
    ; Restore screen and return
    call restore_pause_background
    pop es
    pop ds
    popa
    ret

.do_exit:
    ; Clean up stack (we are deep in calls) and jump to exit
    call restore_timer
    mov ax, 0003h
    int 10h
    mov ax, 4C00h
    int 21h

;-----------------------------------------------------
; Save/Restore Pause Background
;-----------------------------------------------------
save_pause_background:
    pusha
    push ds
    push es
    mov ax, 0xA000
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov di, pause_bg_buffer
    
    mov bx, 80          ; Start Y
    mov cx, 40          ; Height
.save_loop:
    mov si, bx
    shl si, 8
    mov ax, bx
    shl ax, 6
    add si, ax
    add si, 100         ; Start X
    
    push cx
    mov cx, 120         ; Width
    rep movsb
    pop cx
    
    inc bx
    loop .save_loop
    
    pop es
    pop ds
    popa
    ret

restore_pause_background:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    mov ax, 0xA000
    mov es, ax
    mov si, pause_bg_buffer
    
    mov bx, 80          ; Start Y
    mov cx, 40          ; Height
.restore_loop:
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    add di, 100         ; Start X
    
    push cx
    mov cx, 120         ; Width
    rep movsb
    pop cx
    
    inc bx
    loop .restore_loop
    
    pop es
    pop ds
    popa
    ret

;-----------------------------------------------------
; Collision Checks
;-----------------------------------------------------
check_collision:
    push bx
    push cx
    push dx
    
    cmp byte [enemy_active], 0
    je .no_collision
    
    ; Simple bounding box check
    mov ax, [car_x_pos]
    add ax, CAR_WIDTH
    mov bx, [enemy_x_pos]
    add bx, 1
    cmp ax, bx
    jle .no_collision
    
    mov cx, [car_x_pos]
    mov dx, [enemy_x_pos]
    add dx, 34
    cmp dx, cx
    jle .no_collision
    
    mov ax, CAR_Y_POS
    add ax, CAR_HEIGHT
    mov bx, [enemy_y_pos]
    cmp ax, bx
    jle .no_collision
    
    mov cx, CAR_Y_POS
    mov dx, [enemy_y_pos]
    add dx, ENEMY_HEIGHT
    cmp dx, cx
    jle .no_collision
    
    mov al, 1
    jmp .done
.no_collision:
    mov al, 0
.done:
    pop dx
    pop cx
    pop bx
    ret

check_star_collision:
    push bx
    push cx
    push dx
    push si
    push di
    
    cmp byte [star_active], 0
    je .no_collision
    
    mov si, [star_x_pos]
    mov di, [star_y_pos]
    
    mov ax, si
    sub ax, 5               
    mov bx, si
    add bx, 8               
    mov cx, di
    sub cx, 2               
    mov dx, di
    add dx, 17              
    
    mov si, [car_x_pos]     
    mov di, si
    add di, CAR_WIDTH       
    
    cmp di, ax              
    jle .no_collision
    cmp si, bx              
    jge .no_collision
    
    mov si, CAR_Y_POS       
    mov di, si
    add di, CAR_HEIGHT      
    
    cmp di, cx              
    jle .no_collision
    cmp si, dx              
    jge .no_collision
    
    mov al, 1
    jmp .done
.no_collision:
    mov al, 0
.done:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    ret

check_and_collect_star_at_position:
    push bx
    push cx
    push dx
    
    cmp byte [star_active], 0
    je .done
    
    mov bx, ax
    sub bx, [star_x_pos]
    jns .abs_horiz
    neg bx
.abs_horiz:
    cmp bx, 25 
    ja .done
    
    mov cx, CAR_Y_POS
    mov dx, [star_y_pos]
    sub cx, dx
    jns .abs_vert
    neg cx
.abs_vert:
    cmp cx, 35 
    ja .done
    
    add word [score], 5
    call erase_star_with_road_color
    mov byte [star_active], 0
.done:
    pop dx
    pop cx
    pop bx
    ret
    
;-----------------------------------------------------
; Drawing Helper (Rectangle)
;-----------------------------------------------------
Drawing_loop:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push es
    
    mov ax, [bp+10]
    add ax, [bp+6]
    cmp ax, 320
    ja skip_draw
    cmp word [bp+8], 200
    jae skip_draw
    cmp word [bp+4], 0
    jbe skip_draw
    
    mov ax, 0xA000
    mov es, ax
    mov bx, [bp+8]
draw_next_row:
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    add di, [bp+10]
    mov cx, [bp+6]
    mov al, [bp+12]
    rep stosb
    inc bx
    cmp bx, [bp+4]
    jb draw_next_row
skip_draw:
    pop es
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 10

;-----------------------------------------------------
; Drawing Helper (Dashed Lines)
;-----------------------------------------------------
Drawing_loop_lines:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push es
    
    mov ax, [bp+10]
    add ax, [bp+6]
    cmp ax, 320
    ja skip_draw_lines
    cmp word [bp+8], 200
    jae skip_draw_lines
    
    mov ax, 0xA000
    mov es, ax
    mov bx, [bp+8]
    mov si, [bp+4]
dash_loop:
    cmp bx, si
    jnb skip_draw_lines
    mov dx, bx
    add dx, 15
    cmp dx, si
    jb dash_ok
    mov dx, si
dash_ok:
    cmp dx, 200
    jb dash_in_bounds
    mov dx, 200
dash_in_bounds:
draw_dash_segment:
    cmp bx, dx
    jnb dash_gap
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    add di, [bp+10]
    mov cx, [bp+6]
    mov al, [bp+12]
    rep stosb
    inc bx
    jmp draw_dash_segment
dash_gap:
    add bx, 5
    cmp bx, si
    jnb skip_draw_lines
    cmp bx, 200
    jb dash_loop
skip_draw_lines:
    pop es
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 10

;-----------------------------------------------------
; Fetch row buffer
;-----------------------------------------------------
fetch_row:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push di
    push ds
    push es
    
    mov bx, [bp+4]
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    
    mov si, di
    mov ax, 0xA000
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov di, buffer
    mov cx, 320
    cld
    rep movsb
    
    pop es
    pop ds
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 2

;-----------------------------------------------------
; Save background under car
;-----------------------------------------------------
save_car_background:
    pusha
    push ds
    push es
    
    mov ax, 0xA000
    mov ds, ax
    mov ax, cs
    mov es, ax
    
    mov di, car_buffer
    mov bx, CAR_Y_POS
    mov cx, CAR_HEIGHT
    
.save_row:
    cmp bx, 200
    jae .skip_row
    
    mov si, bx
    shl si, 8
    mov ax, bx
    shl ax, 6
    add si, ax
    
    mov ax, [cs:car_x_pos]
    cmp ax, 320
    jae .skip_row
    add si, ax
    
    push di
    push cx
    mov cx, CAR_WIDTH
    
    mov ax, [cs:car_x_pos]
    add ax, CAR_WIDTH
    cmp ax, 320
    jbe .save_ok
    mov cx, 320
    sub cx, [cs:car_x_pos]
.save_ok:
    cld
    rep movsb
    pop cx
    pop di
    add di, CAR_WIDTH 
.skip_row:
    inc bx
    loop .save_row
    
    pop es
    pop ds
    popa
    ret

;-----------------------------------------------------
; Spawn Logic
;-----------------------------------------------------
spawn_enemy:
    call get_random_lane_index
    cmp ax, 0
    je .spawn_left
    cmp ax, 1
    je .spawn_center
    mov ax, LANE_RIGHT
    jmp .set_position
.spawn_left:
    mov ax, LANE_LEFT
    jmp .set_position
.spawn_center:
    mov ax, LANE_CENTER
.set_position:
    mov [enemy_x_pos], ax
    mov word [enemy_y_pos], -36
    mov byte [enemy_active], 1
    mov word [spawn_timer], SPAWN_DELAY
    ret

spawn_star:
    call get_random_lane_index
    cmp ax, 0
    je .spawn_left
    cmp ax, 1
    je .spawn_center
    mov ax, LANE_RIGHT
    jmp .set_position
.spawn_left:
    mov ax, LANE_LEFT
    jmp .set_position
.spawn_center:
    mov ax, LANE_CENTER
.set_position:
    mov [star_x_pos], ax
    mov word [star_y_pos], -20
    mov byte [star_active], 1
    mov word [star_spawn_counter], STAR_SPAWN_DELAY
    ret

;-----------------------------------------------------
; Draw Object Routines
;-----------------------------------------------------
draw_enemy_car:
    cmp byte [enemy_active], 0
    je .done
    pusha
    mov si, coordinates_enemy_car
    mov cx, [Len_of_enemy_car]
.draw_loop:
    mov ax, [si+4]
    add ax, [enemy_y_pos]
    cmp ax, 200
    jge .skip_part
    mov bx, [si+8]
    add bx, [enemy_y_pos]
    cmp bx, 0
    jle .skip_part
    cmp ax, 0
    jge .y_start_ok
    xor ax, ax
.y_start_ok:
    cmp bx, 200
    jle .y_end_ok
    mov bx, 200
.y_end_ok:
    cmp ax, bx
    jge .skip_part
    push word [si]
    mov dx, [si+2]
    sub dx, LANE_CENTER
    add dx, [enemy_x_pos]
    cmp dx, 0
    jl .skip_part_with_color
    cmp dx, 320
    jge .skip_part_with_color
    push dx
    push ax
    push word [si+6]
    push bx
    call Drawing_loop
    jmp .continue
.skip_part_with_color:
    add sp, 2
    jmp .continue
.skip_part:
.continue:
    add si, 10
    loop .draw_loop
.done:
    popa
    ret

draw_star:
    cmp byte [star_active], 0
    je .done
    pusha
    mov si, coordinates_star
    mov cx, [Len_of_star]
.draw_loop:
    mov ax, [si+4]
    add ax, [star_y_pos]
    cmp ax, 200
    jge .skip_part
    mov bx, [si+8]
    add bx, [star_y_pos]
    cmp bx, 0
    jle .skip_part
    cmp ax, 0
    jge .y_start_ok
    xor ax, ax
.y_start_ok:
    cmp bx, 200
    jle .y_end_ok
    mov bx, 200
.y_end_ok:
    cmp ax, bx
    jge .skip_part
    push word [si]
    mov dx, [si+2]
    sub dx, LANE_CENTER         
    add dx, [star_x_pos]        
    cmp dx, 0
    jl .skip_part_with_color
    cmp dx, 320
    jge .skip_part_with_color
    push dx
    push ax
    push word [si+6]
    push bx
    call Drawing_loop
    jmp .continue
.skip_part_with_color:
    add sp, 2
    jmp .continue
.skip_part:
.continue:
    add si, 10
    loop .draw_loop
.done:
    popa
    ret

restore_car_background:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    mov ax, 0xA000
    mov es, ax
    mov si, car_buffer
    mov bx, CAR_Y_POS
    mov cx, CAR_HEIGHT
.restore_row:
    cmp bx, 200
    jae .skip_row
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    mov ax, [cs:car_x_pos]
    cmp ax, 320
    jae .skip_row
    add di, ax
    push si
    push cx
    mov cx, CAR_WIDTH 
    mov ax, [cs:car_x_pos]
    add ax, CAR_WIDTH 
    cmp ax, 320
    jbe .restore_ok
    mov cx, 320
    sub cx, [cs:car_x_pos]
.restore_ok:
    cld
    rep movsb
    pop cx
    pop si
    add si, CAR_WIDTH 
.skip_row:
    inc bx
    loop .restore_row
    pop es
    pop ds
    popa
    ret

draw_car_at_position:
    pusha
    mov si, coordinates_car
    mov cx, [Len_of_car]
.draw_loop:
    push word [si]
    mov ax, [si+2]
    sub ax, LANE_CENTER
    add ax, [car_x_pos]
    push ax
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop
    add si, 10
    loop .draw_loop
    popa
    ret

erase_enemy_with_road_color:
    pusha
    mov ax, [enemy_x_pos]
    add ax, 1
    cmp ax, 0
    jge .x_ok
    xor ax, ax
.x_ok:
    mov bx, ax
    mov cx, 33
    mov ax, bx
    add ax, cx
    cmp ax, 320
    jle .width_ok
    mov cx, 320
    sub cx, bx
.width_ok:
    mov dx, [enemy_y_pos]
    dec dx
    cmp dx, 0
    jge .y_ok
    xor dx, dx
.y_ok:
    mov si, dx
    add si, 40
    cmp si, 200
    jle .y_end_ok
    mov si, 200
.y_end_ok:
    push word 20
    push bx
    push dx
    push cx
    push si
    call Drawing_loop
    popa
    ret

erase_star_with_road_color:
    pusha
    mov ax, [star_x_pos]
    add ax, 9
    cmp ax, 0
    jge .x_ok
    xor ax, ax
.x_ok:
    mov bx, ax
    mov cx, 15
    mov ax, bx
    add ax, cx
    cmp ax, 320
    jle .width_ok
    mov cx, 320
    sub cx, bx
.width_ok:
    mov dx, [star_y_pos]
    dec dx
    cmp dx, 0
    jge .y_ok
    xor dx, dx
.y_ok:
    mov si, dx
    add si, 17
    cmp si, 200
    jle .y_end_ok
    mov si, 200
.y_end_ok:
    push word 20
    push bx
    push dx
    push cx
    push si
    call Drawing_loop
    popa
    ret

;-----------------------------------------------------
; Score Utilities
;-----------------------------------------------------
num_to_string:
    push ax
    push bx
    push cx
    push dx
    mov bx, 10
    xor cx, cx
.divide_loop:
    xor dx, dx
    div bx
    add dl, '0'
    push dx
    inc cx
    test ax, ax
    jnz .divide_loop
.pop_loop:
    pop dx
    mov [di], dl
    inc di
    loop .pop_loop
    mov byte [di], '$'
    pop dx
    pop cx
    pop bx
    pop ax
    ret

display_score:
    pusha
    push ds
    push word 1
    push word 240        
    push word 0      
    push word 79         
    push word 10         
    call Drawing_loop
    
    mov bh, 0
    mov ah, 02h
    mov dh, 0          
    mov dl, 30           
    int 10h
    
    mov si, score_label
.print_loop:
    lodsb
    test al, al
    jz .done_label
    mov ah, 0Eh
    int 10h
    jmp .print_loop
.done_label:
    mov ax, [score]
    mov di, score_display_buffer
    call num_to_string
    mov si, score_display_buffer
.print_num:
    lodsb
    cmp al, '$'
    je .done
    mov ah, 0Eh
    int 10h
    jmp .print_num
.done:
    pop ds
    popa
    ret

save_score_background:
    pusha
    push ds
    push es
    mov ax, 0xA000
    mov ds, ax
    mov ax, cs
    mov es, ax
    mov di, score_box_buffer
    mov bx, 0            ; Y = 0
    mov cx, 15           ; Height = 15
.save_row:
    cmp bx, 200
    jae .skip_row
    mov si, bx
    shl si, 8
    mov ax, bx
    shl ax, 6
    add si, ax
    mov ax, 240          ; X = 240
    add si, ax
    push di
    push cx
    mov cx, 80           ; Width = 80
    cld
    rep movsb
    pop cx
    pop di
    add di, 80
.skip_row:
    inc bx
    loop .save_row
    pop es
    pop ds
    popa
    ret
    
restore_score_background:
    pusha
    push ds
    push es
    mov ax, cs
    mov ds, ax
    mov ax, 0xA000
    mov es, ax
    mov si, score_box_buffer
    mov bx, 0            ; Y = 0
    mov cx, 15           ; Height = 15
.restore_row:
    cmp bx, 200
    jae .skip_row
    mov di, bx
    shl di, 8
    mov ax, bx
    shl ax, 6
    add di, ax
    mov ax, 240          ; X = 240
    add di, ax
    push si
    push cx
    mov cx, 80           ; Width = 80
    cld
    rep movsb
    pop cx
    pop si
    add si, 80
.skip_row:
    inc bx
    loop .restore_row
    pop es
    pop ds
    popa
    ret

;-----------------------------------------------------
; Main Program Entry
;-----------------------------------------------------
start:
    call draw_intro_screen

    mov ax, 0013h
    int 10h
    
    call init_random_seed
    mov word [spawn_timer], SPAWN_DELAY
    mov word [star_spawn_counter], STAR_SPAWN_DELAY
    mov word [score], 0
    
    call setup_timer
    
    mov ax, 0A000h
    mov es, ax
    
    xor di, di
    mov cx, 64000
    mov al, 2
    rep stosb

    ; Initial Static Draw
    mov si, coordinates_road
    mov cx, [Len_of_road_arr]
draw_road:
    push word [si]
    push word [si+2]
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop
    add si, 10
    loop draw_road

    mov si, coordinates_Trees_Left
    mov cx, [Len_of_tree_arr]
draw_left_tree:
    push word [si]
    push word [si+2]
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop
    add si, 10
    loop draw_left_tree

    mov si, coordinates_Trees_Right
    mov cx, [Len_of_tree_arrr]
draw_right_tree:
    push word [si]
    push word [si+2]
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop
    add si, 10
    loop draw_right_tree

    mov si, coordinates_flowers
    mov cx, [Len_of_flowers]
draw_flowers:
    push word [si]
    push word [si+2]
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop
    add si, 10
    loop draw_flowers

    mov si, coordinates_road_lines
    mov cx, [Len_of_road_lines]
draw_road_lines:
    push word [si]
    push word [si+2]
    push word [si+4]
    push word [si+6]
    push word [si+8]
    call Drawing_loop_lines
    add si, 10
    loop draw_road_lines

    call save_car_background
    call save_score_background
    
    jmp scroll_down_one_row

;-----------------------------------------------------
; Main Game Loop
;-----------------------------------------------------
scroll_down_one_row:
  
    call wait_next_tick

    ; 1. Check input (Includes Pause Logic inside)
    call check_keyboard
    
    ; 2. Handle lane changes
    mov ax, [current_lane]
    cmp ax, [car_x_pos]
    je .no_lane_change
    
    call restore_car_background
    mov ax, [current_lane]
    mov [car_x_pos], ax
    call save_car_background
    call draw_car_at_position

.no_lane_change:
  
    ; 3. Handle enemy spawning
    inc word [scroll_counter]
    mov ax, [scroll_counter]
    cmp ax, SPAWN_DELAY
    jl .skip_spawn
    
    mov word [scroll_counter], 0
    cmp byte [enemy_active], 0
    jne .skip_spawn
    call spawn_enemy
.skip_spawn:

    ; 4. Handle star spawning
    inc word [star_spawn_counter]
    mov ax, [star_spawn_counter]
    cmp ax, STAR_SPAWN_DELAY
    jl .skip_star_spawn
    
    mov word [star_spawn_counter], 0
    cmp byte [star_active], 0
    jne .skip_star_spawn
    call spawn_star
.skip_star_spawn:

    ; 5. Update enemy position
    cmp byte [enemy_active], 0
    je .no_enemy_update
    
    add word [enemy_y_pos], 1
    mov ax, [enemy_y_pos]
    cmp ax, 170
    jl .no_enemy_update
    
    mov byte [enemy_active], 0
    add word [score], 1
.no_enemy_update:

    ; 6. Update star position
    cmp byte [star_active], 0
    je .no_star_update
    
    add word [star_y_pos], 1
    mov ax, [star_y_pos]
    cmp ax, 170
    jl .no_star_update
    
    call erase_star_with_road_color
    mov byte [star_active], 0
.no_star_update:

    ; 7. Check collision
    call check_collision
    cmp al, 1
    je .game_over
    
    ; 8. Check star collision
    call check_star_collision
    cmp al, 1
    jne .no_star_collision
    add word [score], 5
    mov byte [star_active], 0
    call erase_star_with_road_color
.no_star_collision:
    
    ; 9. Erase enemy if needed
    mov ax, [enemy_y_pos]
    cmp ax, 160
    jl .no_pre_erase
    cmp ax, 200
    jge .no_pre_erase
    call erase_enemy_with_road_color
.no_pre_erase:

    ; 10. Erase star if needed
    cmp byte [star_active], 0
    je .no_star_erase
    mov ax, [star_y_pos]
    cmp ax, 155
    jl .no_star_erase
    cmp ax, 200
    jge .no_star_erase
    call erase_star_with_road_color
.no_star_erase:

    ; 11. Fetch bottom row for scrolling
    mov dx, 199
    push dx
    call fetch_row
    
    ; 12. Restore score background before scrolling
    call restore_score_background

    ; 13. Scroll entire screen down by one row
    mov ax, 0xA000
    mov ds, ax
    mov es, ax
    mov si, 64000 - 320 - 1
    mov di, 64000 - 1
    mov cx, 64000 - 320
    std
    rep movsb
    cld
    
    ; 14. Put fetched row at top
    mov ax, cs
    mov ds, ax
    mov ax, 0xA000
    mov es, ax
    xor di, di
    mov si, buffer
    mov cx, 320
    cld
    rep movsb
    
    ; 15. Save/Display score
    call save_score_background
    call display_score
    
    ; 16. Update player car
    mov ax, cs
    mov ds, ax
    call restore_car_background
    call save_car_background
    call draw_car_at_position
    
    ; 17. Draw enemy car
    cmp byte [enemy_active], 0
    je .no_enemy_draw
    mov ax, [enemy_y_pos]
    cmp ax, -36
    jl .no_enemy_draw
    cmp ax, 164
    jge .no_enemy_draw
    call draw_enemy_car
.no_enemy_draw:

    ; 18. Draw star
    cmp byte [star_active], 0
    je .no_star_draw
    mov ax, [star_y_pos]
    cmp ax, -20
    jl .no_star_draw
    cmp ax, 170
    jge .no_star_draw
    call draw_star
.no_star_draw:

    call display_score
    jmp scroll_down_one_row

;-----------------------------------------------------
; Game Over / Outro Screen
;-----------------------------------------------------
.game_over:
    call restore_timer
    
    mov ax, 0013h
    int 10h

    ; Fill background
    mov ax, 0xA000
    mov es, ax
    xor di, di
    mov dx, 0
.bg_loop:
    mov cx, 320
    mov al, 130      
    rep stosb
    inc dx
    cmp dx, 200
    jl .bg_loop
    
    ; Draw Game Over Box
    push word 125
    push word 50
    push word 30
    push word 220
    push word 70
    call Drawing_loop
    
    mov ah, 02h
    mov bh, 0
    mov dh, 6
    mov dl, 15
    int 10h
    
    mov ah, 09h
    mov dx, game_over_msg
    int 21h
    
    ; Draw Restart Box
    push word 14
    push word 30
    push word 122
    push word 273
    push word 135
    call Drawing_loop
    
    mov ah, 02h
    mov bh, 0
    mov dh, 14
    mov dl, 4
    int 10h
    
    mov ah, 09h
    mov dx, restart_msg
    int 21h
    
    ; Score Display
    mov ah, 02h
    mov bh, 0
    mov dh, 19
    mov dl, 13
    int 10h
    
    mov ah, 09h
    mov dx, score_msg
    int 21h
    
    mov ax, [score]
    mov di, score_buffer
    call num_to_string
    mov ah, 09h
    mov dx, score_buffer
    int 21h
    
    ; Wait for Input
    mov ah, 00h
    int 16h
    
    cmp al, 'y'
    je restart_game
    cmp al, 'Y'
    je restart_game
    
    jmp cleanup_and_exit

restart_game:
    call reset_game_state
    jmp start


cleanup_and_exit:
    mov ax, 0003h
    int 10h
    mov ax, 4C00h
    int 21h

reset_game_state:
    mov word [score], 0
    mov word [scroll_counter], 0
    mov word [spawn_timer], SPAWN_DELAY
    mov word [star_spawn_counter], STAR_SPAWN_DELAY
    mov word [current_lane], LANE_CENTER
    mov word [car_x_pos], LANE_CENTER
    mov word [enemy_x_pos], LANE_CENTER
    mov word [enemy_y_pos], 0
    mov byte [enemy_active], 0
    mov word [star_x_pos], LANE_CENTER
    mov word [star_y_pos], 0
    mov byte [star_active], 0
    ret

;-----------------------------------------------------
; Data Definitions
;-----------------------------------------------------
title_msg_1: db 'RETRO RACER$'
title_msg_2: db 'GAME$'
press_key_msg: db 'Press any key to start!$'
designed_msg: db 'Designed by:$'
designer1_msg: db 'ZUNAIRA TAHIR (24-L3038)$'
designer2_msg: db 'HAMZA ABBAS (24-L3086)$'
restart_msg db "Press Y to Play Again or N to Exit$"
game_over_msg: db 'GAME OVER!$'
score_msg: db 'Your Score:$'
pause_text: db 'GAME PAUSED$'
pause_opt: db 'Quit? (Y/N)$'

score_buffer: times 10 db 0
score_box_buffer: times (80 * 15) db 0 
pause_bg_buffer: times (120 * 40) db 0  

score_label: db "Score:", 0
score_display_buffer: times 8 db 0

buffer: times 320 db 0
car_buffer: times (CAR_WIDTH * CAR_HEIGHT) db 0

coordinates_road:
dw 20,100,0,120,200
dw 14,98,0,2,200
dw 14,220,0,2,200
Len_of_road_arr: dw 3

coordinates_car:
dw 1,151,160,19,162
dw 0,148,164,4,172
dw 0,169,164,4,172
dw 8,152,166,17,168
dw 8,148,180,24,183
dw 0,144,178,5,186
dw 0,172,178,5,186
dw 1,156,162,9,192
dw 1,153,173,15,188
dw 15,157,177,7,185
dw 1,151,192,19,196
Len_of_car: dw 11

coordinates_enemy_car:
dw 4, 151, 0, 19, 2
dw 0, 148, 4, 4, 12
dw 0, 169, 4, 4, 12
dw 8, 152, 6, 17, 8
dw 8, 148, 20, 24, 23
dw 0, 144, 18, 5, 26
dw 0, 172, 18, 5, 26
dw 4, 156, 2, 9, 32
dw 4, 153, 13, 15, 28
dw 15, 157, 17, 7, 25
dw 4, 151, 32, 19, 36
Len_of_enemy_car: dw 11


coordinates_star:

dw 14, 157, 0, 2, 1
dw 14, 158, 1, 1, 2
dw 14, 155, 2, 2, 3
dw 14, 153, 3, 3, 4
dw 14, 152, 4, 2, 5  
dw 14, 160, 2, 2, 3
dw 14, 162, 3, 3, 4
dw 14, 163, 4, 2, 5
dw 14, 154, 5, 8, 6
dw 14, 155, 6, 6, 7
dw 14, 156, 7, 4, 8
dw 14, 157, 8, 2, 9
dw 14, 154, 9, 2, 10
dw 14, 152, 10, 3, 11
dw 14, 153, 11, 2, 12
dw 14, 155, 12, 2, 13
dw 14, 161, 9, 2, 10
dw 14, 162, 10, 3, 11
dw 14, 162, 11, 2, 12
dw 14, 160, 12, 2, 13
dw 14, 157, 13, 2, 14
dw 14, 158, 14, 1, 15
Len_of_star: dw 22

coordinates_road_lines:
dw 15,141,5,2,200
dw 15,179,5,2,200
Len_of_road_lines: dw 2

coordinates_Trees_Left:
dw 6,20,148,6,165
dw 10,10,140,26,148
dw 10,14,132,18,140
dw 10,19,124,8,132
dw 6,40,88,6,105
dw 10,30,80,26,88
dw 10,34,72,18,80
dw 10,39,64,8,72
dw 6,60,28,6,45
dw 10,50,20,26,28
dw 10,54,12,18,20
dw 10,59,4,8,12
dw 6,10,58,6,75
dw 10,0,50,26,58
dw 10,4,42,18,50
dw 10,9,34,8,42
dw 6,80,118,6,135
dw 10,70,110,26,118
dw 10,74,102,18,110
dw 10,79,94,8,102
dw 6,55,180,6,197
dw 10,45,172,26,180
dw 10,49,164,18,172
dw 10,54,156,8,164
Len_of_tree_arr: dw 24

coordinates_Trees_Right:
dw 6,234,158,6,175
dw 10,224,150,26,158
dw 10,228,142,18,150
dw 10,233,134,8,142
dw 6,246,88,6,105
dw 10,236,80,26,88
dw 10,240,72,18,80
dw 10,245,64,8,72
dw 6,257,35,6,52
dw 10,247,27,26,35
dw 10,251,19,18,27
dw 10,256,11,8,19
dw 6,289,58,6,75
dw 10,280,50,26,58
dw 10,284,42,18,50
dw 10,289,34,8,42
dw 6,309,118,6,137
dw 10,300,110,20,118
dw 10,304,102,16,110
dw 10,309,94,8,102
dw 6,275,180,6,197
dw 10,265,172,26,180
dw 10,269,164,18,172
dw 10,274,156,8,164
Len_of_tree_arrr: dw 24

coordinates_flowers:
dw 13,22,10,4,14
dw 13,20,12,4,16
dw 13,24,12,4,16
dw 13,22,14,4,18
dw 14,23,13,2,15
dw 12,82,25,4,29
dw 12,80,27,4,31
dw 12,84,27,4,31
dw 12,82,29,4,33
dw 15,83,28,2,30
dw 14,32,50,4,54
dw 14,30,52,4,56
dw 14,34,52,4,56
dw 14,32,54,4,58
dw 13,33,53,2,55
dw 13,72,60,4,64
dw 13,70,62,4,66
dw 13,74,62,4,66
dw 13,72,64,4,68
dw 15,73,63,2,65
dw 12,12,80,4,84
dw 12,10,82,4,86
dw 12,14,82,4,86
dw 12,12,84,4,88
dw 14,13,83,2,85
dw 15,52,110,4,114
dw 15,50,112,4,116
dw 15,54,112,4,116
dw 15,52,114,4,118
dw 13,53,113,2,115
dw 14,42,140,4,144
dw 14,40,142,4,146
dw 14,44,142,4,146
dw 14,42,144,4,148
dw 12,43,143,2,145
dw 11,77,170,4,174
dw 11,75,172,4,176
dw 11,79,172,4,176
dw 11,77,174,4,178
dw 1,78,173,2,175
dw 15,282,10,4,14
dw 15,280,12,4,16
dw 15,284,12,4,16
dw 15,282,14,4,18
dw 12,283,13,2,15
dw 13,232,25,4,29
dw 13,230,27,4,31
dw 13,234,27,4,31
dw 13,232,29,4,33
dw 14,233,28,2,30
dw 14,242,50,4,54
dw 14,240,52,4,56
dw 14,244,52,4,56
dw 14,242,54,4,58
dw 13,243,53,2,55
dw 12,232,60,4,64
dw 12,230,62,4,66
dw 12,234,62,4,66
dw 12,232,64,4,68
dw 15,233,63,2,65
dw 4,297,80,4,84
dw 4,295,82,4,86
dw 4,299,82,4,86
dw 4,297,84,4,88
dw 15,298,83,2,85
dw 11,242,110,4,114
dw 11,240,112,4,116
dw 11,244,112,4,116
dw 11,242,114,4,118
dw 1,243,113,2,115
dw 15,292,140,4,144
dw 15,290,142,4,146
dw 15,294,142,4,146
dw 15,292,144,4,148
dw 13,293,143,2,145
dw 12,272,120,4,124
dw 12,270,122,4,126
dw 12,274,122,4,126
dw 12,272,124,4,128
dw 14,273,123,2,125
dw 13,307,30,4,34
dw 13,305,32,4,36
dw 13,309,32,4,36
dw 13,307,34,4,38
dw 15,308,33,2,35
dw 4,232,185,4,189
dw 4,230,187,4,191
dw 4,234,187,4,191
dw 4,232,189,4,193
dw 13,233,188,2,190
dw 7,32,185,4,189
dw 7,30,187,4,191
dw 7,34,187,4,191
dw 7,32,189,4,193
dw 12,33,188,2,190
dw 14,307,180,4,184
dw 14,305,182,4,186
dw 14,309,182,4,186
dw 14,307,184,4,188
dw 4,308,183,2,185
Len_of_flowers: dw 100