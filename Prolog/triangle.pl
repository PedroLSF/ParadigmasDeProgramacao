is_triangle(A, B, C) :- A + B > C, A + C > B, C + B > A.

equilateral(A,A,A,"equilateral") :-
    is_triangle(A, A, A).

isosceles(A,B,C,"isosceles") :-
    (A = B),
    is_triangle(A, B, C).

isosceles(A,B,C,"isosceles") :-
    (A = C),
    is_triangle(A, B, C).

isosceles(A,B,C,"isosceles") :-
    (B = C),
    is_triangle(A, B, C).

scalene(A,B,C,"scalene") :-
    A \= B,
    A \= C,
    B \= C,
    is_triangle(A, B, C).

triangle(A, B, C, Kind) :-
    equilateral(A, B, C, Kind).

triangle(A, B, C, Kind) :-
    isosceles(A, B, C, Kind).

triangle(A, B, C, Kind) :-
    scalene(A, B, C, Kind).
