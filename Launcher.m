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

define_consts;

uu=(0:5:200)*0.5/100;
Temps = 100:100:300;
cur=zeros(length(Temps),length(uu));

for j=1:length(Temps)
    Temp=Temps(j);
    for i=1:length(uu)
        cur(j,i)=intCurr(uu(i));
    end
    disp(num2str(Temp));
end
semilogy(uu,(cur));
legend(num2str(Temps'));

% uu=(10:5:200)*0.5/100;
% dd = (1:3)*nm;
% cur=zeros(length(dd),length(uu));
% 
% Temp = 250;
% for j=1:length(dd)
%     d=dd(j);
%     for i=1:length(uu)
%         cur(j,i)=intCurr(uu(i));
%     end
%     disp(['d=' num2str(d/nm) ' nm']);
% end
% semilogy(uu,(cur));
% legend(num2str(dd'/nm));