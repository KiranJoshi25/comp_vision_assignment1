flower_pic = imread("flower.bmp"); 
flower_pic = rgb2gray(flower_pic);
imshow(flower_pic)

double_pic = double(flower_pic);
imshow(double_pic)
[U, S, V] = svd(double_pic);
sing_val = diag(S);
sing_val(1:10)
plot1 = plot(sing_val);
set(gca, 'YScale','log');
ylabel('Singular Value');
xlabel('Index');
figure;

S(101:end,101:end) = 0.0;
double_pic = U*S*V';
img1 = mat2gray(double_pic);

S(51:end,51:end) = 0.0;
double_pic = U*S*V';
img2 = mat2gray(double_pic);

S(11:end,11:end) = 0.0;
double_pic = U*S*V';
img3 = mat2gray(double_pic);

imshow(img1)
figure;
imshow(img2)
figure;
imshow(img3)
