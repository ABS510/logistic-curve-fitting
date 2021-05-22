function newCap = GradientDescent(rate, cap, init, Time, Y, step)


%minimizes cost
%ideal value of step: 1

%scales derivative down for easier calculations

i=0;
newCap=cap;
grad=1;
while ((grad*grad)>0.000001 && i<150)
    grad=CGradCap(rate, newCap, init, Time, Y);
    while (grad*grad>100)
      grad=grad/10;
    endwhile
    newCap=newCap-(step*grad);
    i=i+1;
endwhile

end
