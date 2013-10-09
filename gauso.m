function M = gauso(A)
    M = A;
    for i = 1:4
        m = i;
        for j = i:4
            if(M(j, i) > M(m, i))
                m = j;
            end
        end
        if(M(m, i) == 0)
                continue;
        end
        if(m ~= i)
            temp = M(m, :);
            M(m, :) = M(i, :);
            M(i, :) = temp;
        end
        M(i, :) = M(i, :) / M(i, i);
        for j = i+1:4
            M(j, :) = M(j, :) - M(i, :) * M(j, i);
        end
    end
end