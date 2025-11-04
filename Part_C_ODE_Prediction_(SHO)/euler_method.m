function Y = euler_method(V0, Y0, t, h)
N = length(t);
Y = zeros(length(Y0), N);
Y(:,1) = Y0;

for n = 1:N-1
    Y(:,n+1) = Y(:,n) + h * V0(t(n), Y(:,n));
end
end
