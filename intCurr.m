function curr = intCurr (U)
global hbar;
global h;
global el_mass;
global el_charge;
global Na;
global kb;
global eV
global Ec;
global WFd;
global d;
global nm;
global Temp;

intNum = 500;
Emax=max(Ec,Ec+WFd-U*eV);
%Emax=max(Emax,200*kb*Temp);
dE=Emax/intNum;
curr = 0;
for i=1:intNum
    E=dE*i;
    Dcoeff = exp(-IntPot(E,U));
    curr = curr + Dcoeff*(Fermi(E,0)-Fermi(E,-U*eV))*dE;
    if (isnan(Dcoeff))
        disp('NaN');
        disp(['Complex at d=' num2str(d/nm) ' E=' num2str(E/eV)]);
        disp(['Emax=' num2str(Emax/eV)]);
        disp('...');
    end
end

    
%curr = curr*el_mass*el_charge/(2*pi^2*hbar^3);