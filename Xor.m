%%
% Xor
function out=Xor(a,b)
a1=Not(a);
b1=Not(b);
x1=And(a1,b);
x2=And(a,b1);
out=Or(x1,x2);