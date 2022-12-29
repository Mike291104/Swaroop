% Mux4to1
function out=Mux4to1(a,b,c,d,s1,s2)
o1=Mux2to1(a,b,s1);
o2=Mux2to1(c,d,s1);
out=Mux2to1(o1,o2,s2)
end