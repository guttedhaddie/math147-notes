settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(150);

real R=1.7;

path CR=arc((0,0),R,0,72);

pair z1=dir(72-36);
pair z2=dir(144-36);
pair z3=dir(216-36);
pair z4=dir(288-36);
pair z5=dir(-36);
	
draw(Label("$C_R$",Relative(0.45)),CR,blue,ArcArrow(Relative(0.45)));
draw(Label("$C_2$",align=E),R*dir(72)--(0,0),purple,Arrow(Relative(0.6)));
draw(Label("$C_1$",align=SW),(0,0)--R*dir(0),heavygreen,Arrow(Relative(0.6)));

xaxis(-1.2,1.2R,red,RightTicks(new real[]{-1,0,1}));
yaxis(0,1.1R,red);

xtick(Label("$R$",align=S),R,S,red);
//xtick(Label("$-R$",align=S),-R,S,red);
ytick(Label("$iR$",align=NW),R,W,red);
ytick(Label("$i$",align=E),1,W,red);
//ytick(Label("$-i$",align=E),-1,W,red);
dot("$\zeta$",z1,z1);
dot("$\zeta\omega$",z2,z2);
dot("$\zeta\omega^2$",z3,N);
//dot("$\zeta\omega^3$",z4,W);
//dot("$\zeta\omega^4$",z5,z5);

dot("$R\omega$",R*dir(72),dir(72),blue);