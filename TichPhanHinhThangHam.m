function y = TichPhanHinhThangHam(fx, a, b, N)
    h = (b-a)/N;
    sumf = 0;
    for i = 1:N-1
        sumf = sumf + fx(a+i*h);
    end
    y = h/2 * (fx(a) + fx(b) + 2*sumf);
end