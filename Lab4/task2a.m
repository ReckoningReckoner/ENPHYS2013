A = [10 9 8 7 ; 1 2 3 4 ; 6 6 3 2 ; 1 5 4 7 ];
B = [ 6; 5; 1; 9];
AB = [A,B];

triangle = UpTri(AB);
fprintf('Triangular Matrix\n');
triangle

X = BackSubs(triangle);
fprintf('Solution:\n');
X

fprintf('A * X:\n');
A * X

fprintf('B:\n');
B
