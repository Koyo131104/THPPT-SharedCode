function dx = DHLuiHam(fx,h,xdh,stt)
    if stt == 1
        dx = (fx(xdh) - fx(xdh-h))/(h);
    else
        dx = (fx(xdh-2*h)-4*fx(xdh-h)+3*fx(xdh))/(2*h);
end