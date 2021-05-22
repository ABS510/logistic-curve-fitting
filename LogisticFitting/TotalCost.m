function J = TotalCost(rate, cap, init, Time, Y)


%returns cost of logistic model due to all input data points (Time(i),Y(i))
%both Time and Y are column vectors

J = 0;

A=Cost(rate, cap, init, Time, Y);

J=sum(A);
end
