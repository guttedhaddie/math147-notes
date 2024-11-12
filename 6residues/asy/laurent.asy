settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(120);

path t=shift((1,0))*unitcircle;
path l=scale(2)*unitcircle;
real r=0.06;
path c=scale(r)*unitcircle;

fill(l,lightblue+opacity(0.5));
fill(t,lightgreen+opacity(0.5));
unfill(c);
//draw(c,blue);

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