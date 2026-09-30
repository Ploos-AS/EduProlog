% EduProlog module 13 — definite clause grammars

sentence --> noun_phrase, verb_phrase.

noun_phrase --> determiner, noun.
noun_phrase --> determiner, adjective, noun.

verb_phrase --> verb, noun_phrase.

determiner --> [the].
adjective --> [small].
adjective --> [quick].
noun --> [cat].
noun --> [mouse].
noun --> [robot].
verb --> [chases].
verb --> [sees].

command(move(Direction)) --> [move], direction(Direction).
command(take(Object)) --> [take, Object].

direction(north) --> [north].
direction(south) --> [south].
direction(east) --> [east].
direction(west) --> [west].
