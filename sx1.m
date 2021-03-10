function T=sx1(A)
%Delete the isolated vertices in A
C1=[];
G=sum(A);
s=length(A);
ss=0;
for ll=1:s
    if G(ll)==0
        ss=ss+1;
        C1(1,ss)=ll;
    end
end
A(:,C1)=[];
A(C1',:)=[];
T=A;
end