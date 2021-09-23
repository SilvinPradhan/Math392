function [p] = newtonMethod(p)
maxIt= 100; % something large
tol = 10^(-8);

for i = 1 : maxIt
    %p_new = p - f(p)/fprime(p);
    fp=2*p^3 + p^2 -p +1;
    fprimep=6*p^2+2*p-1;
    p_new = p -fp/fprimep;
    %p_new = double(p_new);
    % check for convergence
   if abs(p-p_new)< tol
       p=p_new;
       return %exit function
   end
    p = p_new; % update p
end
end