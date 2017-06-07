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

define_consts;

% x=(-100:200)*d/50;
% uu=(0:10)*0.5/5;
% y=zeros(length(uu),length(x));
% 
% for j=1:length(uu)
%     for i=1:length(x)
%         y(j,i)=Pot(x(i),uu(j));
%     end
% end
% plot(x,y);

% E=(0:0.01:1)*eV;
% dd=(0:10)*1.0*nm;
% IAn=zeros(length(dd),length(E));
% INum=zeros(length(dd),length(E));
% for j = 1:length(dd)
%     for i = 1:length(E)
%         d=dd(j);
%         IAn(j,i)=IntPot(E(i),0);
%         INum(j,i)=IntPotNum(E(i),0);
%     end
% end
% plot(E/eV,IAn,'r',E/eV,INum,'bx');

E=(0:0.01:1)*eV;
uu=(0.3:0.1:0.6);
IAn=zeros(length(uu),length(E));
INum=zeros(length(uu),length(E));
for j = 1:length(uu)
    for i = 1:length(E)
        IAn(j,i)=IntPot(E(i),uu(j));
    end
end
plot(E/eV,IAn);

% uu=0:0.01:1;
% y=zeros(1,length(uu));
% d=2;
% for j=1:length(uu)
%         y(j)=IntPot(0.4*eV,uu(j));
% end
% plot(uu,y);
