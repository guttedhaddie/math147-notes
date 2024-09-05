settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(110,0);


fill(scale(2.3)*unitcircle,heavygreen+opacity(0.4));
unfill(unitcircle);
fill(unitcircle,lightblue+opacity(0.4));


xaxis(-2.3,2.3,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis(-2.3,2.3,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$-2i$",align=W),-2,W,red);

dot(I);