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

real r=0.25;

path c=(-1,0)..(1.3,-0.9){E}..(2.4,0)..(0,3.2)..(-1.6,1)..cycle;
fill(c,lightblue+opacity(0.3));

draw(Label("$C$",Relative(0.4)),c,blue,ArcArrow(Relative(0.4)));

pair[] z={(0,0),(1.4,-0.2),(2,1),(1,2.5),(-0.7,1.6)};
int n=z.length;

for(int k=1; k<n; ++k){
	unfill(shift(z[k-1])*scale(r)*unitcircle);
	dot("$z_" + (string) k + "$",z[k-1],2*dir(315));
	draw(Label("$C_" + (string) k + "$",Relative(0.4)),shift(z[k-1])*scale(r)*unitcircle,ArcArrow(Relative(0.4)));
	}

unfill(shift(z[n-1])*scale(r)*unitcircle);
	dot("$z_n$",z[n-1],2*dir(315));
	draw(Label("$C_n$",Relative(0.4)),shift(z[n-1])*scale(r)*unitcircle,ArcArrow(Relative(0.4)));

	label(rotate(degrees(z[n-2]-z[n-1]),(0,0))*"$\cdots$",(z[n-2]+z[n-1])/2);