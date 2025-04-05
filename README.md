# BCD-ADDER

A BCD (Binary-Coded Decimal) Adder is a circuit that adds two decimal digits, represented in BCD 
format, along with a carry input. BCD uses 4 bits to represent decimal digits 0-9. 

When the sum of two BCD digits exceeds 9 (i.e., 1001 in binary), a correction is required to convert the result back into a valid BCD digit. This correction involves adding 6 (binary 0110) to the result. 

A multi-digit BCD adder can be created by cascading multiple single-digit BCD adders. 

Each BCD adder handles one digit of the input numbers, and the carry-out from one digit's addition becomes the carry-in for the next higher digit's addition. 

**simulation results:**

![image](https://github.com/user-attachments/assets/f4fb7323-e980-444a-9238-0405971ed7e5)

**schematic:**

![Uploading image.png…]()
