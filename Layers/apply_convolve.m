function outarray = apply_convolve(inarray, filterbank, biasvals)
    outarray = zeros(size(inarray,1),size(inarray,2),size(filterbank,4));
    for l = 1:size(outarray,3)
        for k = 1:size(inarray,3)
            outarray(:,:,l) = outarray(:,:,l) + imfilter(inarray(:,:,k),filterbank(:,:,k,l),'conv');
        end
        outarray(:,:,l) = outarray(:,:,l) + biasvals(l);
    end
end