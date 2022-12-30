% Mux8to1
function out=Mux8to1(a,b,c,d,e,f,g,h,s1,s2,s3)
if ((a==0||a==1)&&(b==0||b==1)&&(c==0||c==1)&&(d==0||d==1)&&(e==0||e==1)&& ...
    (f==0||f==1)&&(g==0||g==1)&&(h==0||h==1)&&(s1==0||s1==1)&&(s2==0||s2==1)&& ...
     (s3==0||s3==1))
o1=Mux2to1(a,b,s1);
o2=Mux2to1(c,d,s1);
o3=Mux2to1(e,f,s1);
o4=Mux2to1(g,h,s1);
o5=Mux2to1(o1,o2,s2);
o6=Mux2to1(o3,o4,s2);
out=Mux2to1(o5,o6,s3);
else
    disp("INVALID");
end
end
