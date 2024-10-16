settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100);


draw(Label("$C_2$",align=W,Relative(0.65)),(0,0)..(1,-0.2){dir(-5)}..(1.2,0){dir(95)}..(1,2),blue,Arrow(Relative(0.65)));

xaxis(0,1.4,red,RightTicks(new real[]{1}));
yaxis(-0.3,2.1,red);
//xtick(Label("$1$",align=S),1,S,red);
//xtick(Label("$-1$",align=S),-1,S,red);
ytick(Label("$0$",align=W),0,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);

dot((0,0),blue);
dot((1,2),blue);
dot((1,0),heavygreen);

