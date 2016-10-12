function In=quantize(I)
srgb2lab = makecform('srgb2lab');
lab2srgb = makecform('lab2srgb');
shadow_lab = applycform(I, srgb2lab); % convert to L*a*b*
shadow_lab(:,:,1)=gaussianfilter(shadow_lab(:,:,1));
shadow_lab(:,:,1)=round(shadow_lab(:,:,1)./30)*30;
shadow_q = applycform(shadow_lab, lab2srgb);
In=shadow_q;
end