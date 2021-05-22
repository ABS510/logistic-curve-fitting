function D = CGradCap(rate, cap, init, Time, Y)

%returns derivative of cost wrt the variable rate
%both Time and Y are column vectors

alpha=100;

LOG=Logistic(rate, cap, init, Time);


y2=Y;
y2(1)=[];
y2=[y2;0];
time2=Time;
time2(1)=[];
time2=[time2;0];

newCost=(y2-Y)./(time2-Time);
newCost(end)=0;

intmd=init*e.^(rate*Time);
k=intmd.-init;

t=cap.+k;

h=(intmd.*(t))-(cap*intmd);

phi=h./(t.*t);
lambda=intmd./t;
omega=cap*(lambda.*lambda);

LOG=Logistic(rate, cap, init, Time);

J= LOG - Y;

J=2*J;

intmd=init*e.^(rate*Time);

J=J.*((intmd.*((cap-init).+intmd))-(cap.*intmd)).*Time;
J=J./(((cap-init).+intmd).^2);

J=J+(0.25*Time.*(alpha*(rate*((omega./t)+phi-(phi.*lambda)).*(((rate*((cap*lambda).-omega)))-newCost))));
J=J;

D=sum(J);
end
