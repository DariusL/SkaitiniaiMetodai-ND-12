function x = atvirkstines(A)
    for i = 1:3
        z = A(i:4, i);
        zp = zeros(5-i, 1);
        zp(1) = norm(z);
        omega = (z - zp)./norm(z - zp);
        Q = eye(5-i) - 2 * (omega * omega');
        A(i:4, :) = Q * A(i:4, :);
    end
    
    x=zeros(4, 1);
    for i = 4:-1:1
        x(i)=(A(i,5:end)-A(i,i+1:4)*x(i+1:4))/A(i,i);
    end
end