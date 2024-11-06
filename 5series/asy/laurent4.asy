settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(110);

pair w=3dir(70);

real R=4;
real r=1;
real Rb=3.7;
real ra=1.5;
real rg=0.6;

fill(scale(Rb)*unitcircle,grey+opacity(0.7));
unfill(scale(ra)*unitcircle);
unfill(shift(w)*scale(rg)*unitcircle);
fill(scale(R)*unitcircle,lightblue+opacity(0.5));
unfill(scale(r)*unitcircle);
//draw(scale(r)*unitcircle,lightblue+dashed);

draw(Label("$\gamma$",Relative(0.9)),shift(w)*scale(rg)*unitcircle,heavygreen,Arrow(Relative(0.95)));
draw(Label("$\alpha$",Relative(0.02)),scale(ra)*unitcircle,red,Arrow(Relative(0.1)));
draw(Label("$\beta$",Relative(0.35)),scale(Rb)*unitcircle,orange,Arrow(Relative(0.35)));

dot("$w$",w,W);
dot("$0$",(0,0),SW);