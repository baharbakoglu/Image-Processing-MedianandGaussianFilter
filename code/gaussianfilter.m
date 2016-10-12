function [outim]=gaussianfilter(I)
sigma=1;
hsize=5*sigma;
h=fspecial('gaussian' ,hsize, sigma);
outim=imfilter(I,h);
end