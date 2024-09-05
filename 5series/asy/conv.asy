settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

//pair w=0.7*dir(70);

real r=0.8;
real de=0.3;

pair z1=r*dir(20);
pair z=0.55*dir(80);

fill(unitcircle,lightblue+opacity(0.3));
//draw(Label("$C$",Relative(0.3)),shift(z1)*scale(de)*unitcircle,red,Arrow(Relative(0.3)));

fill(scale(r)*unitcircle,red+opacity(0.2));

draw("$R_0$",(0,0)--dir(160),dashed+blue);
//draw("$\delta$",z1+de*dir(45)--z1,dashed+red);


dot("$z_0$",(0,0),SW);
dot("$z_1$",z1,SW);
dot("$z$",z,W,red);