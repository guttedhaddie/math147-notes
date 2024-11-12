settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

real R=4;
real r=2;

fill(box((-1.1R,-1.1R),(1.1R,1.1R)),lightred+white);

fill(scale(R)*unitcircle,lightblue+white);
fill(scale(r)*unitcircle,0.2magenta+0.8white);
draw(scale(r)*unitcircle,magenta+linewidth(1));
draw(scale(R)*unitcircle,red+linewidth(1));


draw("$R_1$",(0,0)--r*dir(60),magenta);
draw(Label("$R_2$",Relative(0.7),align=dir(210)),(0,0)--R*dir(120),red);

dot("$z_0$",(0,0),SW);