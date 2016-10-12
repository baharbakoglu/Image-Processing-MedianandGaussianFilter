function [dog2]=edgedetection(I)
sigma=2;
hsize=sigma*5;
h=fspecial('gaussian', hsize, sigma);
g=fspecial('gaussian',hsize*1.2,sigma*1.3);
gauss1=imfilter(rgb2gray(I),h,'replicate');
gauss2=imfilter(rgb2gray(I),g,'replicate');
I=gaussianfilter(I);
dog=gauss1-gauss2;
dog=dog.*rgb2gray(I);
dog1=dog>200;
dog2=1-dog1;
end