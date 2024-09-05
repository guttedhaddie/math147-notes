settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120,0);

real al=150;

real R=1;

path b=box((-R,-R),(R,R));
fill(b,lightblue+opacity(0.3));
//draw(scale(0.5)*unitcircle,heavygreen);

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,white);

draw(c,dashed);
clip(b);

draw((-1.1R,0)--(1.1R,0),red);
draw((0,-1.1R)--(0,1.1R),red);

draw("$\alpha$",arc((0,0),0.2,0,al),ArcArrow);

xaxis(-1.1R,1.1R,red);
yaxis(-1.1R,1.1R,red);

label("$\alpha$-Branch",(0,-1.3R));
