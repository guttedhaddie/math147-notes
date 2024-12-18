settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,130);

path p=(-1,0)..(0,-1)..(1,0)..(1.5,2)..(1,2.3)..cycle;

fill(p,lightblue+opacity(0.3));
draw(Label("$C$",Relative(0.4)),p,Arrow(Relative(0.4)));

real r=0.7;
unfill(scale(r)*unitcircle);
draw(Label("$C_r$",Relative(0.15)),scale(r)*unitcircle,red,Arrow(Relative(0.15)));

draw(Label("$r$",align=NE),(0,0)--r*dir(145),dashed);
draw(scale(0.8)*unitcircle,heavygreen+dashed);
draw("$\delta$",(0,0)--0.8dir(-10),dashed+heavygreen);

label("$D$",(1,1.4));
dot("$z_0$",(0,0),SW);

