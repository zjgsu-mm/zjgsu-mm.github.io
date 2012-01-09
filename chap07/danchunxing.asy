size(300, 300);

pair orig = (0, 0);
pair ymax = (0, 45);
pair xmax = (45, 0);
pair A = orig;
pair B = (24, 0);
pair C = (12, 15);
pair D = (0, 23);


fill(A--B--C--D--cycle, palegreen);

draw(orig--xmax, Arrow);
label("$x_1$", xmax, E);

draw(orig--ymax, Arrow);
label("$x_2$", ymax, N);


// Draw lines
draw((-3, 25)--(36, -1), linewidth(1));
label("$20x_1 + 30x_2 \le 690$", (-3, 25)--(36, -1), Relative((-5,25)));

draw((-4, 35)--(26, -2.5), linewidth(1));
label("$5x_1 + 4x_2 \le 120$", (-4, 35)--(26, -2.5), Relative((-10,-10)));

draw((3, 22.5)--(21, 7), linewidth(1)+dashed);

draw((-2, 73/3.0)--(-4.5, 20), Arrow);
label("$y_1$", (-2, 73/3.0)--(-4.5, 20), SW*4);

draw((-2, 32.5)--(-5, 30), Arrow);
label("$y_2$", (-2, 32.5)--(-5, 30), SW*4);


dot("$A(0,0)$", A, S);

dot("$B(24, 0)$", B, SW);

dot("$C(12, 15)$", C, SW);

dot("$D(0, 23)$", D, S*5, red);

dot(Label, (0, 30), NE);
dot(Label, (34.5, 0), SW);






// fill((0.1,0.5)--(0.9,0.5)--(0.9, 0.98)--(0.1, 0.98)--cycle, palered);
// fill((0.1,0.5)--(0.9,0.5)--(0.9, 0.02)--(0.1, 0.02)--cycle, paleblue);

// draw((0,0.5)--(1,0.5), Arrow);
// label("$x_1$", (0.95,0.5), S);

// draw((0.5,0)--(0.5,1), Arrow);
// label("$x_2$", (0.4,1), S);

// draw((0.1,0.5)--(0.9,0.5), red+linewidth(2));
// label("$x_1 = 0$", (0.6, 0.55));
// label("$x_1 > 0$", (0.6, 0.8));
// label("$x_1 < 0$", (0.6, 0.2));


