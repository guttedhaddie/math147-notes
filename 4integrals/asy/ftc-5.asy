settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(130);

fill(5dir(0)..3dir(90)..4dir(180)..2dir(270).. cycle,lightgreen);
fill(unitcircle,white);

path p=(-2,0){NE}..(0,2.5)..(2,2){NE};
path q=(-2,0){SE}..(0,-1.5){E}..(2,0)..(4,0){S}..(2,2){N};

draw("$C$",p,blue,Arrow(Relative(0.5)));
draw(Label("$\widetilde C$",Relative(0.4)),q,blue,Arrow(Relative(0.4)));

dot("$z_0$",(-2,0),SW);
dot("$z_1$",(2,2),E);

label("$D$",(-3,1.2),darkgreen);