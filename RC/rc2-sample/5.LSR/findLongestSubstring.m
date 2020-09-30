function ret = findLongestSubstring(s)
    len = 0;
    l = 1;
    while l <= length(s)
        table = zeros(255, 1);
        pivot = l;
        while pivot <= length(s)
            if table(s(pivot)) == 1
                pivot = pivot - 1;
                break
            else
                table(s(pivot)) = 1;
                pivot = pivot + 1;
            end
        end
        if pivot == length(s) + 1
            pivot = length(s);
        end
        if len < pivot - l + 1
            len = pivot - l + 1;
            ret = s(l:pivot);
        end
        l = l + 1;
    end
end