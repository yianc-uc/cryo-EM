function output = Fourier_polar(Centers_X,Centers_Y)
    %return a Fourier transform function by Centers (Centers_X,Centers_Y)
    % r, theta are polar coordinates in Fourier domain
    % to check
    output = @(r,theta) exp(-pi*r^2*(sum(exp(-2*pi*1i*(r*cos(theta)*Centers_X+r*sin(theta)*Centers_Y)))));
end
