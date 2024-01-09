load 'cifar10testdata.mat'
outarray = zeros(1,10000);
C = zeros(10,10);
for n = 1:10000
    cnnout = apply_CNN(imageset(:,:,:,n));
    n
    [M,I] = max(cnnout);
    outarray(1,n) = I;
    C(trueclass(1,n),outarray(1,n)) = C(trueclass(1,n),outarray(1,n)) + 1;
end
sum = 0;
for i = 1:10
    sum = sum + C(i,i);
end
A = double(sum)/10000;

