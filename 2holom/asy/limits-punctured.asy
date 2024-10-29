settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");

import graph;


size(0,60);

pair P=2+I;
pair Q=0.75+0.7I;
real del=0.5abs(Q-P);

dot("$2+i$",P,SE,NoFill);

filldraw(shift(Q)*scale(del)*unitcircle,green+opacity(0.5),dashed);

draw("$\delta$",Q+0.5(P-Q)--Q,dashed);
dot("$z_0$",Q,SW);

xaxis("$x$",-0.2,red);
yaxis("$iy$",-0.2,1.35,red);
	