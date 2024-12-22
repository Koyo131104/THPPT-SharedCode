function dx = DHTrungTamHam(fx,h,xdh)
    dx = (fx(xdh+h) - fx(xdh-h))/(2*h);
end