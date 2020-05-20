/*Gemaakt door Youssra Outelli 500756021*/

/* Facts */
female(youssra).
female(hanane).
female(sara).
female(mina).
female(fatima).
female(alinah).
female(maysa).
female(amany).
female(aicha).
female(esra).
female(fadma).
female(rakia).


male(hassan).
male(mohamed).
male(amir).
male(noah).
male(novel).
male(imran).
male(nour).
male(reda).
male(houssein).
male(mbark).
male(ali).
male(ahmed).
male(mohamed2).


parent(fadma, mohamed).
parent(fadma, ali).
parent(fadma, ahmed).
parent(mbark, mohamed).
parent(mbark, ali).
parent(mbark, ahmed).

parent(houssein, aicha).
parent(houssein, mohamed2).
parent(rakia, aicha).
parent(rakia, mohamed2).

parent(mohamed, youssra).
parent(mohamed, fatima).
parent(mohamed, mina).
parent(mohamed, sara).
parent(mohamed, hanane).
parent(mohamed, hassan).
parent(aicha, youssra).
parent(aicha, fatima).
parent(aicha, mina).
parent(aicha, sara).
parent(aicha, hanane).
parent(aicha, hassan).

parent(fatima, amir).
parent(fatima, alinah).
parent(nour, amir).
parent(nour, alinah).

parent(sara, maysa).
parent(sara, amany).
parent(reda, maysa).
parent(reda, amany).

parent(mina, noah).
parent(mina, novel).
parent(imran, noah).
parent(imran, novel).

married(fadma, mbark).
married(mbark, fadma).

married(rakia, houssein).
married(houssein, rakia).

married(mohamed, aicha).
married(aicha, mohamed).

married(reda, sara).
married(sara, reda).

married(nour, fatima).
married(fatima, nour).

married(mina, imran).
married(imran, mina).

married(hassan, esra).
married(esra, hassan).

 
/* Rules */
husband(X, Y):- 
    male(Y),
    married(X, Y).

wife(X, Y):- 
    female(Y),
    married(X, Y).

father(X, Y):- 
    male(Y),
    parent(X, Y).

mother(X, Y):- 
    female(Y),
    parent(X, Y).

child(X, Y):- 
    parent(X, Y).


son(X, Y):- 
    male(Y),
    parent(X, Y).

daughter(X, Y):- 
    female(Y),
    parent(Y, X).


sibling(X, Y):-
    parent(X, Z),
    parent(Y, Z), 
    X \= Y.

brother(X, Y):- 
    male(Y),
    sibling(X, Y), 
    X \= Y.

sister(X, Y):- 
    female(Y),
    sibling(X, Y),
    X \= Y.

uncle(X, Y):-
    brother(X, Z),
    parent(Z, Y).

aunt(X, Y):-
    sister(X, Z),
    parent(Z, Y).

grandmother(X,Y) :- 
    mother(X,Z), 
    parent(Z,Y).

grandfather(X,Y) :- 
    father(X,Z), 
    parent(Z,Y).

