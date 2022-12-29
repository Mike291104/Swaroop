% FullAdder
function [sum,carry]=FullAdder(a,b,c)
o1=Xor(a,b);
sum=Xor(o1,c)
o2=And(a,b);
o3=And(o1,c);
carry=Or(o3,o2)
end