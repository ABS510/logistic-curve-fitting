function PlotDataGraph(rate, cap, init, Time, y)

figure; % open a new figure window


% 'rx' option with plot to have the markers
% appear as red crosses. Furthermore, you can make the
% markers larger by using plot(..., 'rx', 'MarkerSize', 10);

x = linspace(0,120,240);
plot (x, Logistic(rate, cap, init, x));

ylabel('Cases'); % Set the axes label
xlabel('Time in Days');

hold on

plot(Time, y, 'rx'); % Plot the data

hold off

end
