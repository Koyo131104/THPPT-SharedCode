function [a1, a0] = HoiQuyMue(x,y)
    X = x;
    Y = log(y);
    [A1, A0] = HoiQuyTuyenTinh(X,Y);
    a0 = exp(A0);
    a1 = A1;
end