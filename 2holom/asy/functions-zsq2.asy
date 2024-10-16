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


size(0,165);

real th=40;
real phi=120;

real r=1.8;

path p=(0,0)--arc((0,0),r,th,phi)--cycle;
path q=(0,0)--arc((0,0),r^2,2*th,2*phi)--cycle;

filldraw(p,green+opacity(0.4),dashed);
filldraw(q,blue+opacity(0.3),dashed);

draw("$\theta$",arc((0,0),0.35,0,th),deepgreen,ArcArrow);
draw("$\phi$",arc((0,0),1.05,0,phi),deepgreen,ArcArrow);
draw("$2\theta$",arc((0,0),2.4,0,2th),blue,ArcArrow);
draw("$2\phi$",arc((0,0),2.05,0,2phi),blue,ArcArrow);

xaxis("$\mathbb{R}$",red);
yaxis("$i\mathbb{R}$",-0.9r^2,1.2r^2,red);