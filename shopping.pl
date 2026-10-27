shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    choice(Choice, Basket).

choice(d, Basket) :-
    display(Basket),
    menu(Basket).

choice(a, Basket) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    write('The item has been added'), nl,
    menu([Item|Basket]).

choice(e, _Basket).

display([]).
display([H|T]) :-
    write(H), nl,
    display(T).
