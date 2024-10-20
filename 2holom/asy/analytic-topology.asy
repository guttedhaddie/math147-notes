settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(170);

pair p=(0,0);
pair q=(4,1);

path z=p{dir(80)}..(2,2.5){dir(-10)}..q;

path K=(-1,0)..(2,3)..(5,1)..(4,0)..(2,2)..(0,-1)..cycle;

fill(K,blue+opacity(0.2));

//draw(z,red);

void boxpath(real t, real r){
	fill(shift(point(z,t)-(r/sqrt(2))*dir(45))*box((0,0),(r,r)),green+opacity(0.2));
}

for(int i=0; i<=15; ++i){
	//dot(point(z,i/8));
	//boxpath(i/8,0.6);
	//draw(point(z,i/8)--(point(z,(i+1)/8).x,point(z,(i+0)/8).y)--point(z,(i+1)/8),purple+linewidth(1));
	draw(point(z,i/8)--(point(z,(i+1)/8).x,point(z,(i+0)/8).y),red+linewidth(1));
	draw((point(z,(i+1)/8).x,point(z,(i+0)/8).y)--point(z,(i+1)/8),heavygreen+linewidth(1));
}

label("$D$",(-0.3,1),blue);
dot("$p$",p,SW);
dot("$q$",q,SE);