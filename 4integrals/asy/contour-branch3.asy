settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}

\def\vv{\mathbf v}
\def\vw{\mathbf w}
\def\twovec#1#2{\begin{pmatrix}#1\\#2\end{pmatrix}}
");
import graph;


size(140);

real al=180;

real ep=20;

real R=1.03;

path b=box((-R,-R),(R,R));
//fill(b,lightblue+opacity(0.3));

real r=0.05;

path c=2R*dir(al)+r*dir(al+90)--arc((0,0),r,al+90,al-90,CCW)--2R*dir(al)-r*dir(al+90);
fill(c--cycle,lightblue+opacity(0.5));

draw(c,dashed);
clip(b);

draw((-R,0)--(R,0),red);
draw((0,0)--(0,R),red);

path C=arc((0,0),1,0,180);

draw(C,heavygreen,Arrow(Relative(0.6)));

label("$C_2$",dir(60),dir(60),heavygreen);

xaxis(-1.1R,1.1R,red);
yaxis(0,1.03R,red);

xtick(Label("$e^{\pi/2}$",align=S),1,S,red);
xtick(Label("$-e^{\pi/2}$",align=S),-1,S,red);
xtick(Label("$0$",align=S),0,S,red);
dot((-1,0),heavygreen);
dot((1,0),heavygreen);
