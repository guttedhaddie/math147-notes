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

pair z=(1,2);
pair w=z+(0.5,0.2);
real ep=0.66;
path p=(-0.5,0)..(0,-0.5)..(1,0)..(1.8,2)..(1,2.8)..cycle;

filldraw(p,lightblue+opacity(0.5),dashed);
filldraw(shift(z)*scale(ep)*unitcircle,green+opacity(0.5),dashed);

draw((0,0)..(0.5,0.2)..z--w,blue,Arrow(Relative(0.5)));

label("$D$",(-0.1,0.8));
draw("$\delta$",z--z+ep*dir(250),dashed);
dot("$z_0$",(0,0),S);
dot("$z$",z,N);
dot("$w$",w,S);
