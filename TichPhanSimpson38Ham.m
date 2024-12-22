function y = TichPhanSimpson38Ham(fx, a, b, N)
    if mod(N,3)==0
        h = (b-a)/N;
        sm3 = 0;
        so = 0;
        for k=1:1:N-1
            if rem(k,3)==0
                sm3 = sm3 + fx(a+k*h);
            else
                so = so + fx(a+k*h);
            end
        end
        y = 3*h/8*((fx(a)+fx(b)) + 3*so + 2*sm3);
    else
        y = NaN;
    end
end
