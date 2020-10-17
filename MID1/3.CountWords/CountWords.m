function count = CountWords(str)
    arr = split(str, ' ');
    count = 0;
    for i = 1:length(arr)
        if ~isempty(arr{i})
            count = count + 1;
        end
    end
end
