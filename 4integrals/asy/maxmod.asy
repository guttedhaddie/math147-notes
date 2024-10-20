settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(180);

pair c(real t){return yscale(0.5)*(dir(300t+100)*(1+sqrt(t)));}

path p=graph(c,0,1,operator..);
real ep=0.4;

pair P[]={c(0),intersectionpoints(shift(c(0))*scale(ep)*unitcircle,p)[0]};


void baa(int k){pair PP[]=intersectionpoints(shift(P[k-1])*scale(ep)*unitcircle,p);
	if(length(PP[0]-P[k-2])<0.1){P.push(PP[1]);}
	else{P.push(PP[0]);}
	dot(P[k]);
	draw(shift(P[k])*scale(ep)*unitcircle);
}
	

path d=c(0)+0.5..(0,1)..(-2,0)..(0,-1.3)..(2.5,0)..(1,1)..(0.9,0.3)..(1,0)..c(0.57)+(0,0.45){W}..(-0.6,0)..(0,0)..cycle;

fill(d,lightblue+opacity(0.5));
filldraw(shift(c(0))*scale(ep)*unitcircle,orange+opacity(0.5),orange);
//draw(shift(c(0))*scale(0.8ep)*unitcircle,brown,Arrow(Relative(0.1)));

draw(shift((0,1.2))*Label("$C$",Relative(0.522)),p,heavygreen+linewidth(1),Arrow(Relative(0.48),size=8));


dot(P[1]);
draw(shift(P[1])*scale(ep)*unitcircle);

int N=17;

for(int n=2; n<N; ++n){
	baa(n);
	}

label("$\overline{B_0}$",c(0)+1.7ep*dir(45),orange);
//label("$C_{r}$",c(0)+1.65ep*dir(0),brown);
label("$D$",c(1)+1.1ep*dir(180),blue);

dot("$z_0$",P[0],SE);
dot("$z_1$",P[1],dir(140));
dot("$z_2$",P[2],dir(160));
dot("$z_3$",P[3],dir(200));
dot("$z_n$",P[N-1],dir(285));
dot("$w$",c(1),NE);