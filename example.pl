class(sub).
class(car).
class(vehicle).
is_subclass(sub, vehicle).
is_subclass(car, vehicle).
subclass(C1, C2) :- is_subclass(C1, C2).

subclass(C1, C2) :- is_subclass(C1, C3), 
					subclass(C3, C2).

-subclass(C1, C2) :- class(C1),
					 class(C2),
					 not subclass(C1, C2).


