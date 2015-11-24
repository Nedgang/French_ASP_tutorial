% Il y a cinq maisons de cinq couleurs différentes
% Dans chacune de ces maisons; vit une personne de nationalité différente.
% Chacune de ces personnes boit une boisson différente; pratique un sport
% différent et a un animal domestique différent.

% 1    L'Anglais vit dans la maison rouge.
% 2    Le Suédois a des chiens.
% 3    Le Danois boit du thé.
% 4    La maison verte est à gauche de la maison blanche.
% 5    Le propriétaire de la maison verte boit du café.
% 6    La personne qui joue au football élève des oiseaux.
% 7    Le propriétaire de la maison jaune joue au baseball.
% 8    La personne qui vit dans la maison du centre boit du lait.
% 9    Le Norvégien habite dans la première maison.
% 10   L'homme qui pratique le volley vit à côté de celui qui a des chats.
% 11   L'homme qui a un cheval est le voisin de celui qui pratique le baseball.
% 12   Celui qui pratique le tennis boit de la bière.
% 13   L'Allemand joue au hockey.
% 14   Le Norvégien vit juste à côté de la maison bleue.
% 15   L'homme qui joue au volley a un voisin qui boit de l'eau.

% QUESTION: qui a le poisson?

% Prédicats
couleur(rouge; verte; blanche; jaune; bleue).
habitant(anglais; danois; norvegien; allemand; suedois).
position(1..5).
boisson(the; chocolat; cafe; lait; biere; eau).
animal(chien; poisson; chat; cheval; oiseau).
sport(volley; hockey; tennis; foot; baseball).

% Assertions
5{maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), boisson(B), animal(A), sport(S)}5.

1{ maison(C, H, P, B, A, S) : habitant(H), position(P), boisson(B), animal(A), sport(S) }1 :- couleur(C).
1{ maison(C, H, P, B, A, S) : couleur(C), position(P), boisson(B), animal(A), sport(S) }1 :- habitant(H).
1{ maison(C, H, P, B, A, S) : habitant(H), couleur(C), boisson(B), animal(A), sport(S) }1 :- position(P).
{ maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), animal(A), sport(S) }1 :- boisson(B).
1{ maison(C, H, P, B, A, S) : habitant(H), position(P), boisson(B), couleur(C), sport(S) }1 :- animal(A).
1{ maison(C, H, P, B, A, S) : habitant(H), position(P), boisson(B), animal(A), couleur(C) }1 :- sport(S).

% 1    L'Anglais vit dans la maison rouge.
maison(C, H, P, B, A, S) : C=rouge, position(P), boisson(B), animal(A), sport(S) :- H=anglais.
% 2    Le Suédois a des chiens.
maison(C, H, P, B, A, S) : couleur(C), H=suedois, position(P), boisson(B), sport(S) :- A=chien.
% 3    Le Danois boit du thé.
maison(C, H, P, B, A, S) : couleur(C), H=danois, position(P), animal(A), sport(S) :- B=the.
% 4    La maison verte est à gauche de la maison blanche.
maison(C, H, P, B, A, S) : C=verte, habitant(H), position(P), boisson(B), animal(A), sport(S)
        :- maison(C1, H1, P1, B1, A1, S1); C1=blanche; habitant(H1); position(P1); boisson(B1); animal(A1); sport(S1); estaGauche(P,P1).
% 5    Le propriétaire de la maison verte boit du café.
maison(C, H, P, B, A, S) : C=verte, habitant(H), position(P), animal(A), sport(S) :- B=cafe.
% 6    La personne qui joue au football élève des oiseaux.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), boisson(B), A=oiseau :- S=foot.
% 7    Le propriétaire de la maison jaune joue au baseball.
maison(C, H, P, B, A, S) : C=jaune, habitant(H), position(P), boisson(B), animal(A) :- S=baseball.
% 8    La personne qui vit dans la maison du centre boit du lait.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), P=3, animal(A), sport(S) :- B=lait.
% 9    Le Norvégien habite dans la première maison.
maison(C, H, P, B, A, S) : couleur(C), H=norvegien, boisson(B), animal(A), sport(S) :- P=1.
% 10   L'homme qui pratique le volley vit à côté de celui qui a des chats.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), boisson(B), animal(A), S=volley
        :- maison(C1, H1, P1, B1, A1, S1); couleur(C1); habitant(H1); position(P1); boisson(B1); A1=chat; sport(S1); voisin(P,P1).
% 11   L'homme qui a un cheval est le voisin de celui qui pratique le baseball.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), boisson(B), animal(A), S=baseball
        :- maison(C1, H1, P1, B1, A1, S1); couleur(C1); habitant(H1); position(P1); boisson(B1); A1=cheval; sport(S1); voisin(P,P1).
% 12   Celui qui pratique le tennis boit de la bière.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), B=biere, animal(A) :- S=tennis.
% 13   L'Allemand joue au hockey.
maison(C, H, P, B, A, S) : couleur(C), H=allemand, position(P), boisson(B), animal(A) :- S=hockey.
% 14   Le Norvégien vit juste à côté de la maison bleue.
%maison(C, H, P, B, A, S) : couleur(C), H=norvegien, position(P), boisson(B), animal(A), sport(S)
 %       :- maison(C1, H1, P1, B1, A1, S1); C1=bleue; habitant(H1); position(P1); boisson(B1); animal(A1); sport(S1); voisin(P,P1).
% 15   L'homme qui joue au volley a un voisin qui boit de l'eau.
maison(C, H, P, B, A, S) : couleur(C), habitant(H), position(P), boisson(B), animal(A), S=volley
        :- maison(C1, H1, P1, B1, A1, S1); couleur(C1); habitant(H1); position(P1); B1=eau; animal(A1); sport(S1); voisin(P,P1).

% Relations
voisin(X,Y) :- 1{ X-1=Y; X+1=Y }1; position(X); position(Y).
estaGauche(X,Y) :- X-1=Y; position(X); position(Y).

% Contraintes

% Sortie
#show.
#show maison/6.
