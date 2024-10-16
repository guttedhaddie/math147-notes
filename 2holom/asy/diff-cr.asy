settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

dot("$z_0$",(0,0),SE,NoFill);
real r=0.1;

draw("$\Delta y=0$",(1,0)--(r,0),blue+dashed,Arrow);
draw((-1,0)--(-r,0),blue+dashed,Arrow);
draw("$\Delta x=0$",(0,1)--(0,r),heavygreen+dashed,Arrow);
draw((0,-1)--(0,-r),heavygreen+dashed,Arrow);