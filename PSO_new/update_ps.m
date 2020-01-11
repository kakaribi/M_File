function ps=update_ps(ps,vs,pso)
    i=1:pso.particles;
    j=3:2*(pso.N-1);
    ps(i,j)=ps(i,j)+vs(i,j);
end