settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100);


draw(Label("$C_1$",Relative(0.35)),(1,0)--(0,1)--(-1,0),blue,Arrow(Relative(0.35)));

xaxis(-1.1,1.1,red,RightTicks(new real[]{-1,0,1}));
yaxis(0,1.1,red);
//xtick(Label("$1$",align=S),1,S,red);
//xtick(Label("$-1$",align=S),-1,S,red);
ytick(Label("$i$",align=W),1,W,red);

dot((1,0),blue);
dot((-1,0),blue);

