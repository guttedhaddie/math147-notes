settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

real R=1.1;
real r=0.5;
fill(shift((1,0))*scale(R)*unitcircle,lightblue+opacity(0.3));
unfill(shift((1,0))*scale(r)*unitcircle);
draw(Label("$C_{r_1}$",Relative(0.15),align=NE),shift((1,0))*scale(R)*unitcircle,Arrow(Relative(0.18)));
draw(Label("$C_{r_2}$",Relative(0.15),align=SW),shift((1,0))*scale(r)*unitcircle,Arrow(Relative(0.18)));

//draw(Label("$r$",align=NE),(0,0)--r*dir(145),dashed);

//label("$D$",(1.8,0.8));

xaxis(red,RightTicks(new real[]{1}));
yaxis(red);