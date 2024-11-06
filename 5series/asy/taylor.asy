settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

pair w=0.7*dir(70);

real r=0.85;

pair z=r*dir(20);

fill(unitcircle,lightblue+opacity(0.3));

dot("$0$",(0,0),SW,blue);
draw("$R$",(0,0)--dir(160),dashed);
draw("$r$",(0,0)--z,dashed);

draw(Label("$C_r$",Relative(0.6),align=NE),scale(r)*unitcircle,blue,Arrow(Relative(0.6)));

dot("$w$",w);
dot("$z$",z);