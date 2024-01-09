function outarray = apply_maxpool(inarray)
    [N, M, D] = size(inarray);
    N_out = N/2;
    M_out = M/2;

    outarray = zeros(N_out, M_out, D);

    for k = 1:D
        for i = 1:N_out
            for j = 1:M_out

                row_start = 2*i-1;
                row_end = 2*i;
    
                col_start = 2*j-1;
                col_end = 2*j;
    
                quad = inarray(row_start:row_end, col_start:col_end,k);
    
                max_quad = max(quad(:));
    
                outarray(i,j,k) = max_quad;
            end
        end
    end
end