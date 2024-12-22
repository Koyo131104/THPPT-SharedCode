function y = TichPhanHinhThangXY(xa,ya)
    N = length(xa);
    h = xa(2) - xa(1);
    sumf = 0;
    for i = 2:N-1
        sumf = sumf + ya(i);
    end
    y = h/2 * (ya(1) + ya(N) + 2*sumf);   
end