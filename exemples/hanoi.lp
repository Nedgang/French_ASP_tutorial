% Prédicats
% sport(rugby; basket).
% range(min..max).
peg(a;b;c).
disk(1..4).
init_on(1..4,a).
goal_on(1..4,c).
moves(15).

% Generation
% At each point T in time (other than 0), exactly one move of a disk D to some peg P must be executed.
{ move(D,P,T) : disk(D), peg(P) } = 1 :- moves(M),T = 1..M.

% Assertions
% maison(C, S):- C=rouge, sport(S).

% Relations
% alliance(X,Y) :- like(X,Y), like(Y,X).
move(D,T) :- move(D,_,T).
% état initial de chaques disques
on(D,P,0) :- init_on(D,P).
% état du disque D est changé si il bouge
on(D,P,T) :- move(D,P,T).
% état du disque D à instant T+1 existe si il existe à l'instant T, que D n'a pas bougé et que T n'est pas au max
on(D,P,T+1) :- on(D,P,T), not move(D,T+1), not moves(T).
% le disque D-1 est bloqué à T+1, si sur la même tour P il y a un disque D plus gros à T, et que T n'est pas au max
blocked(D-1,P,T+1) :- on(D,P,T), not moves(T).
% le disque D-1 est bloqué à T, si sur la même tour P le disque D il est bloqué à T
blocked(D-1,P,T) :- blocked(D,P,T), disk(D).

% Contraintes
% il ne peut y avoir de mouvement du disque D sur la tour P, si cela bloque un disque plus petit sur la même tour
:- move(D,P,T), blocked(D-1,P,T).
% il ne peut y avoir de mouvement de D à l'instant T, si D est sur P à T-1, et si D est bloqué sur P à T
:- move(D,T), on(D,P,T-1), blocked(D,P,T).
% Le dernier mouvement doit être sur l'objectif.
:- goal_on(D,P), not on(D,P,M), moves(M).
% il ne peut y avoir plus d'un mouvement pour chaque point T dans le temps
:- { on(D,P,T)  } != 1, disk(D), moves(M), T = 1..M.

% Sortie
#show move/3.
