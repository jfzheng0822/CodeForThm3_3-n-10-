function D=adj2dis(A)
%Transform the adjacency matrix into a distance matrix.
[m,n]=size(A);
NN=10000000000000000;
for i=1:m
    for j=1:n
        if(i==j)
            A(i,j)=1;
        end
        if(A(i,j)==0)
            A(i,j)=Inf;
        end
    end
end
for i=1:m
    A(i,i)=0;
end
for k=1:NN
    for i=1:m
        for j=1:n
            for r=1:n
                p(r)=A(i,r)+A(r,j);
            end
            B(i,j)=min(p);
        end
    end
    if B==A
        break;
    else
      A=B;
    end
end
D=A;
end