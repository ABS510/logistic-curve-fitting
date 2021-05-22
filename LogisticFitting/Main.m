function J = Main(Data)

data=load(Data);
Time=data(:,1);
Y=data(:,2);

d=floor(log10(Y(end)));
Y=Y/(10^d);
fprintf(strcat('Denomination:',int2str(10^d),'\n'));
iter=[0.05,0.01,0.005,0.001,0.0005];
rate=[0.02,0.1,0.2,0.3,0.4,0.5];

% Some gradient descent settings
initCap=0.25*(Y(end));
step=0.1;
init=Y(1);
initM=0.005*(Y(end));
minCost=9999999999999;
minRate=1;
minCap=100000;

Final=[minCost;minRate;minCap;init];

TruInit=init;
j=0;

while(init<initM || j<1)
  initCap=0.25*(Y(end));
  while (initCap<8*Y(end))
  minCost=9999999999999;
  minRate=1;
  i=1;
    while (i<5)
      for r=rate
          cap=GradientDescent(r,initCap,init,Time,Y,step);
          cost=TotalCost(r,cap,init,Time,Y);
          if(cost<minCost)
              minCost=cost
              minRate=r
              minCap=cap
              TruInit=init
          endif
      endfor
      rate=[(minRate-(2*iter(i))),(minRate-iter(i)),(minRate+iter(i)),(minRate+(2*iter(i)))]
      i=i+1;
    endwhile
    if(minCost<Final(1))
      Final=[minCost;minRate;minCap;TruInit];
    endif
    initCap=initCap*2;
  endwhile
  if(minCost<Final(1))
    Final=[minCost;minRate;minCap;TruInit];
  endif
j=j+1;
init=init+(initM/6);
endwhile

fprintf('Plotting Graph. Press enter to continue.\n');
pause;
PlotDataGraph(Final(2),Final(3),Final(4),Time,Y);
PlotGrowth(Final(2),Final(3),Final(4), Time, Y);
J=[Final(2);Final(3);Final(4);Final(1)];
Caps=[Final(3)*(1-0.04);Final(3)*(1+0.04)]
end
