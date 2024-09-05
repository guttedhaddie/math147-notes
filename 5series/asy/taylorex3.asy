settings.prc=false;
settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
\usepackage{textcomp}
");
import graph;


size(120);

pair w=2*expi(-pi/8);


xaxis(-2.1,2.1,red,RightTicks(new real[]{-2,-1,1,2}));
yaxis(-2.1,2.1,red);
ytick(Label("$2i$",align=W),2,W,red);
ytick(Label("$i$",align=W),1,W,red);
ytick(Label("$-2i$",align=W),-2,W,red);
ytick(Label("$-i$",align=W),-1,W,red);
filldraw(scale(2)*unitcircle,lightblue+opacity(0.3),lightblue+dashed);

//draw("$w$",(0,1)--(0,1)+dir(50),dashed+blue);

//label("$2e^{-\frac{i\pi}8}$",w,SE,blue);

path c=shift(w)*scale(0.06)*unitcircle;
unfill(c);
draw(c,heavygreen);
path c=shift(I*w)*scale(0.06)*unitcircle;
unfill(c);
draw(c,heavygreen);
path c=shift(-w)*scale(0.06)*unitcircle;
unfill(c);
draw(c,heavygreen);
path c=shift(-I*w)*scale(0.06)*unitcircle;
unfill(c);
draw(c,heavygreen);

draw("$C$",(0,0)--(1,1),blue,Arrow(Relative(0.65)));