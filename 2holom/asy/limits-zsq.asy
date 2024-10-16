settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}

\def\vv{\mathbf v}
\def\vw{\mathbf w}
\def\twovec#1#2{\begin{pmatrix}#1\\#2\end{pmatrix}}
");
import graph;


size(340);

pair P=0.5*dir(135);
real r=1;
real R=2.5;

pair f(pair z){return z^2;}
pair p(real t){return P+r*dir(t);}
pair pp(real t){return f(p(t));}

picture pic;
picture ppic;

fill(pic,shift(f(P))*scale(R)*unitcircle,lightblue+opacity(0.5));
filldraw(pic,graph(pp,0,360,operator..)..cycle,lightgreen+opacity(0.5),dotted);
dot(pic,"$w_0$",f(P),SW);
draw(pic,"$\epsilon$",f(P)--f(P)+R*dir(30),dashed);
xaxis(pic,"$u$",-2.7,2.8,red);
yaxis(pic,"$iv$",-2.8,2.6,red);

filldraw(ppic,shift(P)*scale(r)*unitcircle,lightgreen+opacity(0.5),dotted);
dot(ppic,"$z_0$",P,SW);
draw(ppic,"$\delta$",P--P+r*dir(120),dashed);

xaxis(ppic,"$x$",-1.6,1,red);
yaxis(ppic,"$iy$",-2.8,2.6,red);
	
add(ppic);
add(shift((6,0))*pic);

draw("$f$",(1,0.5){E}..(3.2,0.3),N,Arrow);