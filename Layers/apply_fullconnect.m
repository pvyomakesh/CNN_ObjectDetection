function outarray = apply_fullconnect(inarray, filterbank, biasvals)
    outarray = zeros(1,1,size(filterbank,4));
    for l = 1:size(outarray,3)
        for k = 1:size(inarray,3)
            for j = 1:size(inarray,2)
                for i = 1:size(inarray,1)
                    outarray(1,1,l) = outarray(1,1,l) + filterbank(i,j,k,l)*inarray(i,j,k);
                end
            end
        end
        outarray(1,1,l) = outarray(1,1,l) + biasvals(l);
    end
end