%% word_translate.pl
%% Sam Cooney
%% Program takes in an input and outputs a response

change(you, i).
change(did, no).
change(are,[am, not]).
change(eat, ate).
change(walk, walked).
change(sit, sat).
change(were, was).
change(said, [did, not, say]).
change(that, this).
change(took, [did, not, take]).
change(X, X).

alter([],[]).
alter([H|T], [X|Y]) :-
	change(H,X),
	alter(T,Y).