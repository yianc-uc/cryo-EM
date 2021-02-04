
N = 5;
M = 5;
radius = 5;
range = [-2*M,2*M,-2*M,2*M];
[X,Y] = Generate_Centers(N,M);
x1 = -2*M:0.1:2*M;
y1 = -2*M:0.1:2*M;
[x2,y2] = meshgrid(x1,y1);
G = Gaussian_Mixture(X,Y); 
figure
hold on
fcontour(G,range)
plot(X,Y,'*')

AA = Pairwise_Dis(X,Y);
(sqrt((X(1)-X(2))^2+(Y(1)-Y(2))^2));
sensor_radius = 5;
AA(find(AA>sensor_radius)) = 0;

%test1 = [2,2]'
%repmat(test1,1,3)
% 
% theta = 0:20:360;
% delta = 10;
% size = 10;
% samples = sample_theta(theta',delta,size);