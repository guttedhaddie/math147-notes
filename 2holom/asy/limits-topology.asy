settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150,70,IgnoreAspect);

pair p=(0,0);
pair q=(4,1);

path z=p{dir(80)}..(2,2.2){dir(-10)}..q;

path K=(-1,0)..(2,3)..(5,1)..(4,0)..(2,2)..(0,-1)..cycle;

filldraw(K,blue+opacity(0.3),blue);

draw(Label("$z(t)$",Relative(0.75),align=0.5NE),z,red,Arrow(Relative(0.5)));

label("$K$",(-0.2,1),blue);
dot("$p$",p,SW);
dot("$q$",q,SW);

