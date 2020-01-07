function vs=new_velocity(pso)
    vs=rand(pso.particles,pso.N*2);
    for j=1:pso.N
        vs(:,2*j-1)=(pso.x(2)-pso.x(1))*vs(:,2*j-1)+pso.x(1);
        vs(:,2*j)=(pso.y(2)-pso.y(1))*vs(:,2*j)+pso.y(1);
    end
end