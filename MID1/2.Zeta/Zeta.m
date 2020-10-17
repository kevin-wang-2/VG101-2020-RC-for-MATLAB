function ret = Zeta(s, N)
    ret = sum(1 ./ (1:N) .^ s);
end