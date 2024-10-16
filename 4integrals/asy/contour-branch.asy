settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(0,140);

real al=60;

real R=1.3;

path b=box((-R,-R),(R,R));
//fill(b,lightblue+opacity(0.3));

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,lightblue+opacity(0.5));

draw(c,dashed);
clip(b);

draw((-0.5R,0)--(0.5R,0),red);
draw((0,-0.5R)--(0,0.5R),red);

pair B=1+I;
pair A=I;


path C=A..(-0.5+0I)..(0.5-I/2)..(-I)..(0.5,0)..B;

draw("$C$",C,heavygreen,Arrow(Relative(0.8)));

dot("$i$",A);
dot("$1+i$",B,dir(75));

draw("$\frac\pi 3$",arc((0,0),0.25,0,al),ArcArrow);

xaxis(-0.7R,1R,red);
yaxis(-1R,1R,red);

//label("$\alpha$-Branch",(0,-1.3R));
