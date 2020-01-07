close all;
clear;

%% èâä˙íl
pso.particles=1000;
pso.iteration=1000;
pso.N=15;
pso.x=[-12,2];
pso.y=[-3,3];
pso.start=[-12,3];
pso.goal=[1,1];

%% mainï∂
g_ps=PSO_main_new(pso);

%% plot
j=1;
xhis=zeros(pso.N);
yhis=zeros(pso.N);
for i=1:pso.N
    xhis(j)=g_ps(2*i-1);
    yhis(j)=g_ps(2*i);
    j=j+1;
end
plot(xhis,yhis)