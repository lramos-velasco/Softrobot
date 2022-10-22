function sx=wavenetdinamica(x)
K=x(1);
n=x(2);
O=x(3);
t=x(4);

c=8;
d=4;

epsilon = 0.0000005; 

muw=1000.595;
mub=1000.595;
mua=1000.595;

muc=10000.5;
mud=10000.5;

    load('w.mat','W');
    load('a.mat','a');
    load('b.mat','b');
    
      load('C.mat','C');
      load('D.mat','D');
      load('Z.mat','Z');
      load('Ye.mat','Ye');
      load('H.mat','H');
      load('dH.mat','dH');
    
     load('e1.mat','e1');
    load('WT.mat','WT');
    load('aT.mat','aT');
    load('bT.mat','bT');
    load('CT.mat','CT');
    load('DT.mat','DT');
    load('T.mat','T');

for i=1:O;
    yr(1,i)=x(i+4);
end

for i=1:n;
    u(1,i)=x(i+4+O);
end

for o=1:O;
    for k=1:K
            s(k,o)  =  (t-b(k,o))/a(k,o);
            h(k,o)  =  3/(1+exp(-s(k,o)-1)) - 3/(1+exp(-s(k,o)+1)) - 1/(1+exp(-s(k,o)-3)) + 1/(1+exp(-s(k,o)+3));
            dh(k,o) =  1/a(k,o)*(-3*exp(-s(k,o)-1)/(1+exp(-s(k,o)-1))^2 + 3*exp(-s(k,o)+1)/(1+exp(-s(k,o)+1))^2 + exp(-s(k,o)-3)/(1+exp(-s(k,o)-3))^2 - exp(-s(k,o)+3)/(1+exp(-s(k,o)+3))^2);
    end
end
    
     Za=u*W*h;
     
     for i=0:c-2;
         Z(:,c-i)=Z(:,c-1-i);
     end
     
     Z(:,1)=Za';
     
     v=u./5;
     
     for i=1:O;
         yem(1,i)=(Z(i,:)*C(i,:)')*(u*ones(n,1));
         yen(1,i)=(Ye(i,:)*D(i,:)')*(v*ones(n,1)) ;
         gamma(1,i)=(Z(i,:)*C(i,:)');
     end
     
     ye=yem+yen;
     
     for i=0:d-2;
         Ye(:,d-i)=Ye(:,d-1-i);
     end
     Ye(:,1)=ye';
   
     e=(yr-ye);
     
% for i=1:O;
    
     E=(1/2)*(e*e');
   
      if E > epsilon 
                                      
          dEdw=h*C*(ones(c,O))*e'*u;
          dEdb=dh*C*(ones(c,K))*W'*u'*e;
          dEda=s.*(dh*C*(ones(c,K))*W'*u'*e);
          dEdc=e'*u*(ones(n,1))*Z(:,2)'*(ones(O,c));
          dEdd=e'*u*(ones(n,1))*Ye(:,2)'*(ones(O,d));
          
          W=W+muw.*dEdw';
          b=b+mub.*dEdb;
          a=a+mua.*dEda;
          C=C+(muc).*dEdc;
          D=D+(mud).*dEdd;
          
      end
% end

       e1=[e1,e'];
        WT=[WT,W'];
        aT=[aT,a];
        bT=[bT,b];
        T=[T,t];
        CT=[CT,C];
        DT=[DT,D];
        
      save('w.mat','W');
      save('a.mat','a');
      save('b.mat','b');
      
      save('C.mat','C');
      save('D.mat','D');
      save('Z.mat','Z');
      save('Ye.mat','Ye');
      save('H.mat','H');
      save('dH.mat','dH');
      
     save('e1.mat','e1');
      save('WT.mat','WT');
      save('aT.mat','aT');
      save('bT.mat','bT');
      save('CT.mat','CT');
       save('DT.mat','DT');
        save('T.mat','T');
 
      sx=[ye,gamma];
