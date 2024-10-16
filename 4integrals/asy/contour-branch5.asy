settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120,0);

real al=180;

real R=1.3;

path b=box((-R,-R),(R,R));
//fill(b,lightblue+opacity(0.3));

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,lightblue+opacity(0.5));

draw(c,dashed);
clip(b);

draw((-R,0)--(R,0),red);
draw((0,-0.6R)--(0,R),red);

pair B=I;
pair A=1;


path C=A..(0.75-0.25I){SW}..(0.75-0.75I){E}..(0.75-0.25I){NW}..(0+I/3)..B;

draw(Label("$C\checkmark$",Relative(0.75)),C,heavygreen,Arrow(Relative(0.8)));

path C=A{dir(200)}..(-0.5-0.25I)..B;

draw(Label("No!",Relative(0.75),align=NW),C,lightblue+dashed,Arrow(Relative(0.8)));

dot("$1$",A,NE);
dot("$i$",B,NE);

xaxis(-R,R,red);
yaxis(-0.6R,R,red);

//label("$\alpha$-Branch",(0,-1.3R));
