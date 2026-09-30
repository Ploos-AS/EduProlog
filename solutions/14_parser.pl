command(move(D))-->[move],direction(D).
command(take(O))-->[take,O].
command(look)-->[look].
direction(north)-->[north].
direction(south)-->[south].
direction(east)-->[east].
direction(west)-->[west].
query(query(objects,color(C)))-->[show,C,objects].
object(ball,red). object(cube,blue). object(book,red).
evaluate(query(objects,color(C)),Os):-findall(O,object(O,C),Os).
