.386
.model flat, stdcall
option casemap :none

extrn SetThreadExecutionState@4 : PROC
extrn MessageBoxA@16 : PROC
extrn ExitProcess@4 : PROC

.data
        MsgText db "Preventing sleep. Press OK to exit.", 0
        MsgTitle db "uSleepStop", 0

.code
start:
        push -2147483646                ; ES_CONTINUOUS | ES_DISPLAY_REQUIRED
        call SetThreadExecutionState@4
        push 48                         ; MB_ICONWARNING
        lea eax, MsgTitle
        push eax
        lea ebx, MsgText
        push ebx
        push 0
        call MessageBoxA@16
        push ebx
        call ExitProcess@4

end start
