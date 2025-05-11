#author:Beauttah Kipruto
#description:Hardware access simulation
#date:11th may 2025
.data
menu: .asciiz "\n=== Hardware Access Interface ===\n1. Take Photo\n2. Record Audio\n3. Access Storage\nEnter your choice: "
choice_msg: .asciiz "\nYou selected option: "
invalid_msg: .asciiz "\nInvalid choice. Exiting...\n"
msg_photo: .asciiz "\n[SIMULATION] Taking a photo with your camera...\n"
msg_audio: .asciiz "\n[SIMULATION] Recording audio using microphone...\n"
msg_storage: .asciiz "\n[SIMULATION] Accessing storage files...\n"

.text
.globl main

main:
    # Display menu
    li $v0, 4
    la $a0, menu
    syscall

    # Read user input
    li $v0, 5
    syscall
    move $t0, $v0        # store input in $t0

    # Display selected option
    li $v0, 4
    la $a0, choice_msg
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    # Branch based on choice
    beq $t0, 1, take_photo
    beq $t0, 2, record_audio
    beq $t0, 3, access_storage

    # Invalid choice
    li $v0, 4
    la $a0, invalid_msg
    syscall
    j end

take_photo:
    li $v0, 4
    la $a0, msg_photo
    syscall
    j end

record_audio:
    li $v0, 4
    la $a0, msg_audio
    syscall
    j end

access_storage:
    li $v0, 4
    la $a0, msg_storage
    syscall
    j end

end:
    li $v0, 10   # Exit
    syscall
