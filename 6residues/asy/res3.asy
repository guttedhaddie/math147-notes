settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(140);

real r=0.1;

path c=scale(4)*unitcircle;
fill(c,lightblue+opacity(0.3));

draw(Label("$C$",Relative(0.4)),c,blue,ArcArrow(Relative(0.4)));

pair[] z={(0,0),(0,3)};
int n=z.length;

for(int k=1; k<=n; ++k){
	unfill(shift(z[k-1])*scale(r)*unitcircle);
	dot("$z_" + (string) k + "$",z[k-1],dir(315),NoFill);
	//draw(Label("$C_" + (string) k + "$",Relative(0.4)),shift(z[k-1])*scale(r)*unitcircle,ArcArrow(Relative(0.4)));
	}
	
unfill(shift((-1,0))*scale(r)*unitcircle);
dot("$z_3$",(-1,0),dir(58),NoFill);

xaxis(-4.5,4.5,red,RightTicks(new real[]{-4,-2,2,4}));
yaxis(red);
ytick(Label("$-2i$",align=W),-2,W,red);
ytick(Label("$-4i$",align=W),-4,W,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$4i$",align=W),4,W,red);
ytick(-1,W,red);
ytick(-3,W,red);
ytick(1,W,red);
ytick(3,W,red);
xtick(1,S,red);
xtick(3,S,red);
xtick(-1,S,red);
xtick(-3,S,red);

path ee=(0,3.5){E}..(1,2.8)..(0,1.5)..(-1.5,0)..(0,-2){E}..(0,0.5)..(-0.5,0)..(0,-1.3){E}..(1,0){N}..(0,1.5){NW}..cycle;

draw(Label("$E$",Relative(0.17),NE),reverse(ee),heavygreen,Arrow(Relative(0.17)));