clear;
x = 0:1:100;
y = 1000:1:2000;
C1 = n(x, y, 50, 20, 1500, 200, 0);
figure;
imagesc(C1);
set(gca,'YDir','normal');
title('Distribution 1');
colorbar;
C2 = n(x, y, 50, 20, 1500, 200, 0.3);
figure;
imagesc(C2);
set(gca,'YDir','normal');
title('Distribution 2');
colorbar;
C3 = n(x, y, 50, 20, 1500, 200, 0.8);
figure;
imagesc(C3);
set(gca,'YDir','normal');
title('Distribution 3');
colorbar;
C4 = n(x, y, 50, 20, 1500, 200, -0.8);
figure;
imagesc(C4);
set(gca,'YDir','normal');
title('Distribution 4');
colorbar;