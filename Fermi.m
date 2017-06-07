function f = Fermi(E,E0)
global Temp;
global el_mass;
global kb;


f = 1/(exp((E-E0)/(kb*Temp)) + 1);