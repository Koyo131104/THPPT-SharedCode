function y = TichPhanSimpson38XY(xa,ya)
    N = length(xa) - 1;
    h = xa(2) - xa(1);
    if mod(N,3)==0
        sm3 = 0;
        so = 0;
        for k=2:1:N
            if mod(k-1,3)==0
                sm3=sm3+ya(k); 
            else
                so=so+ya(k);
            end
        end
        y = 3*h/8*((ya(1)+ya(N+1)) + 3*so + 2*sm3);
    else
        y = NaN;
    end
end