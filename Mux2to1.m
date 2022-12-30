% Mux2to1
function out=Mux2to1(a,b,sel)
if ((a==0||a==1)&&(b==0||b==1)&&(sel==0||sel==1))
o1=Not(sel);
o2=And(a,o1);
o3=And(b,sel);
out=Or(o2,o3);
else
    disp("INVALID");
end
end

