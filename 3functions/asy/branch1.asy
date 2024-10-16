settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120,0);

real R=1;
fill(box((-R,-R),(R,R)),lightblue+opacity(0.3));

real r=0.05;

path c=(-1.1R,-r)--arc((0,0),r,-90,90)--(-1.1R,r);
fill(c--cycle,white);

draw(c,dashed);

draw((-1.1R,0)--(1.1R,0),red);
draw((0,-1.1R)--(0,1.1R),red);
//draw(arc((0,0),(-0.5,-r),(-0.5,r)),heavygreen);

xaxis(-1.1R,1.1R,red);
yaxis(-1.1R,1.1R,red);

label("Principal Branch",(0,-1.3R));
