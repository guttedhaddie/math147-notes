settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(110);

real delta=0.65;

path CR=arc((0,0),delta,180,0,CW);

fill(unitcircle,grey+opacity(0.3));

draw(Label("$C_\delta$",Relative(0.45),align=NW),CR,blue,ArcArrow(Relative(0.45)));

draw("$\delta$",(0,0)--(0,0)+delta*dir(45),blue+dashed);
draw("$\epsilon$",(0,0)--(0,0)+dir(-50),heavygreen+dashed);

dot("$z_0$",(0,0),S);
dot("$z_0+\delta$",(delta,0),S);
dot("$z_0-\delta$",(-delta,0),S);