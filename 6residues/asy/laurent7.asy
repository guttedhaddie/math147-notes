settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

path l=scale(2)*unitcircle;

fill(l,lightblue+opacity(0.5));

draw(Label("$C$",Relative(0.17)),unitcircle,heavygreen+linewidth(1),Arrow(Relative(0.17)));

xaxis(-2,2,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis(-2,2,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$-2i$",align=W),-2,W,red);


dot((2,0),white);
dot((2,0),UnFill);
dot((0,0),white);
dot((0,0),UnFill);