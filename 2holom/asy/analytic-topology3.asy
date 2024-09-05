settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,50,IgnoreAspect);

pair p=(0,0);
pair q=(0.9,2.2);

path EE=(-1.4,0)..(2,4)..(6,1)..(0,-1.4)..cycle;

path D=(-1,0)..(2,3)..(5,1)..(4,0)..(2,2)..(0,-1)..cycle;

fill(D,blue+opacity(0.3));
fill(shift(-0.2*dir(60))*EE,heavygreen+opacity(0.2));

label("$D$",(0,1),blue);
label("$E$",(2,0),heavygreen);

