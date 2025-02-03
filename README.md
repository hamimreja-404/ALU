# ALU
 	8-bit Arithmetic Logic Unit(ALU):
•	What is an ALU?
An Arithmetic Logic Unit (ALU) is a critical component of a computer's central processing unit (CPU) that performs both arithmetic and logical operations. It's responsible for executing operations like addition, subtraction, and various bitwise functions, serving as the computational core of the CPU. 
Operations Implemented:
1.	Addition:
o	Description: Combines two 8-bit binary numbers to produce an 8-bit sum. If the result exceeds 8 bits, a carry-out is generated.
o	Example: Adding 01010101 (85 in decimal) and 00110011 (51 in decimal) yields 10001000 (136 in decimal), with a carry-out if applicable.
2.	Subtraction:
o	Description: Subtracts one 8-bit number from another by adding the two's complement of the subtrahend to the minuend. This method effectively performs subtraction using addition.
o	Example: Subtracting 00110011 (51 in decimal) from 01010101 (85 in decimal) involves adding 01010101 to the two's complement of 00110011, resulting in 00100010 (34 in decimal).
3.	Bitwise AND:
o	Description: Performs a logical AND operation between corresponding bits of two 8-bit numbers, resulting in an 8-bit output where each bit is the logical AND of the corresponding input bits.
o	Example: ANDing 01010101 and 00110011 results in 00010001.
4.	Bitwise OR:
o	Description: Performs a logical OR operation between corresponding bits of two 8-bit numbers, resulting in an 8-bit output where each bit is the logical OR of the corresponding input bits.
o	Example: ORing 01010101 and 00110011 results in 01110111.

These operations are fundamental in digital systems, enabling various computational tasks within processors and other digital circuits.

