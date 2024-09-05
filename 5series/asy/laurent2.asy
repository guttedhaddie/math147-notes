settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100);

fill(scale(2.5)*unitcircle,heavygreen+opacity(0.5));
unfill(unitcircle);
draw("$R_1$",(0,0)--dir(20),dashed);
draw("$R_2$",(0,0)--2.5*dir(110),dashed);

path c=1.3dir(0)..2dir(90)..1.7dir(180)..1.4dir(225)..2dir(270)..2dir(315)..cycle;
draw("$C$",c,red,Arrow(Relative(0.1)));

dot("$z_0$",(0,0),SW);