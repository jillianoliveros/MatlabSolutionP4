ho = input('Enter the initial height of projectile above the ground in meters: ');
vo = input('Enter the magnitude of the velocity in m/s: ');
theta = input('Enter the angle in degrees  with respect to the +x-axis at which the projectile is fired: ');
ax = input('Enter the x-component of the acceleration,considering the sign,in m/s^2: ');
ay = input('Enter the y-component of the acceleration,considering the sign,in m/s^2: ');

if ay==0
    error('The vertical acceleration is zero, free fall is not possible. Try again.');
end

vox = vo*cosd(theta);
voy = vo*sind(theta);
a = (1/2)*ay;
b = voy;
c = ho;
tf1 = roots([a,b,c]);
tf = max(tf1); 
t = linspace(0,tf,1000);
d = sqrt(voy^2-4*(1/2*ay)*ho);
x = d+vox*t;
y = ho+voy*t+(1/2)*ay*t.^2;
y(y<0)=0;
plot(x,y,'r','LineWidth',3);
grid on;
title ('Projectile Trajectory')
xlabel('X-coordinate')
ylabel('Y-coordinate')



