function ps=score_2(ps,pso)
    for i=1:pso.particles
        ps(i,2*pso.N+2)=0;
        for j=6:2:2*pso.N
            vec_a=[ps(i,j-5)-ps(i,j-3),ps(i,j-4)-ps(i,j-2)];
            vec_b=[ps(i,j-1)-ps(i,j-3),ps(i,j)-ps(i,j-2)];
            ps(i,2*pso.N+2)=ps(i,2*pso.N+2)+abs(deg2rad(180)-acos(dot(vec_a,vec_b)/(norm(vec_a)+norm(vec_b))));
        end
    end
end