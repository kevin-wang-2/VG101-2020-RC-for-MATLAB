particles = zeros(2, 1000);

n = input('Time: ');
r = input('Distance: ');

M = zeros(1, n);
position = zeros(2, n);

for t = 1:n - 1
    particles(1, :) = particles(1, :) + randn(1, 1000);
    particles(2, :) = particles(2, :) + randn(1, 1000);
    position(:, t + 1) = particles(:, 1000);
    M(t + 1) = length(find((particles(1, :).^2 + particles(2, :).^2) > r ^ 2));
end

disp(M);
plot(position(1, :), position(2, :));



