function ret = isPalindrome(s)
    l = 1;
    r = length(s);
    while l < r
        if s(l) ~= s(r)
            ret = 0;
            return
        end
        l = l + 1;
        r = r - 1;
    end
    ret = 1;
end