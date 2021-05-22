function PlotGrowth(rate, cap, init, Time, y)

figure; % open a new figure window

x = 0:1:120;


ylabel('Cases per Day'); % Set the axes label
xlabel('Time in Days');


plot (x, Growth(rate, cap, init, x));

y2=y;
y2(1)=[];
y2=[y2;0];
time2=Time;
time2(1)=[];
time2=[time2;0];

G=(y2-y)./(time2-Time);

hold on

plot(Time, G, 'rx'); % Plot the data
end
