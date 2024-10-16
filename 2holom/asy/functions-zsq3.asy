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

pair f(pair z){return z^2;}

pair[] A={1.5*dir(10)};
A.push(1.4*dir(40));
A.push(1.8*dir(70));
A.push(1.65*dir(100));
A.push(1.5*dir(130));
A.push(1.5*dir(160));
A.push(1.7*dir(190));
A.push(1.7*dir(220));
A.push(1.5*dir(250));
A.push(1.4*dir(280));
A.push(1.8*dir(310));
A.push(1.7*dir(340));

guide g;
for(int i=0; i<12; ++i)
	g=g..A[i];
path p=g..cycle;


guide h;
for(int i=0; i<12; ++i)
	h=h..f(A[i]);
path q=h..cycle;

draw(p,green,Arrow(Relative(0.15)));
draw(q,blue,Arrow(Relative(0.1)));

for(int i=0; i<12; ++i){
	dot(Label("\tiny $"+string(i)+"$",align=-unit(A[i])),A[i],i/12*red+(12-i)/12*yellow);
	dot(Label("\tiny $"+string(i)+"$",align=unit(f(A[i]))),f(A[i]),i/12*red+(12-i)/12*yellow);
	}
	

xaxis("$\mathbb{R}$",red);
yaxis("$i\mathbb{R}$",red);