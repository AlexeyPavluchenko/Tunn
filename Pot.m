function Ux = Pot(x,U)

global Ec;
global d;
global WFd;
global eV;

if (x<0)
    Ux = 0;
    return;
else
    if (x<=d)
        Ux=Ec+x/d*(WFd-U*eV);
       % return
    else
        Ux=-U*eV;
    %    return
    end
end