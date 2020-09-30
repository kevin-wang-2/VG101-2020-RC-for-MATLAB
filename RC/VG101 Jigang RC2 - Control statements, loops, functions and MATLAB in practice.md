# VG101 Jigang RC2 - Control statements, loops, functions and MATLAB in practice

## Control Statements and Loops

### Conditional Branch

**Syntax:** 

```matlab
if BOOLEAN
	BLOCK1
elseif BOOLEAN
	BLOCK2
else
	BLOCK3
end
```

### Switch Branch

**Syntax:**

```matlab
switch EXPRESSION
case VALUE1
	BLOBK1
case {VALUE2, VALUE3, VALUE4}
	BLOBK2
otherwise
	BLOCK3
end
```

**When to use case**

1. Condition is simple
2. Duplicated expressions
3. Long branches

### While Loop

**Syntax:**

```matlab
while CONDITION
	BLOCK
end
```

**Use while with if:**

```matlab
while 1
	if CONDITION
		break
	end
end
```

Example: 

```matlab
control = input('0-9');
while control ~= 0
	BLOCK
	control = input('0-9');
end
```

can also be expressed as

```matlab
while 1
	control = input('0-9');
	if control == 0
		break
	end
	BLOCK
end
```

### For Loop

**Syntax:**

```matlab
for element = ARRAY
	BLOCK
end
```

Go through the array.

## Function and Function Call Methodology

### Create A Function

```matlab
function [RETS] = NAME(ARGS)
	BLOCK
end
```

if NAME is the same as file name (without extension), the function could be called by other files under the same folder.

### Call A Function

```matlab
[ret1, ret2, ...] = fun(arg1, arg2, ...)
```

If directly call

```matlab
fun(arg1, arg2, ...)
```

only ret1 will be stored in ans.

### Local Variables

![image-20200930105124996](C:\Users\22490\AppData\Roaming\Typora\typora-user-images\image-20200930105124996.png)

When we call a function, it will create its own area in "stack" memory. So function can have its own variables.

```matlab
function base()
fun(1)
disp(A); % Error!
end

function fun(a)
A = a
end
```

Local variables are different each time you call the function, so you don't need to worry about naming issues.

## MATLAB in Practice

### File

```matlab
fid = fopen('relative routine', 'authority');
% Do Something
fclose(fid);
```

Remember to close the file, if your program is long, it will cause memory leakage and will prevent other programs from editing the file.

### Formatted File I/O

```matlab
fprintf((fid), 'format', args);
```

Format structure:

1. Integer:

   %d - decimal

   %o - octal

   %x - uncapitalized hexadecimal

   %X - capitalized hexadecimal

2. Floating-point:

   %02.1f - demonstrate in MATLAB

3. String %s %c

### Static Plotting

```matlab
plot(xList, yList, styles)
```

The plot function actually connects (x,y) with straight lines, so there is actually no curve in plotting.

```matlab
plot(x, f(x))
```

Can be used to plot function f if f applies to a vector.

### Image Processing

```matlab
A = imread('path');
imwrite(A, 'path');
```

For true-color image, A is a w\*h\*3 tensor. For grey-scale image, A is a w\*h matrix.

### Vectorization

MATLAB processes vectors at a very fast speed, and using vectorization method can simplify your codes. All the basic functions in MATLAB applies to vectors.

**Example1: plot a circle**

```matlab
theta = 0:0.01:2*pi; % Sample Points
radius = 10;
x = radius * cos(theta);
y = radius * sin(theta);
plot(x, y)
```

**Example2: im2gs**

```matlab
A = imread('test.png');
A = A(:, :, 1) / 3 + A(:, :, 2) / 3 + A(:, :, 3) / 3;
imshow(A);
```

## Common Algorithms

1. Base conversion
2. Transparency methodology
3. Fibonacci
4. Test palindrome
5. Longest substring without repetition
6. List primes

