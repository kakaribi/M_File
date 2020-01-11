function ps=score_1(ps,pso)
    for i=1:pso.particles
        ps(i,2*pso.N+1)=0;
        for j=4:2:2*pso.N
            ps(i,2*pso.N+1)=ps(i,2*pso.N+1)+sqrt((ps(i,j-3)-ps(i,j-1))^2+(ps(i,j-2)-ps(i,j))^2);
        end
    end
end