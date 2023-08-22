org 0x7c00      ; directive that tells asm to offset calculated addresses from this number
bits 16         ; emit 16 bit code


main:           ; label main
  hlt           ; processor halt instruction (interrupts might still stop processor from being halted)

.halt:          ; in case of an interrupt
  jmp .halt     ; jump to label indefinitely


times 510-($-$$) db 0 ; times - directive that repeates some instruction
                      ; $ - memory offset of current line;
                      ; $$ - beggining of the current section
                      ; $ - $$ - size of current program so far (in our case)
dw 0AA55h             ; BIOS in legacy mode looks for this signature to boot our OS up

