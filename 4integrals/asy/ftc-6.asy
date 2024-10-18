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

real R=1.15;

path b=box((-2R,-R),(2R,R));

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
filldraw(shift((-1,0))*c--cycle,lightblue+opacity(0.5),black+dashed);

filldraw(shift((1,0))*rotate(180,(0,0))*c--cycle,lightblue+opacity(0.5),black+dashed);
clip(b);

draw((-2.05R,0)--(2.05R,0),red);
//draw((0,-0.8R)--(0,2R),red);

xaxis(-2,2,red,RightTicks(new real[]{-1,1}));
yaxis(red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$2i$",align=W),2,W,red);


real r=0.85;
real ep=4;
path C=arc((1,0),r,ep,360-ep);

draw(Label("$C_r$",Relative(0.1)),C,heavygreen,Arrow(Relative(0.2)));

dot((1+r,0),heavygreen,UnFill);

draw((0,0){dir(80)}..(1,2),blue,Arrow(Relative(0.6)));
dot((0,0),blue);
dot((1,2),blue);