function J = Logistic(rate, cap, init, time)

J = 0;
J=(init*cap*(e.^(rate*time)))./((cap-init)+(init*(e.^(rate*time))));
end
