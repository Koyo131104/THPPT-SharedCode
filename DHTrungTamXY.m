function dx = DHTrungTamXY(x,y,h,xdh)
    N = length(x);
    n = (xdh - x(1))/h + 1;
    n = cast(n, 'uint16');
    if xdh~=x(N) && xdh~=x(1)
        dx = (y(n+1) - y(n-1))/(2*h);
    else 
        dx = NaN;
    end
end