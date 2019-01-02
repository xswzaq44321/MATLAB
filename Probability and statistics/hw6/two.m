clear;
x = 0:1:100;
y = 1000:1:2000;

C1 = n(x, y, 25, 30, 1250, 300, 0);
figure;
imagesc(C1);
set(gca,'YDir','normal');
title('Distribution 1');
colorbar;
C2 = n(x, y, 75, 30, 1750, 300, 0);
figure;
imagesc(C2);
set(gca,'YDir','normal');
title('Distribution 2');
colorbar;
T = 0.005*max(max(C1));
for i = 1:length(x)
	for j = 1:length(y)
		if(abs(C1(i, j) - C2(i, j)) < T)
			C3(i, j) = 1;
		else
			C3(i, j) = 0;
		end
	end
end
figure;
imagesc(C3);
set(gca,'YDir','normal');
title('Case 1');
colorbar;

C4 = n(x, y, 25, 20, 1250, 200, 0);
figure;
imagesc(C4);
set(gca,'YDir','normal');
title('Distribution 3');
colorbar;
C5 = n(x, y, 75, 30, 1750, 300, 0);
figure;
imagesc(C5);
set(gca,'YDir','normal');
title('Distribution 4');
colorbar;
T = 0.005*max(max(C4));
for i = 1:length(x)
	for j = 1:length(y)
		if(abs(C4(i, j) - C5(i, j)) < T)
			C6(i, j) = 1;
		else
			C6(i, j) = 0;
		end
	end
end
figure;
imagesc(C6);
set(gca,'YDir','normal');
title('Case 2');
colorbar;