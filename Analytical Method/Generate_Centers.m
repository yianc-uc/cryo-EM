function [Centers_X, Centers_Y] = Generate_Centers(N,M)
    % return N random points (Centers_X,Centers_Y) in R^2
    % within the range[-M,M,-M,M]
    Centers_X = -M + (2*M).*rand(1,N);
    Centers_Y = -M + (2*M).*rand(1,N);
end