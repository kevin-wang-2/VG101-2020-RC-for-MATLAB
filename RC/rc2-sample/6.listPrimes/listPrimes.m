function ret = listPrimes(n)
    ret = [];
    for num = 2:n
        flag = 0;
        for div = ret
            if mod(num, div) == 0
                flag = 1;
                break
            end
        end
        if ~flag
            ret = [ret num];
        end
    end
end