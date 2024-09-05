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


size(0,165);

path b=box((-1,-1),(1,1));

real f(real x){return 1/x;}
path h=graph(f,0.1,10,operator..);

for(int n=1; n<=5; ++n){
	draw(rotate(45,(0,0))*scale(n/6)*h,n/5*blue+(6-n)/5*heavygreen);
	draw(rotate(45,(0,0))*rotate(180,(0,0))*scale(n/6)*h,n/5*blue+(6-n)/5*heavygreen);
	draw(rotate(45,(0,0))*rotate(-90,(0,0))*scale(n/6)*h,n/5*orange+(6-n)/5*purple);
	draw(rotate(45,(0,0))*rotate(90,(0,0))*scale(n/6)*h,n/5*orange+(6-n)/5*purple);
	}
	
	clip(b);

xaxis("$x$",red);
yaxis("$y$",-1,1,red);

label("Level curves of $u=x^2-y^2$",(0,-1.2));