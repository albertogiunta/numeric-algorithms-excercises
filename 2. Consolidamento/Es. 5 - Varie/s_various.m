v = [3 4 67 3 1 6 4 2 7 9 3 1 4 52 0];

sort(v, 'ascend')
sort(v, 'descend')

disp('%%%%%%%%%%%%%%%%%%%%%');

x = [0:2:100];
y = [0:0.5:30*0.5];

x
y

disp('%%%%%%%%%%%%%%%%%%%%%');

save vectors.mat x y -mat;
clear;
load vectors.mat

disp('%%%%%%%%%%%%%%%%%%%%%');

A = rand(5, 6);
row3 = A(3, :);
col2 = A(:, 2);

% MODO 1
row_to_add = zeros(1, size(A, 2));
A = [A; row_to_add];
col_to_add = zeros(size(A, 1), 1);
A = [A, col_to_add];

% MODO 2
arr_to_add = zeros(1, size(A, 2));
A = cat(1, A, arr_to_add);
A = cat(2, A, arr_to_add');

sub_matr = A([1:2], [1:2]);

row3
col2
A
sub_matr

disp('%%%%%%%%%%%%%%%%%%%%%');

z3 = zeros(3);
o4 = ones(4);

z3
o4

disp('%%%%%%%%%%%%%%%%%%%%%');

D = diag([1 2 3 4]);

D

disp('%%%%%%%%%%%%%%%%%%%%%');

A = rand(10);
B = rand(10);
C = rand(10);

At = A';
D = B*C;
E = A+B+C;
d = diag(A);

At
D
E
d

disp('%%%%%%%%%%%%%%%%%%%%%');

x = ones(1, 4);
y = [2:1:5];

el_per_el = x.*y;
prod_scal = x*y';

el_per_el
prod_scal

disp('%%%%%%%%%%%%%%%%%%%%%');

x = [3 5 -1 2 -6 1 7 -0.5 0.9];
v = [x(x < -2), x(x > 2)];
v = [v, zeros(1, length(x)-length(v))];

v