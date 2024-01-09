

function outarray = apply_CNN(inarray)
    load CNNparameters.mat biasvectors filterbanks;
    layer1 = apply_imnormalize(inarray);
    layer2 = apply_convolve(layer1,cell2mat(filterbanks(2)),cell2mat(biasvectors(2)));
    layer3 = apply_relu(layer2);
    layer4 = apply_convolve(layer3,cell2mat(filterbanks(4)),cell2mat(biasvectors(4)));
    layer5 = apply_relu(layer4);
    layer6 = apply_maxpool(layer5);
    layer7 = apply_convolve(layer6,cell2mat(filterbanks(7)),cell2mat(biasvectors(7)));
    layer8 = apply_relu(layer7);
    layer9 = apply_convolve(layer8,cell2mat(filterbanks(9)),cell2mat(biasvectors(9)));
    layer10 = apply_relu(layer9);
    layer11 = apply_maxpool(layer10);
    layer12 = apply_convolve(layer11,cell2mat(filterbanks(12)),cell2mat(biasvectors(12)));
    layer13 = apply_relu(layer12);
    layer14 = apply_convolve(layer13,cell2mat(filterbanks(14)),cell2mat(biasvectors(14)));
    layer15 = apply_relu(layer14);
    layer16 = apply_maxpool(layer15);
    layer17 = apply_fullconnect(layer16,cell2mat(filterbanks(17)),cell2mat(biasvectors(17)));
    layer18 = apply_softmax(layer17);
    outarray = layer18;
end

