quicksort([X],[X]).
quicksort([X|Xs],Ys) :-
  quicksort_helper_partition(Xs,X,Left,Right),
  quicksort(Left,Ls),
  quicksort(Right,Rs),
  append(Ls,[X|Rs],Ys).

quicksort_helper_partition([X|Xs],Y,[X|Ls],Rs) :-
  X =< Y,
  quicksort_helper_partition(Xs,Y,Ls,Rs).
quicksort_helper_partition([X|Xs],Y,Ls,[X|Rs]) :-
  X  > Y,
  quicksort_helper_partition(Xs,Y,Ls,Rs).
quicksort_helper_partition([],_,[],[]).
