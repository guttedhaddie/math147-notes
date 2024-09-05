settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,120);




xaxis(-1.1,1.1,red,RightTicks(new real[]{-1,0,1}));
yaxis(-0.1,2.1,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$i$",align=W),1,W,red);
filldraw(shift((0,1))*unitcircle,lightblue+opacity(0.3),lightblue);

draw("$1$",(0,1)--(0,1)+dir(50),dashed+blue);

dot((0,1),blue);

path c=scale(0.04)*unitcircle;
unfill(c);
draw(c,lightblue);