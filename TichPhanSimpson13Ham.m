function y = TichPhanSimpson13Ham(fx, a, b, N)
    if mod(N,2)==0
        h = (b-a)/N;
        sumfle = 0;
        sumfchan = 0;
        for i = 1:N-1
            if mod(i,2)==0
                sumfchan = sumfchan + fx(a+i*h);
            else
                sumfle = sumfle + fx(a+i*h);
            end
        end
        y = h/3 * ((fx(a)+fx(b)) + 4*sumfle + 2*sumfchan);
    else
        y = NaN;
    end
end
