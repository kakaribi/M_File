function ps=update_ps(ps,vs,pso)
   for i=1:pso.particles
        for j=3:2*(pso.N-1)
            ps(i,j)=ps(i,j)+vs(i,j);
        end
   end
end