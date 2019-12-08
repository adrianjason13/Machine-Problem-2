function [] = problem2()
x1 =input('x axis of first point: ');
y1 =input('y axis of first point: ');
x2 =input('x axis of second point: ');
y2 =input('y axis of second point: ');
x3 =input('x axis of third point: ');
y3 =input('y axis of third point: ');

xy1 = (x1^2) + (y1^2);
xy2 = (x2^2) + (y2^2);
xy3 = (x3^2) + (y3^2);
matrix = ([xy1, x1, y1, 1;xy2, x2, y2, 1;xy3, x3, y3, 1]);
xy = matrix(:,2:4);
detxy = det(xy);
rndxy = round(detxy);

a1 = matrix(:,1:1);
a2 = matrix(:,3:3);
a3 = matrix(:,4:4);
x = horzcat(a1,a2,a3);
detx = -1*(det(x));
rndx = round(detx);

b1 = matrix(:,1:1);
b2 = matrix(:,2:2);
b3 = matrix(:,4:4);
y = horzcat(b1,b2,b3);
dety = (det(y));
rndy = round(dety);

c1 = matrix(:,1:1);
c2 = matrix(:,2:2);
c3 = matrix(:,3:3);
c = horzcat(c1,c2,c3);
detc =-1*(det(c));
rndc = round(detc);

d = matrix(:,2:4);
detd = det(d);
rnddet = round(detd);

centerx = ((-.5)*(rndx/rnddet));
centery = ((-.5)*(rndy/rnddet));

rad = rndc/rnddet;

radius = ((x1-centerx)^2) + ((y1-centery)^2);
rad = sqrt(radius);

fprintf('\r The Center of the Circle is: %0.4f\n',centerx,centery)
fprintf('\r The Radius of the Circle is: %0.4f\n', rad)

if rndxy ~= 0
    xx = rndx/rndxy;
    yy = rndy/rndxy;
    cc = rndc/rndxy;
    
    fprintf ('\r The Coefficient for the equation of the circle is: %0.4f\n',xx,yy,cc)
else
    fprintf ('\r The Coefficient for the equation of the circle is: %0.4f\n',rndx,rndy,rndc)
end

end