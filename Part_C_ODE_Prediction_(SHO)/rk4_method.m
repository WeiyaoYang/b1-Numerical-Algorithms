function Y = rk4_method(V0, Y0, t, h)
N = length(t);
Y = zeros(length(Y0), N);
Y(:,1) = Y0;

for n = 1:N-1
    k1 = V0(t(n), Y(:,n));
    k2 = V0(t(n) + h/2, Y(:,n) + (h/2)*k1);
    k3 = V0(t(n) + h/2, Y(:,n) + (h/2)*k2);
    k4 = V0(t(n) + h,   Y(:,n) + h*k3);
    Y(:,n+1) = Y(:,n) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);
end
end
