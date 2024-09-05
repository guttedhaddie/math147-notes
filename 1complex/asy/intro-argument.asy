settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(240);

real d=0.02;

fill(box((0,0),(1,1)),orange+white+opacity(0.5));
fill(box((0,0),(-1,1)),yellow+white+opacity(0.5));
fill(box((0,0),(-1,-1)),green+white+opacity(0.5));
fill(box((0,0),(1,-1)),blue+white+opacity(0.5));
draw(d*dir(0)--dir(0),orange+blue+linewidth(2));
draw(d*dir(90)--dir(90),orange+yellow+linewidth(2));
draw(d*dir(180)--dir(180),green+yellow+linewidth(2));
draw(d*dir(-90)--dir(-90),green+blue+linewidth(2));

dotfactor=10;
dot((0,0),red);

label("Q1: $\tan^{-1}\frac yx$",sqrt(1/2)*dir(45));
label("Q2: $\tan^{-1}\frac yx+\pi$",sqrt(1/2)*dir(135));
label("Q3: $\tan^{-1}\frac yx-\pi$",sqrt(1/2)*dir(-135));
label("Q4: $\tan^{-1}\frac yx$",sqrt(1/2)*dir(-45));
label("$0$",1.2dir(0),orange+blue);
label("$\frac\pi 2$",1.2dir(90),orange+yellow);
label("$\pi$",1.2dir(180),green+yellow);
label("$-\frac\pi 2$",1.2dir(270),green+blue);

xaxis(-1.1,1.1,red);
yaxis(-1.1,1.1,red);