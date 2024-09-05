settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170,60,IgnoreAspect);

pair p=(0,0);
pair q=(0.9,2.2);

//path z=p{dir(80)}..(2,2.5){dir(-10)}..q;

path K=(-1,0)..(2,3)..(5,1)..(4,0)..cycle;

fill(K,blue+opacity(0.2));

draw(Label("$\textcolor{red}{f=g} \implies \textcolor{blue}{f=g}$"),p--q,red);

label("$D$",(-0.3,1),blue);
dot(p);
dot(q);
