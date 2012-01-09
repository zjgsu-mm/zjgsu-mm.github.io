size(300,300);

pair x1 = (0, 10);
pair x2 = (0, 7);
pair x3 = (0, 4);
pair x4 = (0, 1);
pair y6 = (10, 0);
pair y5 = (10, 2);
pair y4 = (10, 4);
pair y3 = (10, 6);
pair y2 = (10, 8);
pair y1 = (10, 10);
pair s = (0, 5);
pair t = (10, 7);

dot("x1", x1, red);
dot("x2", x2, red);
dot("x3", x3, red);
dot("x4", x4, red);

dot("y1", y1, red);
dot("y2", y2, red);
dot("y3", y3, red);
dot("y4", y4, red);
dot("y5", y5, red);
dot("y6", y6, red);

draw(x1--y1, blue);
draw(x1--y2, blue);
draw(x1--y4, blue);
draw(x1--y5, blue);
draw(x2--y3, blue);
draw(x2--y6, blue);
draw(x3--y1, blue);
draw(x3--y3, blue);
draw(x4--y1, blue);
draw(x4--y3, blue);

