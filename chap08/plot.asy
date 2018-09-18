import graph;

size(300,300);

pair A = (0, 0);
pair B = (2, 5);
pair C = (3, 1);
pair D = (6, 4);
pair E = (8, 10);
pair F = (10, 13);
pair G = (13, 11);

xaxis("$x$",RightTicks(Label(align=left)), Arrow);
yaxis("$y$",RightTicks, Arrow);

draw(A--B, blue);
draw(B--C, blue);
draw(C--F, blue);
draw(F--G, blue);

dot(A, red);
dot(B, red);
dot(C, red);
dot(D, red);
dot(E, red);
dot(F, red);
dot(G, red);

