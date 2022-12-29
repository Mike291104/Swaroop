% Mux1to2
function out=Mux2to1(a,b,sel)
o1=Not(sel);
o2=And(a,o1);
o3=And(b,sel);
out=Or(o2,o3)
end
