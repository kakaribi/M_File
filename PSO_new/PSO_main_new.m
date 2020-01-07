function g_ps=PSO_main_new(pso)
    ps=new_particle(pso);
    ps=score(ps,pso);
    vs=new_velocity(pso);
    p_ps=ps;
    g_ps=zeros(1,2*pso.N+1);
    g_ps(2*pso.N+1)=9999999999;
    g_ps=global_particle(g_ps,p_ps,pso);
    for i=1:pso.iteration
        vs=update_vs(g_ps,p_ps,ps,vs,pso);
        ps=update_ps(ps,vs,pso);
        ps=score(ps,pso);
        p_ps=personal_particle(p_ps,ps,pso);
        g_ps=global_particle(g_ps,p_ps,pso);
        disp(g_ps)
    end
end