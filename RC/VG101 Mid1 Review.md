# VG101 Mid1 Review

## Functions

#### Syntax

```matlab
function [rets...] = name(args...)
	% do something
end
```

In the case of **SINGLE** return value:

```matlab
function ret = name(args...)
	% do something
end
```

In the case of **NO** return value:

```matlab
function name(args...)
	% do something
end
```

In EXAM, just copy the prototype given by Jigang.

#### Something You Need To Know

- If it requires to write a function on the paper, and you wrote a script, your score will be very low.
- If you give value to some return values, when the function returns, the value will be returned.
- Use `return` to directly return the function.

## Plotting

#### Syntax

```matlab
plot(xArr, yArr, style);
```

If you want to plot multiple plots,

```matlab
hold on;
plot(x1, y1, style1);
plot(x2, y2, style2);
```

#### Sampling and Plot

1. Plot a function

   - Take sample points for x (e.g. `x=-10:0.01:10`)

   - `y = f(x);`

   - `plot(x, y);`

   - Notice that f should act pointwise with vector.

     **Example**

     ```matlab
     x = -10:0.01:10;
     y = sin(x);
     plot(x, y);
     ```

     ```matlab
     x = 0.01:0.01:3;
     y = x.^x;
     plot(x, y);
     ```

2. Plot an equation

   - Take sample points for parameter

   - `x = x(t)`, `y = y(t)`

   - `plot(x, y);`

     **Example**

     ```matlab
     t = -pi:0.01:pi;
     x = 2 * cos(t);
     y = sin(t);
     plot(x, y);
     ```

## Build-in Functions

1. I/O functions.

   - disp

     Directly print some string, no special usage.

   - input

     ```matlab
     a = input('prompt');
     ```

     will execute the inputted expression.

     ```matlab
     a = input('prompt', 's');
     ```

     will directly change the inputted value to a string.

   - fprintf

     ```matlab
     fprintf('format', ...);
     ```

     will print the formatted string to stdout.

     ```matlab
     fprintf(fid, 'format', ...);
     ```

     will print the formatted string to file.

   - fscanf

     ```matlab
     fscanf(fid, 'format', n);
     ```

     will return a vector with n elements (if it can).

     ```matlab
     fscanf(fid, 'format', [a, b]);
     ```

     will return a a*b matrix.

     Review of the format string:

     ```matlab
     fscanf(fid, 'a=%d', 1);
     ```

     What will it act when it encounters "1"?

     What will it act when it encounters "a=1"?

2. Arithmetic functions.

3. Basic number-theory related functions.

   If you want to check if there is such function, use search engine!

4. Matrix-related functions.

   - length

     Return the longest of the `size` function (max(size(M))). Useful when evaluating a vector.

   - size

     ```matlab
     a = size(mat);
     ```

     will return a vector of length 2.

     ```matlab
     a = size(mat, 1);
     ```

     will return its height,

     ```matlab
     a = size(mat, 2);
     ```

     will return its width.

   - find

     Find will return the positions where the value of the matrix is not 0.

     For a matrix, the position is shown like below:

     ```matlab
     [1 3;
     2 4]
     ```

     Its useful to use with logical functions or logical operators.

     **Example**

     ```matlab
     primes = find(isPrime(1:100));
     ```

   - sum/prod

     Extremely useful as logical operator!

     **Example**

     1. Verify if two matrices are equal:

        ```
        equal = prod(prod(matA == matB));
        ```

     2. If not?

        ```matlab
        nequal = sum(sum(matA ~= matB) > 0;
        ```

5. String-related functions.

   - sprintf

     Use it instead of complicated `num2str` and string concatenation.

     ```matlab
     str = sprintf('Experiment Result: $%f\pm%f$', result, uncertainty)
     ```

     We can also use it as base conversion:

     ```matlab
     hex = sprintf('%x', 100); % '64'
     ```

   - sscanf

     We could use `sscanf` to decode numbers from a string without using `str2num`.

     ```matlab
     num = sscanf('123', '%d', 1);
     ```

     Also, it can be used as base conversion:

     ```matlab
     dec = sscanf('1A', '%X', 1);
     ```

     Another example:

     ```matlab
     fprintf('%X\n', sum(sscanf(str, '%X')));
     ```

   - str2num/str2double

     More efficient way to convert single number.

   - num2str

6. Casting

   - char

     **Example**

     Capitalize a word:

     ```matlab
     cap = char(decap - 32);
     ```

     What's the problem?

7. File

   - feof

     Tell if a file is ended

     ```matlab
     while ~feof(fid)
     	% Do Something
     end
     ```