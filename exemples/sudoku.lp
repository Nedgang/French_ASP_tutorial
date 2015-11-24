% Cases déjà connues
x(1, 3, 6).
x(1, 8, 9).
x(2, 4, 5).
x(2, 6, 1).
x(2, 7, 7).
x(3, 1, 2).
x(3, 4, 9).
x(3, 7, 3).
x(4, 2, 7).
x(4, 5, 3).
x(4, 8, 5).
x(5, 2, 2).
x(5, 5, 9).
x(5, 8, 6).
x(6, 2, 4).
x(6, 5, 8).
x(6, 8, 2).
x(7, 3, 1).
x(7, 6, 3).
x(7, 9, 4).
x(8, 3, 5).
x(8, 4, 2).
x(8, 6, 7).
x(9, 2, 3).
x(9, 7, 8).

% Prédicats
val(1..9).
border(1;4;7).

% Assertions
% Il ne peut y avoir qu'une seule case avec la valeur N pour toute case au coordonnées X,Y comprises entre X1 et Y1.
% Cela recouvre la règle que dit qu'il ne peut y avoir qu'une seule fois le chiffre N dans un grand carré.
1{ x(X,Y,N) : val(X), val(Y), X1<=X, X<=X1+2, Y1<=Y, Y<=Y1+2 }1 :- val(N); border(X1); border(Y1).

% Il ne peut exister qu'une seule case aux coordonnées X et Y, contenant une valeur N.
1{ x(X,Y,N) : val(N) }1 :- val(X); val(Y).
% Il n'y a qu'une case de valeur N dans la ligne Y pour toute colonne X.
1{ x(X,Y,N) : val(X) }1 :- val(N); val(Y).
% Il n'y a qu'une case de valeur N dans la colonne X pour toute ligne Y.
1{ x(X,Y,N) : val(Y) }1 :- val(X); val(N).

% Sortie
#show x/3.
