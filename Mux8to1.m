% Mux8to1
function out=Mux8to1[a,b,c,d,e,f,g,h,s1,s2,s3]
o1=Mux2to1(a,b,s1);
o2=Mux2to1(c,d,s1);
o3=Mux2to1(e,f,s1);
o4=Mux2to1(g,h,s1);
o5=Mux2to1(o1,o2,s2);
o6=Mux2to1(o3,o4,s2);
out=Mux2to1(o5,o6,s3)
end
