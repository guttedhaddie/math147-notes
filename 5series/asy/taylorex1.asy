settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

filldraw(unitcircle,lightblue+opacity(0.3),lightblue+dashed);

draw("$1$",(0,0)--dir(160),dashed+blue);

dot("$0$",(0,0),SW,blue);

xaxis(-1.1,1.1,red,RightTicks(new real[]{-1,1}));
yaxis(-1.1,1.1,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
