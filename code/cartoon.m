function []=cartoon(I)
C=edgedetection(I);
B=quantize(I);
B=double(B);
B(:,:,1)=B(:,:,1).*C;
B(:,:,2)=B(:,:,2).*C;
B(:,:,3)=B(:,:,3).*C;
figure,imshow(uint8(B));
end