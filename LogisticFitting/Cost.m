function J = Cost(rate, cap, init, time, y)

alpha=100;

%returns cost of logistic model due to one data point (time,y)
L=Logistic(rate, cap, init, time);
J = 0;

J=L-y;
J=J.*J.*time;

newCost=J.*0;
y2=y;
y2(1)=[];
y2=[y2;0];
time2=time;
time2(1)=[];
time2=[time2;0];

newCost=(y2-y)./(time2-time);
newCost=newCost-((Growth(rate,cap,init,time)));
newCost(end)=0;
newCost=newCost.*newCost;
J=J+(alpha*newCost.*time*0.25);

if(Logistic(rate,cap,init,time(end)+5)<y(end))
  J=J*5;
endif
end
