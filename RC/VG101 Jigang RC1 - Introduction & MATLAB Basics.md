# VG101 Jigang RC1 - Introduction & MATLAB Basics

## Basics About Computer

### CPU

1. CPU can only  understand machine code, which is corresponding to some basic operations.

2. CPU, at most times, run one command in one Clock Cycle.

3. Compiling Language uses Compiler to translate to machine code, while interpreting language runs in an interpreter to directly tell the computer what to do.

   Compiling language: C/C++ Rust Golang...

   Interpreting language: MATLAB Python Javascript...

### Storage and Data

1. Computer use Random-Access-Memory (RAM) to store temporary data. Computer use Read-Only-Memory (ROM) to store long-term data.
2. Each piece of RAM is one WORD (in 32 bit computer, it's 32bits, in 64 bit computer, it's 64bits), and each piece of RAM has its own address.
3. RAM is fast and ROM is slow.

### File System

1. File system is a tree structure, whose leaves are files and none-leaf nodes are directories (folders).

   ```mermaid
   graph TB
   /---tmp
   tmp---A[...]
   /---root
   root---B[...]
   /---home
   /---bin
   bin---X(bash)
   bin---Y(su)
   home---youraccount
   youraccount---VG101
   youraccount---Z(SomeFile.txt)
   VG101---W(HelloWorld.m)
   ```

   ```mermaid
   graph TB
   C:---Windows
   Windows---A[...]
   C:---P[Program Files]
   P---B[...]
   C:---user
   user---yourAccount
   yourAccount---desktop
   desktop---...
   D:---dataFolder
   dataFolder---X(学习资料.zip)
   ```

   

2. Files have different types, but in ROM, they are the same.

3. Many Personal Computers have files named with extension to label their type.

   Usual File Extensions:

   - .txt: Text File
   - .zip/.rar/.7x/.tar.gz: Zip File
   - .doc/.docx: Word Document
   - .ppt/.pptx: PPT
   - .xls/.xlsx: Excel Table
   - .html/.htm: Web Page
   - .m: MATLAB Code
   - .c: C Code
   - .cpp/.cxx: C++ Code
   - .exe: Windows Executable File
   - .msi: Windows APP Installation
   - .dmg: MACOS APP Installation

## Mathematics About Computer

### Base Conversion

1. Binary to Decimal:
   $$
   \left(a_n...a_1a_0\right)_2=\sum_{i=0}^na_i2^i
   $$
   Its hard to calculate, but, when all the bits are filled with "1"
   $$
   (1111...11)_2=s^{n+1}-1
   $$
   We can also use hexadecimal as auxiliary number. 

2. Binary to Hexadecimal/ Hexadecimal to binary
   $$
   (a_1a_2a_3a_4|a_5a_6a_7a_8)_2=0xh_1h_2
   $$
   Memorize the binary form from 0 to f, it will be useful.

3. Arbitrary base conversion**(Write on blackboard)

## Basics About MATLAB

### WHAT is MATLAB

- Interpreting  language, week-type (don't require type specification)
- Powerful in mathematical calculation and simulation
- Matrix powered
- Interactive, can be used like a calculator

### Variables and Declaration

- Use assignment to create new variables

  a = 1; % Create variable a with value 1

  arr = [1 2 3]; % Create an array

  mat = [1 2 3; 4 5 6; 7 8 9]; % Create a matrix

- Types are automatically determined, at most time it's double

- Single variables are simply 1x1 matrix
- Arrays are nx1 matrix

### Variables and Type

1. Numeric Type

   - Integer

     Unsigned integers are denoted "uintx" and "x" is the number of bit it takes in memory.

     Singed integers are denoted "intx" which follows 2's compliment convention.

     **Calculate Maximum&Minimum**
     $$
     uintx: 2^x-1\\
     intx: -2^{x-1}, 2^{x-1}-1
     $$
     WHY?

   - Floating-point Number

     Use some of the bits to denote exponential numbers, so that it could store fractions. However, it will lose accuracy when numbers are too big/small (floating point error).

2. Character

   Character is actually int8. It's numeric value is the ASCII code of the character. Strings are character arrays.

3. Composite Data Types

### Arithmetic Expressions

1. Expressions in MATLAB can have ";", "," or line change as its end, if you have ";" as the end of a sentence, it will prevent output. This is good habit!
2. Arithmetic operations in MATLAB includes "+", "-", "*", "/", "**^**" and their point-wise version.
3. Logic expression includes "||", "&&", "~". 

### Basic Commands

1. Use clear/clear all to clear up the working region. Don't use clear in functions!
2. Use clear + variable name to clear up certain variable.