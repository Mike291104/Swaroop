%%
% NOT GATE 
function out = Not(in)
if (in==0)
        out=1;
elseif (in==1)
        out=0;
else
    disp("INVALID");
end
end
