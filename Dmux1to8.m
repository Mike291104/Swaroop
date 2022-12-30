% Dmux1to8
function [a,b,c,d,e,f,g,h]=Dmux1to8(in,s1,s2,s3)
if ((in==0 || in==1) && (s1==0||s1==1) && (s2==0||s2==1) && (s3==0||s3==1))
 [o1,o2]=Dmux1to2(in,s1);
 [o3,o4]=Dmux1to2(o1,s2);
 [o5,o6]=Dmux1to2(o2,s2);
 [a,b]=Dmux1to2(o3,s3);
 [c,d]=Dmux1to2(o4,s3);
 [e,f]=Dmux1to2(o5,s3);
 [g,h]=Dmux1to2(o6,s3);
 fprintf("\na=%d,b=%d,c=%d,d=%d,e=%d,f=%d,g=%d,h=%d",a,b,c,d,e,f,g,h);
else
    disp("INVALID");
end
