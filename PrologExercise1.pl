%Счастливый билет 

%Номер автобусного билета содержит 6 цифр. Назовём билет обобщенно счастливым, если расстановкой между его первыми 
%тремя цифрами и последними тремя цифрами всевозможных арифметических операций и скобок можно получить два выражения с одинаковыми значениями.

%Необходимо:
%1. Описать предикат, проверяющий, является ли заданный билет обобщенно счастливым
%2. Для билета, являющегося обобщенно счастливым, вывести все значения соответствующих выражений.



calculate([X,Y,Z], Op1, Op2, Res, View):-
    Res1 =..[Op1, Y, Z],
    View =..[Op2, Res1, X],
    Res is View.
lucky([X,Y,Z,D,E,F]):-
    member(Op1, [+,-,*,/]),
    member(Op2, [+,-,*,/]),
    member(Op3, [+,-,*,/]),
    member(Op4, [+,-,*,/]),
    calculate([X,Y,Z], Op1, Op2, Res1, View1),
    calculate([D,E,F], Op3, Op4, Res2, View2),
    Res1 =:= Res2,
    write("lucky"),
    nl,
    write(View1),
    nl,
    write(View2).
