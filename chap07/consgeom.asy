size(300, 300);

draw((0,0)--(1,0), Arrow);
label("$x_1$", (0.95,0), S);

draw((0.5,0)--(0.5,1), Arrow);
label("$x_2$", (0.4,1), S);

draw((0.1,0.5)--(0.9,0.5), red+linewidth(2));
label("$x_1 = 0$", (0.6, 0.55));
label("$x_1 > 0$", (0.6, 0.8));
label("$x_1 < 0$", (0.6, 0.2));


