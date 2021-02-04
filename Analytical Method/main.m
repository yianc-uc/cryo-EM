
%% Genertate a Gaussian Mixture Function(Protein)
N = 10;
M = 5;
radius = 5;
range = [-2*M,2*M,-2*M,2*M];
[X,Y] = Generate_Centers(N,M/2);
x1 = -2*M:0.1:2*M;
y1 = -2*M:0.1:2*M;
[x2,y2] = meshgrid(x1,y1);
G = Gaussian_Mixture(X,Y); % Fucntion what we want to reconstruct

%% Show the 2_D picture

figure
hold on
fcontour(G,range)
L = length(x1);
MM = zeros(L,L); % The discrete density form of the Function(Protein), Pixel
for i = 1:L
    for j=1:L
        xx = -2*M+(L-i+1)*0.1;
        yy = -2*M+(j-1)*0.1;
        MM(i,j)=G(yy,xx);
    end
end
plot(X,Y,'*')
figure
imagesc(MM)

%% Get the Pairwise distance within Sensor Radius
Distance_Full = Pairwise_Dis(X,Y);
Distance_Sensor = Distance_Full;
sensor_radius = 5;
Distance_Sensor(find(Distance_Sensor>sensor_radius)) = 0;

%%