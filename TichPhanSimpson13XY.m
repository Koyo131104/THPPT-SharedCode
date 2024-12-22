function y = TichPhanSimpson13XY(xa,ya)
    N = length(xa) - 1;
    h = xa(2) - xa(1);
    if mod(N,2)==0
        sumfle = 0;
        sumfchan = 0;
        for i = 2:N
            if mod(i,2)==0
                sumfle = sumfle + ya(i);
            else
                sumfchan = sumfchan + ya(i);
            end
        end
        y = h/3 * ((ya(1)+ya(N+1)) + 4*sumfle + 2*sumfchan);
    else
        y = NaN;
    end
end
