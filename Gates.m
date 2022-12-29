%%
% NOR GATE
clear
prompt1="ENTER A BINARY BIT:";
prompt2="ENTER B BINARY BIT:";
a=input(prompt1);
b=input(prompt2);
con= a==0||b==0 && a==1||b==1 && a==0||b==1 && a==1||b==0;
if (con)
  in=Or(a,b);
  out=Not(in);
else
    disp("INVALID");
end
%%
% NAND GATE
clear
prompt1="ENTER A BINARY BIT:";
prompt2="ENTER B BINARY BIT:";
a=input(prompt1);
b=input(prompt2);
con= a==0||b==0 && a==1||b==1 && a==0||b==1 && a==1||b==0;
if (con)
 in=And(a,b);
 out=Not(in);
else
    disp("INVALID");
end
%%
% XOR GATE
clear
prompt1="ENTER A BINARY BIT:";
prompt2="ENTER B BINARY BIT:";
a=input(prompt1);
b=input(prompt2);
con= a==0||b==0 && a==1||b==1 && a==0||b==1 && a==1||b==0;
if (con)
a1=Not(a);
b1=Not(b);
x1=And(a1,b);
x2=And(a,b1);
out=Or(x1,x2);
else
    disp("INVALID");
end
%%
% XNOR GATE
clear
prompt1="ENTER A BINARY BIT:";
prompt2="ENTER B BINARY BIT:";
a=input(prompt1);
b=input(prompt2);
con= a==0||b==0 && a==1||b==1 && a==0||b==1 && a==1||b==0;
if (con)
a1=Not(a);
b1=Not(b);
x1=And(a,b);
x2=And(a1,b1);
out=Or(x1,x2);
else
    disp("INVALID");
end

