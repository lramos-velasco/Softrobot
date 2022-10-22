load('WT.mat','WT');
load('aT.mat','aT');
load('bT.mat','bT');
load('CT.mat','CT');
load('DT.mat','DT');
    
    
figure (1)
plot(y1(:,1),y1(:,2),'LineWidth',1)
hold on
plot(y1(:,1),y1(:,3),'LineWidth',1)
ylabel('Real and aproximate outputs, [m]');
xlabel('Time, [s]');
legend('$y_1$','$\hat{y}_1$','Interpreter','latex')
box on;
hold off


figure (2)
plot(y(:,1),y(:,2),'LineWidth',1)
hold on
plot(y(:,1),y(:,3),'LineWidth',1)
ylabel('Real and aproximate outputs,[m]');
xlabel('Time, [s]');
legend('$y_2$','$\hat{y}_2$','Interpreter','latex')
box on;
hold off


figure (3)
plot(y3(:,1),y3(:,2),'LineWidth',1)
hold on
plot(y3(:,1),y3(:,3),'LineWidth',1)
ylabel('Real and aproximate outputs, [m]');
xlabel('Time, [s]');
legend('$y_3$','$\hat{y}_3$','Interpreter','latex')
box on;
hold off

figure (4)
plot(y1(:,1),y1(:,2)-y1(:,3),'LineWidth',1)
hold on
plot(y(:,1),y(:,2)-y(:,3),'LineWidth',1)
plot(y3(:,1),y3(:,2)-y3(:,3),'k','LineWidth',1)
ylabel('Identifications errors, [m]');
xlabel('Time, [s]');
legend('$e_1$','$e_2$','$e_3$','Interpreter','latex')
box on;
hold off

figure (5)
plot(y1(:,1),y1(:,2)-.07186,'LineWidth',1)
hold on
plot(y(:,1),y(:,2)-0,'LineWidth',1)
plot(y3(:,1),y3(:,2)-0.06757,'k','LineWidth',1)
ylabel('Tracking errors, [m]');
xlabel('Time, [s]');
legend('$\varepsilon_1$','$\varepsilon_2$','$\varepsilon_3$','Interpreter','latex')
box on;
hold off

figure (6)
plot(c1(:,1),c1(:,2),'LineWidth',1)
hold on
plot(c2(:,1),c2(:,2),'LineWidth',1)
plot(c3(:,1),c3(:,2),'k','LineWidth',1)
ylabel('Control signals, [Nm]');
xlabel('Time, [s]');
legend('$u_1$','$u_2$','$u_3$','Interpreter','latex')
box on;
hold off

figure (7)
f=0;
for s=1:3
for j=1:8
    c=CT(s,j);
for i=1:300
    c=[c,CT(s,j*i+8)];
end
f=f+.01;
plot(c1(:,1),c,'LineWidth',1)
hold on
end
end
ylabel('$\bf{C}$, IIR filter coeffficient','Interpreter','latex');
xlabel('Time, [s]');
%legend('$d_{1,1}$','$d_{1,2}$','$d_{1,3}$','$d_{1,4}$','$d_{2,1}$','$d_{2,2}$','$d_{2,3}$','$d_{2,4}$','$d_{3,1}$','$d_{3,2}$','$d_{3,3}$','$d_{3,4}$','Interpreter','latex')
box on;
hold off

figure (8)
for s=1:3
for j=1:4
    d=DT(s,j);
for i=1:300
    d=[d,DT(s,j*i+4)];
end
plot(c1(:,1),d,'LineWidth',1)
hold on
end
end
ylabel('$\bf{D}$, IIR filter coeffficients','Interpreter','latex');
xlabel('Time, [s]');
%legend('$d_{1,1}$','$d_{1,2}$','$d_{1,3}$','$d_{1,4}$','$d_{2,1}$','$d_{2,2}$','$d_{2,3}$','$d_{2,4}$','$d_{3,1}$','$d_{3,2}$','$d_{3,3}$','$d_{3,4}$','Interpreter','latex')
box on;
hold off

figure (9)
for s=1:100
for j=1:3
    p=WT(s,j);
for i=1:300
    p=[p,WT(s,j*i+3)];
end
plot(c1(:,1),p,'LineWidth',1)
hold on
end
end
ylabel('$\bf{W}$, Wavenet coeffficients','Interpreter','latex');
xlabel('Time, [s]');
%legend('$d_{1,1}$','$d_{1,2}$','$d_{1,3}$','$d_{1,4}$','$d_{2,1}$','$d_{2,2}$','$d_{2,3}$','$d_{2,4}$','$d_{3,1}$','$d_{3,2}$','$d_{3,3}$','$d_{3,4}$','Interpreter','latex')
box on;
hold off

figure (10)
for s=1:100
for j=1:3
    p=aT(s,j);
for i=1:300
    p=[p,aT(s,j*i+3)];
end
plot(c1(:,1),p,'LineWidth',1)
hold on
end
end
ylabel('$\bf{A}$, Wavenet coeffficients','Interpreter','latex');
xlabel('Time, [s]');
%legend('$d_{1,1}$','$d_{1,2}$','$d_{1,3}$','$d_{1,4}$','$d_{2,1}$','$d_{2,2}$','$d_{2,3}$','$d_{2,4}$','$d_{3,1}$','$d_{3,2}$','$d_{3,3}$','$d_{3,4}$','Interpreter','latex')
box on;
hold off

figure (11)
for s=1:100
for j=1:3
    p=bT(s,j);
for i=1:300
    p=[p,bT(s,j*i+3)];
end
plot(c1(:,1),p,'LineWidth',1)
hold on
end
end
ylabel('$\bf{B}$, Wavenet coeffficients','Interpreter','latex');
xlabel('Time, [s]');
%legend('$d_{1,1}$','$d_{1,2}$','$d_{1,3}$','$d_{1,4}$','$d_{2,1}$','$d_{2,2}$','$d_{2,3}$','$d_{2,4}$','$d_{3,1}$','$d_{3,2}$','$d_{3,3}$','$d_{3,4}$','Interpreter','latex')
box on;
hold off