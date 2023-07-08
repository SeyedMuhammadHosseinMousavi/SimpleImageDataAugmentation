function augmentedSample = ApplyDataAug(originalSample)
% 7 changes of noise, rotation, resizing, shift, contrast, and fliping are
% applied in four possibilities 
dowhat= randi([1,4]);
if dowhat==1  

% impulse noise
saltnoise = imnoise(originalSample,'salt & pepper',rand*0.02);
augmentedSample = saltnoise;
% Gaussian noise
gnoise = imnoise(augmentedSample,'gaussian',rand*0.03);
augmentedSample=gnoise;
% rotation
rotate = imrotate(augmentedSample,rand*35);
augmentedSample = rotate;
% resizing
resize = imresize(augmentedSample, rand*1.8);
augmentedSample = resize;
% shift or translation
shiftortranslate = imtranslate(augmentedSample,[rand*10, rand*10]);
augmentedSample = shiftortranslate;
% contrast change
contrast=imadjust(augmentedSample,[0.3 0.7],[]);
augmentedSample = contrast;
% flipping
verthort= randi([1,2]);
flip = flipdim(augmentedSample,verthort);
augmentedSample=flip;

elseif dowhat==2
% impulse noise
saltnoise = imnoise(originalSample,'salt & pepper',rand*0.02);
augmentedSample = saltnoise;
% gaussina noise
gnoise = imnoise(augmentedSample,'gaussian',rand*0.03);
augmentedSample=gnoise;

elseif dowhat==3
% impulse noise
saltnoise = imnoise(originalSample,'salt & pepper',rand*0.02);
augmentedSample = saltnoise;
% gaussina noise
gnoise = imnoise(augmentedSample,'gaussian',rand*0.03);
augmentedSample=gnoise;
% rotation
rotate = imrotate(augmentedSample,rand*35);
augmentedSample = rotate;
% resizing
resize = imresize(augmentedSample, rand*1.8);
augmentedSample = resize;
% shift or translation
shiftortranslate = imtranslate(augmentedSample,[rand*10, rand*10]);
augmentedSample = shiftortranslate;

else
% rotation
augmentedSample=originalSample;
rotate = imrotate(augmentedSample,rand*35);
augmentedSample = rotate;
% resizing
resize = imresize(augmentedSample, rand*1.8);
augmentedSample = resize;
% shift or translation
shiftortranslate = imtranslate(augmentedSample,[rand*10, rand*10]);
augmentedSample = shiftortranslate;

end
end


