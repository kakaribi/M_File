function ps=new_particle(pso)
    ps=zeros(pso.particles,pso.N*2+2);
    for i=1:pso.particles
        for j=2:pso.N-1
            ps(i,2*j-1)=(pso.x(2)-pso.x(1))*rand()+pso.x(1);
            ps(i,2*j)=(pso.y(2)-pso.y(1))*rand()+pso.y(1);
        end
        ps(i,1)=pso.start(1);
        ps(i,2)=pso.start(2);
        ps(i,2*pso.N-1)=pso.goal(1);
        ps(i,2*pso.N)=pso.goal(2);
    end
end