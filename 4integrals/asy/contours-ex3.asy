settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,135);

pair z(real t){return (cos(t),sin(t));}

draw(graph(z,0,2pi),blue,Arrow(Relative(0.2)));

dot(1,blue);

xaxis(-1.2,1.2,red,RightTicks(new real[]{-1,1}));
yaxis(-1.2,1.2,red);

//ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);