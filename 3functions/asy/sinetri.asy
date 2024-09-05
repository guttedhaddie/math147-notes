settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(130);

real R=1;

pair P=(sqrt(16-pi^2),pi);

draw("$\frac 14\sqrt{16-\pi^2}$",(0,0)--(P.x,0));
draw("$\frac\pi 4$",(P.x,0)--P);
draw("$1$",P--(0,0));

draw("$\Theta$",arc((0,0),(0.35,0),0.35unit(P)));
