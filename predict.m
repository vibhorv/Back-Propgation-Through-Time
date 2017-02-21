function [y] = predict(w,g,x,u)
y=zeros(6,1);
yp=u;
for i=1:6
    y(i)=w(i)*x(i) + g(i)*yp;
    yp=y(i);
end


end

