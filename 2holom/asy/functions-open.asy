settings.prc=false;
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


size(0,90);

void epball(pair w,real ep){
	filldraw(shift(w)*scale(ep)*unitcircle,green+opacity(0.5),dashed);
	dot("$z_0$",w,SW);
	draw("$\delta$",w--w+ep*dir(25),dashed);
}

//xaxis("$\mathbb{R}$",red);
//yaxis("$i\mathbb{R}$",red);

epball((3,2),1);

path D=(3,0)..(4,3)..(0,2)..(-1,1)..(1,-1)..cycle;

filldraw(D,blue+opacity(0.3),dashed);

label("$D$",(1,1),blue);