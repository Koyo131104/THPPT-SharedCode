function dx = DHTienXY(x,y,h,xdh,stt)
    N = length(x);
    n = (xdh - x(1))/h + 1;
    n = cast(n, 'uint16');
    if stt == 1 && xdh~=x(N)
        dx = (y(n+1) - y(n))/(h);
    elseif stt == 2 && xdh~=x(N) && xdh~=x(N-1)
        dx = (-y(n+2)+4*y(n+1)-3*y(n))/(2*h);
    else
        dx = NaN;
    end
end