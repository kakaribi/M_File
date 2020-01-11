close all;
clear;

%% èâä˙íl
pso.particles=1000;
pso.iteration=500;
pso.N=10;
pso.x=[-20,5];
pso.y=[-5,5];
pso.start=[-15,0];
pso.goal=[0,0];
pso.obs=[-13,0,1;
        -13,2,1;
        -13,-2,1];
[pso.obs_size,~]=size(pso.obs);

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
hold on
xlim([pso.x(1),pso.x(2)])
ylim([pso.y(1),pso.y(2)])
theta=linspace(0,2*pi);
for i=1:pso.obs_size
    x=2*pso.obs(i,3)/2*cos(theta)+pso.obs(i,1);
    y=2*pso.obs(i,3)/2*sin(theta)+pso.obs(i,2);
    plot(x,y);
end
hold off