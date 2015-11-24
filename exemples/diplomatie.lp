% Initialisation
% var(var1; var2).
land(france; uk; allemagne; italie; espagne; russie).

% Assertions
% maison(C, H, P, B, A, S):- C=rouge, H=anglais, position(P), boisson(B), animal(A), sport(S).
like(france, uk).
like(uk, france).
like(allemagne, italie).
like(italie, allemagne).

hate(uk, allemagne).
hate(allemagne, france).

% Contraintes

% Relations
alliance(X, Y) :- like(X,Y), like(Y,X), land(X), land(Y).
ennemy(X,Y) :- hate(X,Y), land(X), land(Y).
ennemy(X,Y) :- like(X,Z), hate(Z,Y), land(X), land(Y), land(Z).

% Sortie
#show ennemy/2.
