settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(145);

real a=0.4;
real del=0.5;
real m=-2;
real M=1.42;

pair F(real x){return (x,-a*x^2);}
path K=graph(F,m,M);

pair FU(real x){return F(x)+del*unit((2a*x,1));}
pair FD(real x){return F(x)-del*unit((2a*x,1));}
path T=graph(FU,m,M)..arc(F(M),FU(M),FD(M),CW)..graph(FD,M,m)..arc(F(m),FD(m),FU(m),CW)..cycle;

path D=F(m)-(0.7,0)..F(m)-(0,0.7)..F((m+M)/2)-(0,0.7)..F(M)+(0.2,-1)..F((m+M)/2)+(0,1)..cycle;
fill(D,blue+opacity(0.2));

fill(T,heavygreen+opacity(0.5));
draw(K,red+linewidth(1));

int l=length(K);
int N=12;
for(int i=0; i<=N; ++i){
	draw(point(K,i*l/N)--(point(K,(i+1)*l/N).x,point(K,(i+0)*l/N).y)--point(K,(i+1)*l/N),purple+linewidth(1));
}

pair p=F(m);
pair q=F(M);

label("$D$",F(m)+(-0.2,1),blue);
dot("$z(0)$",p,dir(250));
dot("$z(1)$",q,dir(300));

draw("$\delta$",F(m)--FU(m),dashed);