function [c,n]=chiadoi(fx,a,b,saiso)
    n = 0;
    while(1)
        c = (a+b)/2;
        fafc = fx(a)*fx(c);
        if (fafc<0)
            b=c;
        else
            a=c;
        end
        if (fx(c) == 0 || abs(a-b)<saiso)
            break;
        end
        n = n + 1;
    end
    c = (a+b)/2;
    n=n+1;
end