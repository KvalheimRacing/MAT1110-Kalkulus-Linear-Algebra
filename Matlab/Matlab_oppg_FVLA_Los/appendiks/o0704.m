% Oppgave 7.4
A=[0 3 -2 7 1 2 7 0;2 0 1 -4 3 2 0 4;-1 3 4 -1 2 -5 6 2];
A([1 2 3],:)=A([2 1 3],:);
k=A(3,1)/A(1,1);
A(3,:)=A(3,:)-k*A(1,:);
A(1,:)=A(1,:)/A(1,1);
k=A(3,2)/A(2,2);
A(3,:)=A(3,:)-k*A(2,:);
A(2,:)=A(2,:)/A(2,2);
k=A(2,3)/A(3,3);
A(2,:)=A(2,:)-k*A(3,:);
k=A(1,3)/A(3,3);
A(1,:)=A(1,:)-k*A(3,:);
A(3,:)=A(3,:)/A(3,3);
A