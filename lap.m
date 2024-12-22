function [x1, n] = lap(fx, fp, a, b, saiso)
    x0 = (a+b)/2;
    n = 0;  
    while (1)
        x1 = fp(x0);
        if (abs(x1-x0)<saiso)
            break;
        end
        n = n + 1;
        x0 = x1;
    end
    n=n+1;
end