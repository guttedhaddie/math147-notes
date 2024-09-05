settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150,0);

real R=2.7;

path CR=arc((0,0),R,0,180);

pair z1=2dir(45);
pair z2=2dir(135);
pair z3=-z1;
pair z4=-z2;
	
draw(Label("$C_R$",Relative(0.45)),CR,blue,ArcArrow(Relative(0.45)));
draw((-R,0)--(R,0),heavygreen,Arrow(Relative(0.6)));

xaxis(-1.1R,1.1R,red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,1.1R,red);

xtick(Label("$R$",align=S),R,S,red);
xtick(Label("$-R$",align=S),-R,S,red);
ytick(Label("$iR$",align=NW),R,W,red);
ytick(Label("$i$",align=W),1,W,red);
//ytick(Label("$-i$",align=W),-1,W,red);
ytick(Label("$2i$",align=W),2,W,red);
//ytick(Label("$-2i$",align=W),-2,W,red);
dot("$2\zeta$",z1,SE);
dot("$2\zeta^3$",z2,SW);
//dot("$-2\zeta$",z3,SW);
//dot("$-2\zeta^3$",z4,SE);