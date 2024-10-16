settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

real al=180;

real ep=25;

real R=1.15;

path b=box((-R,-R),(R,R));
//fill(b,lightblue+opacity(0.3));

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,lightblue+opacity(0.5));

draw(c,dashed);
clip(b);

draw((-1.05R,0)--(1.05R,0),red);
draw((0,-1.05R)--(0,1.05R),red);



path C=arc((0,0),1,-180+ep,180-ep);

draw(C,heavygreen,Arrow(Relative(0.6)));
path CC=arc((0,0),1,180-ep,180+ep);
draw(CC,heavygreen+dotted);
draw(dir(180+ep)--(0,0)--dir(180-ep),heavygreen+dashed);

label("$C_\epsilon$",dir(50),dir(50),heavygreen);

dot((-1,0),heavygreen);


draw("$\pi-\epsilon$",arc((0,0),0.25,0,180-ep),heavygreen,ArcArrow);

xaxis(-1.05R,1.05R,red);
yaxis(-1.05R,1.0R,red);

//label("$\alpha$-Branch",(0,-1.3R));
