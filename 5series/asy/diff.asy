settings.tex="pdflatex";


texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(100);

pair w=0.7*dir(70);

real r=0.5;
real de=0.3;

pair z1=r*dir(20);
pair z=z1+de*dir(145);

fill(unitcircle,lightblue+opacity(0.3));
draw(Label("$C$",Relative(0.3)),shift(z1)*scale(de)*unitcircle,red,Arrow(Relative(0.3)));

draw("$R_0$",(0,0)--dir(160),dashed+blue);
//draw("$\delta$",z1+de*dir(45)--z1,dashed+red);


dot("$z_0$",(0,0),SW);
dot("$w$",z1,SE);
dot("$z$",z,W);