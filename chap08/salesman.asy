size(300, 300);

pair[] p = {(2.5, 4), (0, 3), (0, 1), (2.5, 0), (4, 2)};
string[] l = {"a", "b", "c", "d", "e"};
int[] w = {1, 9, 3, 3, 2, 6, 5, 4, 7, 8};

int k=0;
for (int i=0; i<5; ++i){
  for (int j=i+1; j<5; ++j){
    draw(p[i]--p[j], blue);
    label(string(w[k]), p[i]--p[j], N);
    ++k;
  }
}


for (int i=0; i<5; ++i) {
  dot(p[i], red);
  if (i>=2 && i<=3)
    label(l[i], p[i], S);
  else
    label(l[i], p[i], N);
}
