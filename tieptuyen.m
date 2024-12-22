function [x1, n] = tieptuyen(fx, a, b, saiso)
    syms x;
    fxi = str2sym(fx);
    fxi_dh = diff(fxi,x); 
    fxi_dh = matlabFunction(fxi_dh);
    fxi = matlabFunction(fxi);
    n = 0;
    if fxi(a)*fxi_dh(a)>0
        x0 = a;
    else
        x0=b;
    end
    while (1)
        x1 = x0 -(fxi(x0)/(fxi_dh(x0)));
        if (abs(x1-x0)<saiso)
            break;
        end
        n = n + 1;
        x0 = x1;
    end
    n=n+1;
end