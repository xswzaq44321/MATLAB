h = 10^-15;
interval = [0, 10*10^-10];
t = linspace(interval(1), interval(2), abs(interval(1) - interval(2))/h);
m = 40/6*10^-26;
e = 1.66*10^-21;
sigma = 3.4*10^-10;
box = 2*10^-9;
force = zeros(1, length(t));
va = zeros(1, length(t));
vb = zeros(1, length(t));
xa = zeros(1, length(t));
xa(1) = 2.5*10^-10;
xb = zeros(1, length(t));
xb(1) = -2.5*10^-10;
for i = 2:(length(t))
    r = xa(i - 1) - xb(i - 1);
    force(i - 1) = U(r);
    va(i) = va(i - 1) - (force(i - 1) / m) * h;
    vb(i) = vb(i - 1) + (force(i - 1) / m) * h;
    xa(i) = xa(i - 1) + va(i - 1) * h;
    xb(i) = xb(i - 1) + vb(i - 1) * h;
    if(xa(i) > box)
        xa(i) = 2*box - xa(i);
        va(i) = -va(i);
    end
    if(xb(i) < -box)
        xb(i) = -2*box - xb(i);
        vb(i) = -vb(i);
    end
end
filename = 'prob3_a.gif';
map = figure;
for i = 1:100:(length(xa)/26) % 因為來回震盪大約26次 所以這裡只取整個的26分之一
    plot(xa(i), 0, 'o', xb(i), 0, 'o');
    axis([-box box -box box]);
    axis square;
    drawnow;
    frame = getframe(map);
    im = frame2im(frame);
    [imind, cm] = rgb2ind(im, 256);
    if i == 1
        imwrite(imind,cm,filename,'gif','DelayTime',0.016, 'Loopcount',inf); % 0.016 = 60fps
    else
        imwrite(imind,cm,filename,'gif','DelayTime',0.016,'WriteMode','append');
    end
end
U_ = zeros(1, length(t));
for i = 1:length(t)
    r = xa(i) - xb(i);
    U_(i) = 4 * e * ((sigma/r)^12 - (sigma/r)^6);
    U_(i) = U_(i) + 1/2*m*va(i)^2;
    U_(i) = U_(i) + 1/2*m*vb(i)^2;
end
figure(9);
plot(t, U_);

% vxa = zeros(1, length(t));
% vxb = zeros(1, length(t));
% vxc = zeros(1, length(t));
% vxc(1) = 300;
% vya = zeros(1, length(t));
% vyb = zeros(1, length(t));
% vyc = zeros(1, length(t));
% xa = zeros(1, length(t));
% ya = zeros(1, length(t));
% ya(1) = 1.7082*10^-10;
% xb = zeros(1, length(t));
% yb = zeros(1, length(t));
% yb(1) = -1.7082*10^-10;
% xc = zeros(1, length(t));
% yc = zeros(1, length(t));
% xc(1) = -2*10^-9;
% for i = 2:(length(t))
%     xab = xa(i - 1)-xb(i - 1); yab = ya(i - 1) - yb(i - 1);
%     rab = sqrt(xab^2 + yab^2); Fab = U(rab);
%     xca = xc(i - 1)-xa(i - 1); yca = yc(i - 1) - ya(i - 1);
%     rca = sqrt(xca^2 + yca^2); Fca = U(rca);
%     xcb = xc(i - 1)-xb(i - 1); ycb = yc(i - 1) - yb(i - 1);
%     rcb = sqrt((xcb)^2 + (ycb)^2); Fcb = U(rcb);
%     Fca = 0;
%     Fcb = 0;
%     
%     Fcx = Fca * (xca/rca) + Fcb * (xcb/rcb);
%     vxc(i) = vxc(i - 1) + Fcx/m*h;
%     xc(i) = xc(i - 1) + vxc(i - 1) * h;
%     
%     Fax = Fca * abs(xca/rca);
%     Fay = Fca * abs(yca/rca) - Fab;
%     vxa(i) = vxa(i - 1) + Fax / m * h;
%     vya(i) = vya(i - 1) + Fay / m * h;
%     xa(i) = xa(i - 1) + vxa(i - 1) * h;
%     ya(i) = ya(i - 1) + vya(i - 1) * h;
%     if(xa(i) > box)
%         xa(i) = 2*box - xa(i);
%         vxa(i) = -vxa(i);
%     end
%     if(xa(i) < -box)
%         xa(i) = -2*box - xa(i);
%         vxa(i) = -vxa(i);
%     end
%     if(ya(i) > box)
%         ya(i) = 2*box - ya(i);
%         vya(i) = -vya(i);
%     end
%     if(ya(i) < -box)
%         ya(i) = -2*box - ya(i);
%         vya(i) = -vya(i);
%     end
%     
%     Fbx = Fcb * abs(xcb/rcb);
%     Fby = Fcb * abs(ycb/rcb) + Fab;
%     vxb(i) = vxb(i - 1) + Fbx / m * h;
%     vyb(i) = vyb(i - 1) + Fby / m * h;
%     xb(i) = xb(i - 1) + vxb(i - 1) * h;
%     yb(i) = yb(i - 1) + vyb(i - 1) * h;
%     if(xb(i) > box)
%         xb(i) = 2*box - xb(i);
%         vxb(i) = -vxb(i);
%     end
%     if(xb(i) < -box)
%         xb(i) = -2*box - xb(i);
%         vxb(i) = -vxb(i);
%     end
%     if(yb(i) > box)
%         yb(i) = 2*box - yb(i);
%         vyb(i) = -vyb(i);
%     end
%     if(yb(i) < -box)
%         yb(i) = -2*box - yb(i);
%         vyb(i) = -vyb(i);
%     end
% end
% figure;
% plot(t, ya, t, yb);
% figure;
% for i = 1:100:(length(xa))
%     plot(xa(i), ya(i), 'o', xb(i), yb(i), 'o', xc(i), yc(i), 'o');
%     fprintf(1, '%f %f\n', xa(i), ya(i));
%     axis([-box box -box box]);
%     axis square;
%     drawnow;
% end