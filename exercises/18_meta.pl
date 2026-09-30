% Exercise 18 — meta-programming
rule(parent(anna,ola),true).
rule(parent(ola,liv),true).
rule(grandparent(X,Z),(parent(X,Y),parent(Y,Z))).
% TODO: solve/1 supporting true, conjunction and rule/2.
% TODO: prove/2 returning a structured proof tree.
