%%
% OR GATE
function out = Or(a,b)
if (a==1)
   if (b==1)
        out=1;
   elseif (b==0)
       out=1;
   else
       disp("INVALID");
   end
elseif (a==0)
    if (b==0)
     out=0;
    elseif (b==1)
        out=1;
    else
        disp("INVALID");
    end
else
    disp("INVALID");
end
end

