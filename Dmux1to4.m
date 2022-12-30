% Dmux1to4
function [a,b,c,d]=Dmux1to4(in,s1,s2)
if ((in==0 || in==1) && (s1==0||s1==1) && (s2==0||s2==1))
 [o1,o2]=Dmux1to2(in,s1);
 [a,b]=Dmux1to2(o1,s2);
 [c,d]=Dmux1to2(o2,s2);
fprintf("\na=%d,b=%d,c=%d,d=%d",a,b,c,d);
else
    disp("INVALID");
end
end

