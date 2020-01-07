function p_ps=personal_particle(p_ps,ps,pso)
    for i=1:pso.particles
        if p_ps(i,2*pso.N+1)>ps(i,2*pso.N+1)
            p_ps(i,:)=ps(i,:);
        end
    end
end