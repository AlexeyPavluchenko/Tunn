function I = IntPotNum(E,U) % Numeric integral of the triangular barrier
global d;
global el_mass;
global WFd;
global Ec;
global hbar;
global eV;

Ex0 = Ec;
Exd = Ec+WFd-U*eV;
if abs(WFd-U*eV)>0
    
xx = d*(E-Ec)/(WFd-U*eV);
else
    xx=d;
end

if (E <= min(Ex0,Exd))
    x1=0;
    x2=d;
else
    if (E > max(Ex0,Exd))
       I=0;
       return;
    else
        if (Ex0>Exd)
            x1 = 0;
            x2 = xx;
        else
            if (Ex0<Exd)
                x1 = xx;
                x2 = d;
            end
        end
    end
end

fun = @(x) 2*sqrt(2*el_mass*(Ec-E)+(2*x*el_mass*(WFd-U*eV)/d))/hbar;

I = integral(fun,x1,x2);