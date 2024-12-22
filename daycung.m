function [x1,n] = daycung(fx,a,b,saiso)
    fxi = str2func(['@(x)',fx]);
    n = 0;
    while(1)
        c = (a * fxi(b) - b * fxi(a)) / (fxi(b) - fxi(a));
        fafc = fxi(a)*fxi(c);
        if (fafc<0)
            b=c;
        else
            a=c;
        end
        if (abs(fxi(c)) < saiso || abs(b - a) < saiso) 
            break;
        end
        n = n + 1;
    end
    x1 = c;
end