function vs=update_vs(g_ps,p_ps,ps,vs,pso)
    for i=1:pso.particles
        for j=1:2*pso.N
            vs(i,j)=0.8*vs(i,j)+rand()*(g_ps(j)-ps(i,j))+rand()*(p_ps(i,j)-ps(i,j));
        end
    end
end