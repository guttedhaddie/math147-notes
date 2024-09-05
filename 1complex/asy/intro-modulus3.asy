settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(130);


xaxis(-4.2,4.2,red);
yaxis(-4.2,5,red);

for(int t=-4; t<=4; ++t){
xtick(t,S,red);
ytick(t,W,red);
}

xtick(Label("$4$",align=S),4,S,red);
xtick(Label("$-4$",align=S),-4,S,red);
ytick(Label("$4i$",align=W),4,W,red);
ytick(-2,W,red);
ytick(Label("$-4i$",align=W),-4,W,red);

dotfactor=4;

draw(shift((1,0))*xscale(2)*yscale(sqrt(3))*unitcircle,orange+yellow);
draw((0,0)--(3/2,0.75*sqrt(5))--(2,0),dotted+orange+yellow);
dot((0,0),orange+yellow);
dot((2,0),orange+yellow);

draw(scale(3)*unitcircle,blue);
draw((0,0)--3*expi(2),dotted+blue);
dot((0.0),blue);

draw((2,3)--(2,3)+2*expi(2),dotted+heavygreen);
dot((2,3),heavygreen);
filldraw(shift((2,3))*scale(2)*unitcircle,heavygreen+opacity(0.4),heavygreen+opacity(0.4));
