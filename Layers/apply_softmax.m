function outarray = apply_softmax(inarray)
    outarray = zeros(1,1,size(inarray,3));
    
    % k = 1;

    alpha = max(inarray, [], "all");

    expvar = exp(inarray - alpha);
    
    sigma_sum = sum(expvar);
    %sigma_sum = symsum(expvar,k,1,d);
    for i = 1:size(inarray,3)
        outarray(1,1,i) = exp(inarray(1,1,i)-alpha) ./ sigma_sum;
    end
end