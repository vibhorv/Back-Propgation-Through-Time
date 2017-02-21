[ X,Y,U ] = input_gen(1000);
w=rand(6,1);
g=rand(6,1);
error=error_fx(X,Y,U,w,g);
a=1;
for yu=1:50
 u=0;   
for i=2:446
    
    x=[U(i),U(i+1),U(i+2),U(i+3),U(i+4),U(i+5)];
    yd=[Y(i),Y(i+1),Y(i+2),Y(i+3),Y(i+4),Y(i+5)];
    [ w,g ] = train(w,g,x,u,yd);
    ye = predict(w,g,x,u);
    u=ye(1);
end
    error=error_fx(X,Y,U,w,g)
    e(a)=error;
    a=a+1;
end
error_testset=error_fx(X,Y,U,w,g)
error_dataset=error_ds(X,Y,U,w,g)
plot(e)