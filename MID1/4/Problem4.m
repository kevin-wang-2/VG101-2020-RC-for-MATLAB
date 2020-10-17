fid = fopen('Sellmeier.txt', 'r');
arr = fscanf(fid, 'B1=%f\nB2=%f\nB3=%f\nC1=%f\nC2=%f\nC3=%f');
B1 = arr(1);
B2 = arr(2);
B3 = arr(3);
C1 = arr(4);
C2 = arr(5);
C3 = arr(6);
lambda = 0.4:0.001:0.7;
plot(lambda, sqrt((B1 * lambda ./ (lambda .^ 2 - C1) + B2 * lambda ./ (lambda .^ 2 - C2) + B3 * lambda ./ (lambda .^ 2 - C3))));
xlabel('\lambda(\mum)');
ylabel('n');