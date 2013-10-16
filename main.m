A2 = [1 -2 3 4;
      1 0 -1 1;
      2 -2 2 5;
      0 -7 3 1]
B2 = [-1; 0; 2; 2]
M2 = [A2 B2]
X2 = gauso(M2);
A = isinf(X2) + isnan(X2);
if(norm(A) ~= 0)
    disp('Lygtis neturi sprendiniø');
else
    X1
end