function output = sample_theta(theta,delta,size)
    % sample theta from uniformly distribution
    % theta should be N*1, delta is the sample range, 
    % size is the sample size of each theta_i
    % return a N*size matrix A 
    % Aij means the jth sample of theta_i
    N = length(theta);
    A = repmat(theta,1,size);
    perturbation = rand(N,size)*delta;
    output = A+perturbation;
end