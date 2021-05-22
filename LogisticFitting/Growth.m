function J = Growth(rate, cap, init, time)
%Function which calculates growth rate
J = 0;
P=Logistic(rate, cap, init, time);
J=(rate*P.*(cap.-P))./cap;
end
