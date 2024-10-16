settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(80);

filldraw(unitcircle,orange+opacity(0.5),orange);

draw(scale(0.8)*unitcircle,brown,Arrow(Relative(0.1)));

label("$B_0$",1.2dir(40),orange);
label("$C_{r}$",0.6*dir(30),brown);

dot("$z_0$",(0,0),SE);