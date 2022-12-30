% FullAdder
function [sum,carry]=FullAdder(a,b,c)
if ((a==0||a==1)&&(b==0||b==1)&&(c==0||c==1))
o1=Xor(a,b);
sum=Xor(o1,c);
o2=And(a,b);
o3=And(o1,c);
carry=Or(o3,o2);
fprintf("SUM:%d CARRY:%d",sum,carry);
else
    disp("INVALID");
end
end