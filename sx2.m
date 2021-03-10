function NN=sx2(A)
%Determine whether A is a connected graph, if so, print 1.
B1=sx1(A);
NN=0;
if length(B1)>9
    D1=adj2dis(B1);
    if sum(sum(D1))<1000000000
        E1=sort(eig(D1));
        if (E1(4)<0) && (abs(E1(4))>1e-5) && ((E1(5)>0)||(abs(E1(5))<1e-5))
            NN=1;
        end
    end
end
end