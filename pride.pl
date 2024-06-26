vybor_elementov(_, 0, []).
vybor_elementov([H|T], N, [H|Resul]) :-
    N > 0,
    M is N - 1,
    vybor_elementov(T, M, Resul).

spisok([l,g,b,t,q,+]).

zapros(N) :-
    spisok(List),
    vybor_elementov(List, N, Select),
    format('vybor_elementov: ~w', [Select]).