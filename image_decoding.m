% read input image
img = imread('android-icon.jpg');

% downsample 
img = imresize(img, [64,64]);

% convert to dct
imgdct = dct2(img(:,:,1));
imgdctinv = idct2(imgdct);


% output bit stream
csvwrite('android-icon.csv',imgdct)


