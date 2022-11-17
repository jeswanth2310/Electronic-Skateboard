clf 
m=10;C=1;A=0.03;p=1.16;g=9.8;Rc=0.004;
v=(1/3.6)*[0 5 10 15 20 25 30]; 
ar=(1/2)*C*A*p*v.^3;
rr=m*g*Rc*v;
syms t
gr = m*g*(sind(t))*v;
alpha= [0 2 5 10 15];
r=0.053;
for ii=1:5
    t = alpha(ii);
   tr=ar+rr+subs(gr);double(tr)
   xlabel('speed(kmph)')
   ylabel('power(W)')
   hold on
   plot(v*3.6,tr) 
   
end
t1 = text(30,16,'\leftarrowalpha=0','FontSize',8,'Color','b')
t2 = text(30,44,'\leftarrowalpha=2','FontSize',8,'Color','r')
t3 = text(30,86,'\leftarrowalpha=5','FontSize',8,'Color','#D95319')
t4 = text(30,156,'\leftarrowalpha=10','FontSize',8,'Color','#7E2F8E')
t5 = text(30,226,'\leftarrowalpha=15','FontSize',8,'Color','#77AC30')
t6 = text(30,106,'P=100W','FontSize',8,'Color','k')
yline(100)