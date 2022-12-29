% Dmux1to2
function [a,b]=Dmux1to2(in,sel)
o1=Not(sel);
a=And(in,o1)
b=And(in,sel)
end
