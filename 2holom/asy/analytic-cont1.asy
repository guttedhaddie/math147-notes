settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(190);

picture pic;

real al=180;
real ep=20;

real R=1.1;

path b=box((-R,-R),(R,R));
fill(b,lightblue+opacity(0.3));

real r=0.03;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,white);

pair z=expi(-3*pi/4);

draw((0,0)--z,heavygreen);
draw(Label("$-\frac{3\pi}4$",align=0.1SE),arc((0,0),0.15,0,-135),heavygreen,ArcArrow);
dot("$w$",z,SE);

fill(box((0,0),(R,R)),heavygreen+opacity(0.15));

draw(c,dashed);
clip(b);

draw((-1.05R,0)--(1.05R,0),red);
draw((0,-1.05R)--(0,1.05R),red);

xaxis(-1.05R,1.05R,red);
yaxis(-1.05R,1.05R,red);

label("$G$",(-0.5,0.5),blue);
label("$D$",(0.5,0.5),heavygreen);

path bb=box((0,-R),(R,R));
fill(pic,bb,lightblue+opacity(0.3));

xaxis(pic,-1.05R,1.05R,red);
yaxis(pic,-1.05R,1.05R,red);

fill(pic,(0,0)--(R,R)--(R,0)--cycle,heavygreen+opacity(0.15));

draw(pic,(0,-R)..(0,R),dashed);

pair zz=expi(-3*pi/8);

draw(pic,(0,0)--zz,heavygreen);
draw(pic,Label("$-\frac{3\pi}8$",align=0.1SE),arc((0,0),0.15,0,-135/2),heavygreen,ArcArrow);
dot(pic,"$g(w)$",zz,NE);
label(pic,"$g(D)$",(0.8,0.3),heavygreen);

add(shift((2.4,0))*pic);

draw(Label("$g$",align=N),(1.1R,0.3){E}..(2R,0.1),blue,Arrow);


