settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

real modw=0.55;
real RR=0.92;

pair w=modw*dir(31);

real de=0.33;

pair z=0.5*dir(50);

fill(unitcircle,lightblue+opacity(0.3));
fill(shift(w)*scale(de)*unitcircle,red+opacity(0.3));

draw("$R_0$",(0,0)--dir(160),dashed+blue);
draw("$\delta$",w+de*dir(45)--w,dashed+red);

filldraw(scale(RR)*unitcircle,green+opacity(0.1),green+opacity(0.4));
draw("$R_1$",(0,0)--RR*dir(-50),dashed+heavygreen);

dot("$z_0$",(0,0),SW);
dot("$w$",w,SE);
dot("$z$",z,W);