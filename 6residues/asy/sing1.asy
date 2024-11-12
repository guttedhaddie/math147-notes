settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(380);


xaxis(red,RightTicks(new real[]{-1,0,1}));
xtick(Label("$\frac 12$",align=S),0.5,S,red);
xtick(Label("$-\frac 12$",align=S),-0.5,S,red);
xtick(Label("$\frac 13$",align=S),1/3,S,red);
xtick(Label("$-\frac 13$",align=S),-1/3,S,red);

void sing(int n){
	real ep=1/((n+1)^2);
	fill(shift((1/n,0))*scale(ep)*unitcircle,lightblue+opacity(0.3));
	fill(shift((1/n,0))*scale(0.02/(n^0.8))*unitcircle,blue);
	fill(shift((-1/n,0))*scale(ep)*unitcircle,lightblue+opacity(0.3));
	fill(shift((-1/n,0))*scale(0.02/(n^0.8))*unitcircle,blue);
	}

for(int k=1; k<=100; ++k){
	sing(k);
	}
	

fill(scale(0.2)*unitcircle,green+opacity(0.3));
draw("$R$",(0,0)--0.2*dir(45),NW,heavygreen);
draw("$R_1$",(1,0)+0.25*dir(35)--(1,0),blue);
draw("$R_{-1}$",(-1,0)+0.25*dir(35)--(-1,0),blue);

dotfactor=8;
dot((0,0),heavygreen);