K=100;
n=3;
o=3;

c=8;
d=4;

W = (zeros(n,K));  
a = 1*ones(K,o);
b = (3/(K))*ones(K,o);
e1=[ ];
WT=[ ];
aT=[ ];
bT=[ ];
CT=[ ];
DT=[ ];
T=[ ];

        C = [.05 0 .15 .1 .05 0 .15 .1; .05 0 .15 .1 .05 0 .15 .1; .05 0 .15 .1 .05 0 .15 .1];
        D = [.1 .1 .10 0.1; .1 .1 .10 0.1; .1 .1 .10 0.1];
%         C=[.05 0 .15 .1; .05 0 .15 .1; .05 0 .15 .1];
%         D=[ .1 .1; .10 0.1;.1 .1];
        Z = zeros(o,c);
        Ye = .001*zeros(o,d);
        H = zeros(K,c);
        dH = zeros(K,c);

        save('C.mat','C');
        save('D.mat','D');
        save('Z.mat','Z');
        save('Ye.mat','Ye');
        save('H.mat','H');
        save('dH.mat','dH');

save('w.mat','W');
save('a.mat','a');
save('b.mat','b');
save('e1.mat','e1');
save('WT.mat','WT');
save('aT.mat','aT');
save('bT.mat','bT');
save('CT.mat','CT');
save('DT.mat','DT');
save('T.mat','T');
clear all
clc