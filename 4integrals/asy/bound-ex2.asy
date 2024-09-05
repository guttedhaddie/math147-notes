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

real r=0.5;

draw(Label("$C_r$",Relative(0.45)),shift((1,0))*scale(r)*unitcircle,heavygreen,Arrow(Relative(0.45)));


xaxis(-1.1,1+1.1r,red);
yaxis(-1.1r,1.1r,red);
xtick(Label("$1$",align=S),1,S,red);
xtick(Label("$-1$",align=S),-1,S,red);

dot((1,0),heavygreen);
dot((-1,0),heavygreen);

