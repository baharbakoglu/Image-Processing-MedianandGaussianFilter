function [In]=medfilter(I)
sigma=2;
hsize= 5*sigma;
Ir=medfilt2(I(:,:,1), [hsize sigma]);
Ig=medfilt2(I(:,:,2), [hsize sigma]);
Ib=medfilt2(I(:,:,3), [hsize sigma]);
In=cat(3,Ir,Ig,Ib);
end