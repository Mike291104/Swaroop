% Dmux1to2
function [a,b]=Dmux1to2(in,sel)
if ( (in==0||in==1) && (sel==0||sel==1) )
o1=Not(sel);
a=And(in,o1);
b=And(in,sel);
fprintf("\na=%d,b=%d",a,b);
else
    disp("INVALID");
end
end
