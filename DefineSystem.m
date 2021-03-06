function [A, B, U, X, Q, R, N] = DefineSystem()
% Set controller horizon
N = 6;

% Set cost function
Q = [1, 0;
     0, 1];
  
R = 1;

% Define the system matrices
A = [1  1;
	 0  1];

B = [0;
     1]; 

% Define the input constraint set U
Val_U = 5;
U = Polyhedron([Val_U; -Val_U]);

% Define the Recovery input constraint set R
% Define the state constraint set X
x_max = 15;
v_max = 15;
X = Polyhedron([x_max v_max; x_max -v_max; -x_max -v_max; -x_max v_max]);
end