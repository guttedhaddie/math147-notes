settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(80,0);

path p=(0,0){NE}..(0,1)..(1,2){NE};
path q=(1,2){S}..(1,1.2)..(0,0){W};

draw("$C_1$",p,Arrow(Relative(0.5)));
draw("$C_2$",q,Arrow(Relative(0.5)));

dot("$z_0$",(0,0),W);
dot("$z_1$",(1,2),E);
