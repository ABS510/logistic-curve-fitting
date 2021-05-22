function PlotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window


% 'rx' option with plot to have the markers
% appear as red crosses. Furthermore, you can make the
% markers larger by using plot(..., 'rx', 'MarkerSize', 10);

plot(x, y, 'rx', 'MarkerSize', 10); % Plot the data
ylabel('Cases'); % Set the y−axis label
xlabel('Time in Days');



end
