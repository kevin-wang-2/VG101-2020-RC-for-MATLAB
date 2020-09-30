function ret = fib(n)
    last = 1;
    ret = 1;
    for i = 3:n
        temp = ret;
        ret = ret + last;
        last = temp;
    end
end