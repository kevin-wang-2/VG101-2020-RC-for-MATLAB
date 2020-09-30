function res = convertFrom(num, base)
    res = 0;
    for i = num
        res = base * res + i;
    end
end