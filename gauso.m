function x = gauso(A)
    for i = 1:4
        m = i;
        for j = i:4
            if(abs(A(j, i)) > abs(A(m, i)))
                m = j;
            end
        end
        if(A(m, i) == 0)
                continue;
        end
        if(m ~= i)
            temp = A(m, :);
            A(m, :) = A(i, :);
            A(i, :) = temp;
        end
        A(i, :) = A(i, :) / A(i, i);
        for j = i+1:4
            A(j, :) = A(j, :) - A(i, :) * A(j, i);
        end
    end
    x=zeros(4, 1);
    for i = 4:-1:1
        x(i,:)=(A(i,5:end)-A(i,i+1:4)*x(i+1:4,:))/A(i,i);
    end
end