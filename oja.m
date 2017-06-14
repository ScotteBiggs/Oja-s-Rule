x=0.5*rand(500,1);
y=0.05*randn(500,1);
z=0.07*randn(500,1);

% y=y+x*sin(pi/4);
% y=y+1;
input=[x';y';z'];

figure(1)
hold on
% plot(input(1,:), input(2,:),'.k');
scatter3(x,y,z);
axis equal
grid on
eta=0.3;
w=[.1;.5;.5];
% plot(0.1,0.5,'o');
scatter3(w(1),w(2),w(3),'filled','blue');

for epoch=1:10
    for i=1:500
        s=input(:,i)'*w;
        w=w+eta*s*(input(:,i)-s*w);
%         plot(w(1),w(2),'.','markersize',10);
        scatter3(w(1),w(2),w(3),'filled','blue');
    end
end

% plot(w(1),w(2),'+');
% scatter3(w(1),w(2),w(3),'filled','red');
quiver3(0,0,0,w(1),w(2),w(3));