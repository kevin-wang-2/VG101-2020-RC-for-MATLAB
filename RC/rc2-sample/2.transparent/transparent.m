mask = [0,0,0,'+----------+';0,0,'/          /|';0,'/          / |';'+----------+  |';'|===Hello==|  +';'|=Computer=| /',0;'|=Graphics=|/',0,0;'+----------+',0,0,0];
buffer = [];
while 1
    x = input('PositionX:');
    y = input('PositionY:');
    clc
    if x < 0 || y < 0
        break
    end
    if size(buffer, 1) < x + size(mask, 1) - 1 || size(buffer, 2) < y + size(mask, 2) - 1
        buffer(x + size(mask, 1) - 1, y + size(mask, 2) - 1) = 0;
    end
    buffer(x:x + size(mask, 1) - 1, y:y + size(mask, 2) - 1) = buffer(x:x + size(mask, 1) - 1, y:y + size(mask, 2) - 1) .* (mask == 0);
    buffer(x:x + size(mask, 1) - 1, y:y + size(mask, 2) - 1) = buffer(x:x + size(mask, 1) - 1, y:y + size(mask, 2) - 1) + mask;
    for ii = 1:size(buffer, 1)
        fprintf('%s\n', buffer(ii, :));
    end
end