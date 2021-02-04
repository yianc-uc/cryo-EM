function output = Pairwise_Dis(Centers_X,Centers_Y)
    N = length(Centers_X);
    A = zeros(N,N);
    for i =1:N-1
        for j=i+1:N
            A(i,j) = sqrt((Centers_X(i)-Centers_X(j))^2+(Centers_Y(i)-Centers_Y(j))^2);
        end
    end
    output = A+A';
    
end