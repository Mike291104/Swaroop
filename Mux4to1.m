% Mux4to1
function out=Mux4to1(a,b,c,d,s1,s2)
if ((a==0||a==1)&&(b==0||b==1)&&(c==0||c==1)&&(d==0||d==1)&&(s1==0||s1==1) ...
     &&(s2==0||s2==1))
o1=Mux2to1(a,b,s1);
o2=Mux2to1(c,d,s1);
out=Mux2to1(o1,o2,s2);
else
    disp("INVALID");
end