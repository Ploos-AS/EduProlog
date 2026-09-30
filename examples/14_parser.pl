% EduProlog module 14 — parsing into semantic structures

command(move(Direction)) --> [move], direction(Direction).
command(take(Object)) --> [take, Object].
command(look) --> [look].

direction(north) --> [north].
direction(south) --> [south].
direction(east) --> [east].
direction(west) --> [west].

query(query(objects, color(Color))) -->
    [show, Color, objects].

object(ball, red).
object(cube, blue).
object(book, red).

evaluate(query(objects, color(Color)), Objects) :-
    findall(Object, object(Object, Color), Objects).
