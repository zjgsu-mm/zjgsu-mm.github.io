size(300,300);

void f(bool has_source) {
  arrowbar arrtype = None;
  pair ptoff = (0, 0);
  pair[] x = new pair[4];
  pair[] y = new pair[6];
  pair s = (-5, 5);
  pair t = (15, 7);

  if (has_source) {
    ptoff = (20, 0);
    s = s + ptoff;
    t = t + ptoff;
    arrtype = Arrow;
  }


  for (int i = 0; i < 4; ++i)
    x[i] = (0, 10-3*i) + ptoff;

  for (int i = 0; i < 6; ++i)
    y[i] = (10, 10-2*i) + ptoff;



  path[] p = {x[0]--y[0], x[0]--y[1], x[0]--y[3], x[0]--y[4], x[1]--y[2], x[1]--y[5], x[2]--y[0], x[2]--y[2], x[3]--y[0], x[3]--y[2] };

  for (path tmp : p)
    draw(tmp, blue, arrtype);

  if (has_source) {
    for (pair tmp : x) {
      draw(s--tmp, blue, arrtype);
      label("1", s--tmp, N);
    }
    for (pair tmp : y) {
      draw(tmp--t, blue, arrtype);
      label("1", tmp--t, N);
    }

    dot(s, red);
    label("s", s, W);
    dot(t, red);
    label("t", t, E);    
  }

  /* Draw x point */
  for (int i = 0; i < 4; ++i) {
    dot(x[i], red);
    label("x"+string(i+1), x[i], N);
  }

  /* Draw y point */
  for (int i = 0; i < 6; ++i) {
    dot(y[i], red);
    label("y"+string(i+1), y[i], N);
  }  
}

f(false);

f(true);
