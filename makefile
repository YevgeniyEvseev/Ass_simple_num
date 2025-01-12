simple_digit: simple_digit.o print_array.o
	gcc -o simple_digit simple_digit.o print_array.o -no-pie
simple_digit.o: simple_digit.asm
	nasm -f elf64 -g -F dwarf simple_digit.asm -l simple_digit.lst
print_array.o: print_array.asm
	nasm -f elf64 -g -F dwarf print_array.asm -l print_array.lst