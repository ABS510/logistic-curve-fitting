function PlotLog(rate, cap, init)

figure; % open a new figure window

x = 0:1:120;
plot (x, Logistic(rate, cap, init, x));

end
