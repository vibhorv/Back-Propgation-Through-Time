function [ wn,gn ] = train(w,g,x,u,yd )
y = predict(w,g,x,u);
wn=rand(6,1);
gn=rand(6,1);
delta=zeros(6,1);
n=0.1;
delta(6)=((yd(6)-y(6)));
wn(6)=w(6)+n*delta(6)*x(6);
gn(6)=g(6)+n*delta(6)*y(5);


for i=5:2
    delta(i)=((yd(i)-y(i)) + delta(i+1)*g(i+1) );
    wn(i)=w(i)+n*delta(i)*x(i);
    gn(i)=g(i)+n*delta(i)*y(i-1);
    
end

delta(1)=((yd(1)-y(1)) + delta(2)*g(2));
wn(1)=w(1)+n*delta(1)*x(1);
gn(1)=g(1)+n*delta(1)*u;


end

