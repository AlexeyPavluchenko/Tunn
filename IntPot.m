function I = IntPot(E,U) % Analytic integral of the triangular barrier
global d;
global el_mass;
global WFd;
global Ec;
global hbar;
global eV;
global nm;

A = (WFd - U*eV)/d;
B = (Ec-E);


Ex0 = Ec;
Exd = Ec+WFd-U*eV;

if abs(A)>0    
xx = -B/A;
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

if abs(WFd-U*eV)>0    
xx = d*(E-Ec)/(WFd-U*eV);
else
    xx=d;
    x1=0;
    x2=d;
end

if (abs(A) == 0)
    x1=0;
    x2=d;
    I = 2/hbar* sqrt(2*el_mass)*(sqrt(B)*x2 - sqrt(B)*x1);
else
    I = 2/hbar* 2/3* sqrt(2*el_mass)*( ((x2*A+B)^(3/2))/A - ((x1*A+B)^(3/2))/A );
end

if (abs(imag(I))<1e-20)
     I=real(I);
end

if (abs(imag(I))>0)
    disp(['I=' num2str(I)]);
    disp(['Complex at d=' num2str(d/nm) ' E=' num2str(E/eV)]);
    disp(['E0=' num2str(Ex0/eV) ' Ed=' num2str(Exd/eV) ' U=' num2str(U)]);
    disp(['xx= ' num2str(xx/nm) ' x1= ' num2str(x1/nm) ' x2= ' num2str(x2/nm)])
    disp('...');
end
