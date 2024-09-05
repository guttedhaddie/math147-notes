settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(100);


real r=0.85;
real de=0.3;

pair z1=r*dir(20);
pair z=0.55*dir(80);



fill(unitcircle,lightblue+opacity(0.3));

filldraw(scale(r)*unitcircle,green+opacity(0.2),green+opacity(0.8));

draw("$R_0$",(0,0)--dir(210),dashed+blue);

path c=0.6dir(160)..0.6dir(135)..0.7dir(90){E}..0.3dir(90){W}..0.5dir(90)..z1{dir(20-90)}..0.65dir(-30);
draw(Label("$C$",Relative(0.65)),c,blue,Arrow(Relative(0.65)));

draw("$R_1$",(0,0)--z1,dashed+heavygreen);

dot("$z_0$",(0,0),NW);
//dot("$z_1$",z1,SW);