%%
% Half Adder
function [sum,carry]=HalfAdder(a,b)
if ((a==0||a==1)&&(b==0||b==1))
sum=Xor(a,b);
carry=And(a,b);
fprintf("SUM:%d CARRY:%d",sum,carry);
else
    disp("INVALID");
end
end
