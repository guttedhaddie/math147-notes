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


size(0,140);

pair z=(3.5,1);
pair w=(2,6);

draw((0,0)--z,dashed);
draw(w--z+w,dashed);
draw((0,0)--w,dashed);
draw(z--w+z,dashed);
draw((0,0)--w+z,dashed);

dot("$z$",z,SE);
dot("$w$",w,NW);
dot("$z+w$",z+w,N);

axes();

xtick(Label("$x$",align=S),z.x,S,red);
ytick(Label("$i\textcolor{blue}{y}$",align=W),z.y,W);
xtick(Label("$u$",align=S),w.x,S,deepgreen);
ytick(Label("$i\textcolor{purple}{v}$",align=W),w.y,W);

