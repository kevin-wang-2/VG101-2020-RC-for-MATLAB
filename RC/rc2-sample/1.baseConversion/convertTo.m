function res = convertTo(num, base)
    length = floor(log(num)/log(base)) + 1;
    res = zeros(1, length);
    for i = 1:length
        res(length - i + 1) = mod(num, base);
        num = floor(num / base);
    end
end