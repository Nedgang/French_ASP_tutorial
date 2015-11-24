#L'Answer Set Programming (ASP), du comment ça fonctionne.
PICARD DRUET David
Quand ça sortira


##En préambule
Ce document ne prétend pas à être exhaustif, ni même complet au sujet d'ASP. Son objectif est de permettre d'apprendre à utiliser, le plus aisément possible et en langue française, l'ASP et ses outils dédiés. Ceux utilisés ici sont développés par l'Université de Potsdam, et pour de plus amples informations, et la documentation complète (en anglais), allez voir directement sur la page du [projet](http://potassco.sourceforge.net)


##De quoi donc est ce qu'on parle?
###Généralitées
L'idée de base d'ASP est de permettre ce qu'on appelle la **programmation par ensembles-réponses** (= answer set programming). C'est à dire que au lieu de décrire une procédure, on vas décrire des relations. Le problème est modélisé par un ensemble de règles, et non plus par un algorithme. C'est ce qu'on appelle une approche déclarative. 

A partir de la modélisation écrite en langage logique, un premier outil, le *grounder* va créer des formules booléennes. Ces formules vont être utilisées par le *solver*, qui va rechercher l'ensemble des solutions possibles.

Le grounder d'ASP utilisé ici est appelé *gringo* et son solveur est *clasp*. Un troisième outil *clingo*, combine les fonctionnalités des deux. Ces trois outils sont codés en C++ et sont publiés sous la GNU General Public License, par l'Université de Potsdam.

###À quoi est ce que ça peut bien servir?


##Prérequis
### Résumé
Mis à part les indispensables solver et grounder, il n'y a besoin que d'un éditeur de texte. Je sais, petit canaillou, que tu préfererais probablement un programme qui ai tout, mais là, faut bosser à l'ancienne, avec la console. Il n'y a en effet à ma connaissance aucun IDE dédié. Je précise tout de suite que je ne travaille que sous Linux, et que par conséquent, tout ce qui vas suivre est dédié au travail sur cet OS.

### L'éditeur de texte
N'importe quel éditeur de texte peut faire l'affaire, mais je recommande d'utiliser Vim (ou NeoVim, les 2 fonctionnent). En effet, il est quand même bien plus agréable de travailler avec une coloration syntaxique, et la seule que je connaisse fonctionne sous Vim et NeoVim. Celle ci est encore en bêta, mais est dèjà très utilisable. Elle est dispo [ICI](https://github.com/Aluriak/ASP.vim).

##Principes

##Le language

##Ressources supplémentaires

##Liens divers et variés

