function ps=attack(ps,pso)
for p=1:pso.particles
    for q=4:2:2*pso.N
        a=[ps(p,q-3),ps(p,q-2)];
        b=[ps(p,q-1),ps(p,q)];
        ab=b-a;
        norm_ab=norm(ab);
        normal_ab=ab/norm_ab;
        for i=1:pso.obs_size
            o=[pso.obs(i,1),pso.obs(i,2)];
            ao=o-a;
            bo=o-b;
            norm_ao=norm(ao);
            norm_bo=norm(bo);
            len_AX=dot(ao,normal_ab);
            if len_AX<0
                shortestlen=norm_ao;
            elseif len_AX>norm_ab
                shortestlen=norm_bo;
            else
                shortestlen=abs(normal_ab(1)*ao(2)-ao(1)*normal_ab(2));
            end
            if shortestlen<=pso.obs(i,3)
                ps(p,2*pso.N+1)=ps(p,2*pso.N+1)+999;
                ps(p,2*pso.N+2)=ps(p,2*pso.N+2)+999;
            end
        end
    end
end
end