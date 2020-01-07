function g_ps=global_particle(g_ps,p_ps,pso)
    for i=1:pso.particles
        if g_ps(2*pso.N+1)>p_ps(i,2*pso.N+1)
            g_ps(:)=p_ps(i,:);
        end
    end
end