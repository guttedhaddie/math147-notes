settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120,0);


real r=0.5;

pair f(real t){return (t,4sin(t));}
pair N(real t){return unit((-4cos(t),1));}
pair T(real t){return f(t)+r*N(t);}
pair B(real t){return f(t)-r*N(t);}

real R=15;

path b=box((-R,-R),(R,R));
fill(b,lightblue+opacity(0.3));
draw(scale(0.5*R)*unitcircle,heavygreen);


path c=rotate(28,(0,0))*(graph(T,2R,0)--arc((0,0),T(0),B(0))--graph(B,0,2R));
fill(c--cycle,white);

draw(c,dashed);
clip(b);

draw((-1.1R,0)--(1.1R,0),red);
draw((0,-1.1R)--(0,1.1R),red);

xaxis(-1.1R,1.1R,red);
yaxis(-1.1R,1.1R,red);

//label("An Esoteric Branch",(0,-1.3R));
