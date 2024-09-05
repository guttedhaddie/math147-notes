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


size(180);


axes(red);

real th=120;
real r=2;
real n=5;

pair z=r**(1/n)*dir(th/n);


dot("$z$",r*dir(th));


draw("$r$",(0,0)--r*dir(th),dashed+blue);
draw("$\frac{2\pi}3$",arc((0,0),0.1*dir(0),0.1*dir(th)),blue);

draw("$\frac{2\pi}{15}$",arc((0,0),0.7*dir(0),0.7*dir(th/n)),heavygreen);
draw("$\frac{2\pi}5$",arc((0,0),0.2*dir(2*360/n+th/n),0.2*dir(3*360/n+th/n)),heavygreen);
draw("$\sqrt[5]{2}$",r**(1/n)*dir(th/n)--(0,0),dashed+heavygreen);
draw(r**(1/n)*dir(360/n+th/n)--(0,0),dashed+heavygreen);
draw(r**(1/n)*dir(2*360/n+th/n)--(0,0),dashed+heavygreen);
draw(r**(1/n)*dir(3*360/n+th/n)--(0,0),dashed+heavygreen);
draw(r**(1/n)*dir(4*360/n+th/n)--(0,0),dashed+heavygreen);

dot("$c_0$",z);
dot("$c_1$",rotate(360/n,(0,0))*z,N);
dot("$c_2$",rotate(2*360/n,(0,0))*z,NE);
dot("$c_3$",rotate(3*360/n,(0,0))*z,SW);
dot("$c_4$",rotate(4*360/n,(0,0))*z);
