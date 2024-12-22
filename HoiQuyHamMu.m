function [a1, a0] = HoiQuyHamMu(x,y)
    X = log10(x);
    Y = log10(y);
    [A1, A0] = HoiQuyTuyenTinh(X,Y);
    a0 = 10^A0;
    a1 = A1;
end