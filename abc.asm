# Bubble Sort for m[20] to m[29]
sys m 20 30
ldc r10 c20
ldc r9 c20
ldc r11 c29

check :
addi r9 r9 c1
addi r13 r10 c0
cmp r12 r11 r9
blth r12 end

main :
cmp r14 r11 r13
be r14 check

ldr r0 r13
addi r1 r13 c1
ldr r1 r1
cmp r2 r0 r1
bgth r2 increment
addi r13 r13 c0
j check

increment :
sto r13 r1
addi r13 r13 c1
sto r13 r0
# sys m 20 30
j main

end :
sys m 20 30